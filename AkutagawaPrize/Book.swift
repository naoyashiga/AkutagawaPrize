//
//  Book.swift
//  AkutagawaPrize
//
//  Created by naoyashiga on 2015/10/18.
//  Copyright © 2015年 naoyashiga. All rights reserved.
//

import UIKit

class Book {
    var number: Int
    var year: Int
    var title: String
    var imageURL: NSURL?
    var linkURL: NSURL?
    var author: String
    
    init(number: Int, year: Int, title: String, imageURL: NSURL?, linkURL: NSURL?, author: String) {
        self.number = number
        self.year = year
        self.title = title
        self.imageURL = imageURL
        self.linkURL = linkURL
        self.author = author
    }
}