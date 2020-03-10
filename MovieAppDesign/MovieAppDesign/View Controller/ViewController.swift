//
//  ViewController.swift
//  MovieAppDesign
//
//  Created by DhakaLive on 3/1/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnGetStarted: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let buttonRedius = self.btnGetStarted.bounds.width / 50
        self.btnGetStarted.layer.cornerRadius = buttonRedius
        
    }


}

