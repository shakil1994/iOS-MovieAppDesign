//
//  NewsDetailsViewController.swift
//  MovieAppDesign
//
//  Created by DhakaLive on 10/3/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class NewsDetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func goBack(_ sender: UIStoryboardSegue) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
