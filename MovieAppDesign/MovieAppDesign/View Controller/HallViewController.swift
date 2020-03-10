//
//  HomeViewController.swift
//  MovieAppDesign
//
//  Created by DhakaLive on 3/8/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class HallViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let hallImages: [UIImage] = [
        UIImage(named: "hall1")!,
        UIImage(named: "hall2")!,
        UIImage(named: "hall3")!,
        UIImage(named: "hall4")!,
        UIImage(named: "hall5")!,
        UIImage(named: "hall6")!
    ]
    
    let hallAddresses = ["Boshondhura Shopping Complex", "New Market", "Jamuna Feature Park", "Kakrail", "Tikatoli", "Mirpur 1"]
    
    let hallPhones = ["01914101010", "01414101011", "01314101012", "01714101013", "01814101014", "01614101015"]
    
    let hallEmails = ["cineplax@info.com", "bolaka@info.com", "jamuna@info.com", "razmoni@info.com", "tikatoli@info.com", "sonycimenahall@info.com"]
    
    
    let hallNames = ["Star Cineplax", "Bolaka", "Jamuna", "Razmoni", "Tikatoli", "Sony Cinema Hall"]

    @IBOutlet weak var hallTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hallTableView.delegate = self
        hallTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hallNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! HallTableViewCell
                
        //cell.layer.cornerRadius = cell.frame.height / 20
                        
        cell.hallImageView.image = hallImages[indexPath.item]
        cell.hallImageView.contentMode = .scaleAspectFill
        cell.nameLabel.text = hallNames[indexPath.item]
        cell.addressLabel.text = hallAddresses[indexPath.item]
        cell.mobileLabel.text = hallPhones[indexPath.item]
        cell.emailLabel.text = hallEmails[indexPath.item]
        
        cell.hallBackgroundCell.layer.cornerRadius = cell.hallBackgroundCell.frame.height / 20
        cell.hallImageView.layer.cornerRadius = cell.hallImageView.frame.height / 20
        
                        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

}
