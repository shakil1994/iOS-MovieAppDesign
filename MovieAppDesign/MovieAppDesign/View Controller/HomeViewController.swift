//
//  HomeViewController.swift
//  MovieAppDesign
//
//  Created by DhakaLive on 3/8/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let images: [UIImage] = [
    UIImage(named: "hall1")!,
    UIImage(named: "hall2")!,
    UIImage(named: "hall3")!,
    UIImage(named: "hall4")!,
    UIImage(named: "hall5")!,
    UIImage(named: "hall6")!
    ]
    
    let names = ["Star Cineplax", "Bolaka", "Jumona", "Razmoni", "ABC", "XYZ"]

    @IBOutlet weak var hallTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hallTableView.delegate = self
        hallTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! HallTableViewCell
                
            cell.layer.cornerRadius = cell.frame.height / 20
                        
            cell.hallImageView.image = images[indexPath.item]
            cell.hallImageView.contentMode = .scaleAspectFill
            cell.nameLabel.text = names[indexPath.item]
        cell.hallBackgroundCell.layer.cornerRadius = cell.hallBackgroundCell.frame.height / 20
        cell.hallImageView.layer.cornerRadius = cell.hallImageView.frame.height / 20
                        
            return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

}
