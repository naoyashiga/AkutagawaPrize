//
//  BaseCollectionViewController.swift
//  AkutagawaPrize
//
//  Created by naoyashiga on 2015/08/31.
//  Copyright (c) 2015年 naoyashiga. All rights reserved.
//

import UIKit

struct cellSize {
    static var width:CGFloat = 0.0
    static var height:CGFloat = 0.0
}

struct cellMargin {
    static let vertical:CGFloat = 0.0
    static let horizontal:CGFloat = 0.0
}

class BaseCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setCollectionView() {
        let edgeInsetBottom:CGFloat = 0
        let edgeInsetTop:CGFloat = 0
        
        cellSize.width = view.bounds.width
        cellSize.height = view.bounds.height
        
        if let collectionView = collectionView {
            collectionView.contentInset = UIEdgeInsetsMake(edgeInsetTop, 0, edgeInsetBottom, 0)
            collectionView.backgroundColor = UIColor.viewBackgroundColor()
        }
    }
    
    // MARK: UICollectionViewDelegateFlowLayout
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: cellSize.width, height: cellSize.height)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return cellMargin.vertical
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
