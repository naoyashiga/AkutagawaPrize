//
//  Book.swift
//  AkutagawaPrize
//
//  Created by naoyashiga on 2015/10/18.
//  Copyright © 2015年 naoyashiga. All rights reserved.
//

import UIKit

class Book {
    var title: String
    var imageView: UIImageView?
    var author: String
    
    init(title: String, imageView: UIImageView?, author: String) {
        self.title = title
        self.imageView = imageView
        self.author = author
    }
}