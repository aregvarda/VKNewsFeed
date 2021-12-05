//
//  NewsfeedCell.swift
//  VKNewsFeed
//
//  Created by Геворг on 05.12.2021.
//

import Foundation
import UIKit

class NewsfeedCell: UITableViewCell {
    
    static let reuseId = "NewsfeedCell"
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    @IBOutlet weak var sharesLabel: UILabel!
    @IBOutlet weak var viewsLabel: UILabel!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}
