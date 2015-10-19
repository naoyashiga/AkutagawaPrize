//
//  Shelf.swift
//  AkutagawaPrize
//
//  Created by naoyashiga on 2015/10/19.
//  Copyright © 2015年 naoyashiga. All rights reserved.
//

import UIKit
import SwiftyJSON

class Shelf {
    var books = [Book]()
    private var bookJSON: JSON = ""
    
    init() {
        
    }
    
    func add(book: Book) {
        books.append(book)
    }
    
    func setBookJSON() {
        if let path = NSBundle.mainBundle().pathForResource("books", ofType: "json") {
            if let data = NSData(contentsOfFile: path) {
                bookJSON = JSON(data: data, options: NSJSONReadingOptions.AllowFragments, error: nil)
            }
        }
    }
    
    func getDataFromJSON() {
        
        if let items = bookJSON["items"].array {
            for item in items {
                let number = item["number"].intValue
                let year = item["year"].intValue
                let title = item["title"].stringValue
                let imageURL = item["imageURL"].URL
                let linkURL = item["imageURL"].URL
                let author = item["author"].stringValue
                
                let book = Book(
                    number: number,
                    year: year,
                    title: title,
                    imageURL: imageURL,
                    linkURL: linkURL,
                    author: author
                )
                
                add(book)
            }
        }
        
    }
}
