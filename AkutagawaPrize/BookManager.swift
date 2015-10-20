//
//  BookManager.swift
//  AkutagawaPrize
//
//  Created by naoyashiga on 2015/10/19.
//  Copyright © 2015年 naoyashiga. All rights reserved.
//

import UIKit
import SwiftyJSON

class BookManager {
    var books = [Book]()
    private var bookJSON: JSON = ""
    
    init() {
        setBookJSON { () -> Void in
            self.getDataFromJSON()
        }
    }
    
    func add(book: Book) {
        
        print(book.title)
        books.append(book)
    }
    
    func setBookJSON(completion: (() -> Void)) {
        if let path = NSBundle.mainBundle().pathForResource("books", ofType: "json") {
            if let data = NSData(contentsOfFile: path) {
                bookJSON = JSON(data: data, options: NSJSONReadingOptions.AllowFragments, error: nil)
                
                print("bookJSON")
                completion()
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
