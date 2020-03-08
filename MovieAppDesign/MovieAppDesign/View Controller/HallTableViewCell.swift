//
//  HallTableViewCell.swift
//  MovieAppDesign
//
//  Created by DhakaLive on 3/8/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class HallTableViewCell: UITableViewCell {
    
    @IBOutlet weak var hallBackgroundCell: UIView!
    @IBOutlet weak var hallImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
