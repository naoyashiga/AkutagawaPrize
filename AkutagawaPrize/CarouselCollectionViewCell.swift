//
//  CarouselCollectionViewCell.swift
//  AkutagawaPrize
//
//  Created by naoyashiga on 2015/10/15.
//  Copyright © 2015年 naoyashiga. All rights reserved.
//

import UIKit
import WebImage

protocol BrowserOpenerDelegate {
    func openBrowser(url: NSURL)
}

struct ContentCollectionReuseId {
    static let cell = "ContentCollectionViewCell"
}

@available(iOS 9.0, *)
class CarouselCollectionViewCell: BaseCarouselCollectionViewCell, UICollectionViewDataSource {
    
    @IBOutlet var collectionView: UICollectionView!
    
    var books = [Book]()
    
    var browserOpenerDelegate: BrowserOpenerDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.applyCellNib(cellNibName: ContentCollectionReuseId.cell)
        
        baseCollectionView = collectionView
        
        setCollectionView()
        
    }
    
    func setCollectionView() {
        carouselCellSize.width = collectionView.bounds.width
        carouselCellSize.height = collectionView.bounds.height
        
        collectionView.backgroundColor = UIColor.viewBackgroundColor()
    }
    
    // MARK: UICollectionViewDataSource
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return BookManager.sharedInstance.books.count
        return books.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(ContentCollectionReuseId.cell, forIndexPath: indexPath) as! ContentCollectionViewCell
        
        let book = books[indexPath.row]
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.hexStr("#aaaaaa", alpha: 1.0)
        } else {
            cell.backgroundColor = UIColor.grayColor()
        }
        
        cell.titleLabel.text = book.title
        
        cell.imageView.sd_setImageWithURL(
            book.imageURL,
            completed: { image, error, type, URL in
        })
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let book = books[indexPath.row]
        
        guard let linkURL = book.linkURL else {
            return
        }
        
        browserOpenerDelegate?.openBrowser(linkURL)
    }
}
