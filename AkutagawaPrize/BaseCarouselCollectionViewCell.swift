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
    static let horizontal:CGFloat = 30.0
}

class BaseCarouselCollectionViewCell: UICollectionViewCell, UICollectionViewDelegateFlowLayout {
    var baseCollectionView: UICollectionView?
    
    // MARK: UICollectionViewDelegateFlowLayout
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        if let baseCollectionView = baseCollectionView {
            return CGSize(width: baseCollectionView.bounds.width * 0.75, height: baseCollectionView.bounds.height)
            
        } else {
            return CGSize(width: carouselCellSize.width, height: carouselCellSize.height)
        }
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return carouselCellMargin.horizontal
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: carouselCellMargin.horizontal / 2, bottom: 0, right: carouselCellMargin.horizontal / 2)
    }
    
}