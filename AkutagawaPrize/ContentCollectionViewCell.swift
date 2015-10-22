//
//  ContentCollectionViewCell.swift
//  AkutagawaPrize
//
//  Created by naoyashiga on 2015/10/16.
//  Copyright © 2015年 naoyashiga. All rights reserved.
//

import UIKit

class ContentCollectionViewCell: UICollectionViewCell {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var yearLabel: UILabel!
    @IBOutlet var numberLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
