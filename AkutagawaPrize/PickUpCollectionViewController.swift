//
//  PickUpCollectionViewController.swift
//  AkutagawaPrize
//
//  Created by naoyashiga on 2015/08/31.
//  Copyright (c) 2015年 naoyashiga. All rights reserved.
//

import UIKit

struct pickupReuseId {
    static let cell = "PickUpCollectionViewCell"
}

class PickUpCollectionViewController: BaseCollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let collectionView = collectionView {
            collectionView.applyCellNib(cellNibName: pickupReuseId.cell)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(pickupReuseId.cell, forIndexPath: indexPath) as! PickUpCollectionViewCell
    
        return cell
    }

    // MARK: UICollectionViewDelegate
}
