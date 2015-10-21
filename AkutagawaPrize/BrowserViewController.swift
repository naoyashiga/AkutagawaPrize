//
//  BrowserViewController.swift
//  AkutagawaPrize
//
//  Created by naoyashiga on 2015/10/21.
//  Copyright © 2015年 naoyashiga. All rights reserved.
//

import UIKit
import SafariServices

@available(iOS 9.0, *)
class BrowserViewController: SFSafariViewController, SFSafariViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func safariViewController(controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool) {
        
    }
    
    func safariViewControllerDidFinish(controller: SFSafariViewController) {
    }
}
