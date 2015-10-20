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
    static let sharedInstance = BookManager()
    var books = [Book]()
    
    private var bookJSON: JSON = ""
    
    init() {
        setBookJSON { () -> Void in
            self.getDataFromJSON()
        }
    }
    
    private func add(book: Book) {
        
        print(book.title)
        books.append(book)
    }
    
    private func setBookJSON(completion: (() -> Void)) {
        if let path = NSBundle.mainBundle().pathForResource("books", ofType: "json") {
            if let data = NSData(contentsOfFile: path) {
                bookJSON = JSON(data: data, options: NSJSONReadingOptions.AllowFragments, error: nil)
                
                print("bookJSON")
                completion()
            }
        }
    }
    
    private func getDataFromJSON() {
        
        if let items = bookJSON["items"].array {
            for item in items {
                let id = item["id"].stringValue
                let number = item["number"].intValue
                let year = item["year"].intValue
                let title = item["title"].stringValue
                let imageURL = item["imageURL"].URL
                let linkURL = NSURL(string: "http://www.amazon.co.jp/gp/product/\(id)/ref=as_li_ss_tl?ie=UTF8&camp=247&creative=7399&creativeASIN=\(id)&linkCode=as2&tag=naoyashiga-22")
                let author = item["author"].stringValue
                
                let book = Book(
                    id: id,
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
