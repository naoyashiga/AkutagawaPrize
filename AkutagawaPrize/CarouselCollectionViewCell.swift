//
//  CarouselCollectionViewCell.swift
//  AkutagawaPrize
//
//  Created by naoyashiga on 2015/10/15.
//  Copyright © 2015年 naoyashiga. All rights reserved.
//

import UIKit
import WebImage

struct ContentCollectionReuseId {
    static let cell = "ContentCollectionViewCell"
}

class CarouselCollectionViewCell: BaseCarouselCollectionViewCell, UICollectionViewDataSource {
    
    @IBOutlet var collectionView: UICollectionView!

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
        return 5
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(ContentCollectionReuseId.cell, forIndexPath: indexPath) as! ContentCollectionViewCell
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.hexStr("#aaaaaa", alpha: 1.0)
        } else {
            cell.backgroundColor = UIColor.grayColor()
        }
        
        cell.imageView.sd_setImageWithURL(
            NSURL(string: "http://ecx.images-amazon.com/images/I/41IUgeZHdNL._SL250_.jpg"),
            completed: { image, error, type, URL in
                
        })
        
        
        return cell
    }
}
