//
//  NewsTableViewCell.swift
//  MovieAppDesign
//
//  Created by DhakaLive on 10/3/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var newsBackground: UIView!
    
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var newsHeadLineLabel: UILabel!
    @IBOutlet weak var newsDetailsLabel: UILabel!
    @IBOutlet weak var buttonReadmore: ButtonWithImage!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
