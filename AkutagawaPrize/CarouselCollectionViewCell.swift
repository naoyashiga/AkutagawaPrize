//
//  CarouselCollectionViewCell.swift
//  AkutagawaPrize
//
//  Created by naoyashiga on 2015/10/15.
//  Copyright © 2015年 naoyashiga. All rights reserved.
//

import UIKit

struct ContentCollectionReuseId {
    static let cell = "ContentCollectionViewCell"
}

class CarouselCollectionViewCell: BaseCarouselCollectionViewCell, UICollectionViewDataSource {
    
    @IBOutlet var collectionView: UICollectionView!

    override func awakeFromNib() {
        super.awakeFromNib()
        setCollectionView()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.applyCellNib(cellNibName: ContentCollectionReuseId.cell)
    }
    
    func setCollectionView() {
        let edgeInsetBottom:CGFloat = 0
        let edgeInsetTop:CGFloat = 0
        
        carouselCellSize.width = collectionView.bounds.width
        carouselCellSize.height = collectionView.bounds.height
        
        collectionView.contentInset = UIEdgeInsetsMake(edgeInsetTop, 0, edgeInsetBottom, 0)
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
        
        return cell
    }
}
