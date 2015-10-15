//
//  ContainerViewController.swift
//  AkutagawaPrize
//
//  Created by naoyashiga on 2015/08/31.
//  Copyright (c) 2015年 naoyashiga. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    var controllerArray : [BaseCollectionViewController] = []
    
    private struct NibNameSet {
        static let pickupVC = "PickUpCollectionViewController"
        static let favVC = "FavoriteCollectionViewController"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pickupVC = PickUpCollectionViewController(nibName: NibNameSet.pickupVC, bundle: nil)
        let favVC = FavoriteCollectionViewController(nibName: NibNameSet.favVC, bundle: nil)
        
        pickupVC.title = "pickup"
        favVC.title = "fav"
        
        controllerArray.append(pickupVC)
        controllerArray.append(favVC)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

}
