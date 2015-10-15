//
//  ContainerViewController.swift
//  AkutagawaPrize
//
//  Created by naoyashiga on 2015/08/31.
//  Copyright (c) 2015年 naoyashiga. All rights reserved.
//

import UIKit

struct ContainerCollectionReuseId {
    static let cell = "CarouselCollectionViewCell"
}

class ContainerViewController: BaseCollectionViewController {
    
    private var cellWidth:CGFloat = 0.0
    private var cellHeight:CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cellWidth = view.bounds.width
        cellHeight = view.bounds.height
        
        collectionView?.applyCellNib(cellNibName: ContainerCollectionReuseId.cell)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(ContainerCollectionReuseId.cell, forIndexPath: indexPath) as! CarouselCollectionViewCell
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.blackColor()
        } else {
            cell.backgroundColor = UIColor.grayColor()
        }
        
        
        return cell
    }
}
