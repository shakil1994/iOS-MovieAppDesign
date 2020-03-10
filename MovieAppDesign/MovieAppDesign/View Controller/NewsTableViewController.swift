//
//  NewsTableViewController.swift
//  MovieAppDesign
//
//  Created by DhakaLive on 10/3/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class NewsTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var newsTableView: UITableView!
    
    let newsImages: [UIImage] = [
        UIImage(named: "hall1")!,
        UIImage(named: "hall2")!,
        UIImage(named: "hall3")!,
        UIImage(named: "hall4")!,
        UIImage(named: "hall5")!,
        UIImage(named: "hall6")!
    ]
    
    let newsHeadLine = ["Boshondhura Shopping Complex", "New Market", "Jamuna Feature Park", "Kakrail", "Tikatoli", "Mirpur 1"]
    
    let newsDetails = ["0191410101001914101010 01914101010 01914101010 0191410101001914101010 01914101010 01914101010 01914101010", "01414101011", "01314101012", "01714101013", "01814101014", "01614101015"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        newsTableView.delegate = self
        newsTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsImages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let newsCell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as! NewsTableViewCell
                        
        newsCell.newsImageView.image = newsImages[indexPath.item]
        newsCell.newsHeadLineLabel.text = newsHeadLine[indexPath.item]
        newsCell.newsDetailsLabel.text = newsDetails[indexPath.item]
        newsCell.buttonReadmore.layer.borderWidth = 1
        newsCell.buttonReadmore.layer.cornerRadius = 10
        newsCell.buttonReadmore.layer.borderColor = #colorLiteral(red: 1, green: 0.1654536059, blue: 0.1912861815, alpha: 1)
        
        newsCell.newsBackground.layer.cornerRadius = newsCell.newsBackground.frame.height / 20
        newsCell.newsImageView.layer.cornerRadius = newsCell.newsImageView.frame.height / 20
        
        //Button clicked
        newsCell.buttonReadmore.tag = indexPath.row
        newsCell.buttonReadmore.addTarget(self, action: #selector(NewsTableViewController.newsDetailsVC(_:)), for: .touchUpInside)
        
        return newsCell
    }
    
    @objc func newsDetailsVC(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "News", bundle: Bundle.main)
        if let newsVC = storyBoard.instantiateViewController(identifier: "NewsVC") as? NewsDetailsViewController {
           self.navigationController?.pushViewController(newsVC, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }

}
