//
//  BaseCarouselCollectionViewCell.swift
//  AkutagawaPrize
//
//  Created by naoyashiga on 2015/10/16.
//  Copyright © 2015年 naoyashiga. All rights reserved.
//

import UIKit

struct carouselCellSize {
    static var width:CGFloat = 0.0
    static var height:CGFloat = 0.0
}

struct carouselCellMargin {
    static let vertical:CGFloat = 0.0
    static let horizontal:CGFloat = 0.0
}

class BaseCarouselCollectionViewCell: UICollectionViewCell, UICollectionViewDelegateFlowLayout {
    
    // MARK: UICollectionViewDelegateFlowLayout
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: carouselCellSize.width, height: carouselCellSize.height)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return carouselCellMargin.vertical
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
}