//
//  ButtonWithImage.swift
//  MovieAppDesign
//
//  Created by DhakaLive on 10/3/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class ButtonWithImage: UIButton {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if imageView != nil {
            imageEdgeInsets = UIEdgeInsets(top: 5, left: (bounds.width - 30), bottom: 5, right: 5)
            titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 50)
            
            //(imageView?.frame.width)!)
        }
    }
}
