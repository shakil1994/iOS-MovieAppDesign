//
//  RynningMovieViewController.swift
//  MovieAppDesign
//
//  Created by DhakaLive on 10/3/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class RunningMovieViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var runningMovieCollection: UICollectionView!
    
    let runningMovieImages: [UIImage] = [
        UIImage(named: "avatar")!,
        UIImage(named: "avengers")!,
        UIImage(named: "bladerunner")!,
        UIImage(named: "dunkirk")!,
        UIImage(named: "hobbit")!,
        UIImage(named: "inception")!,
        UIImage(named: "jokerheader")!,
        UIImage(named: "thor")!,
        UIImage(named: "venom")!,
        UIImage(named: "warcraft")!
    ]
    
    let runningMovieName = ["Avatar", "Avengers", "Blade Runner", "Dunkirk", "Hobbit", "Inception", "Joker Header", "Thor", "Venom", "Warcraft"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        runningMovieCollection.delegate = self
        runningMovieCollection.dataSource = self
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
            var width = UIScreen.main.bounds.width
            layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 0, right: 5)
        width = width - 10
        layout.itemSize = CGSize(width: width / 2, height: width)
        
            layout.minimumInteritemSpacing = 0
            layout.minimumLineSpacing = 0
            runningMovieCollection!.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return runningMovieName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RunningCell", for: indexPath) as! RunningMovieCollectionViewCell
        
        cell.runningMovieImageView.image = runningMovieImages[indexPath.item]
        cell.runningMovieNameLabel.text = runningMovieName[indexPath.item]
        cell.runningMovieImageView.contentMode = .scaleToFill
        cell.btnMovieBuyTicket.isEnabled = true
        cell.btnMovieBuyTicket.layer.cornerRadius = 10
        

        //cell.layer.cornerRadius = 10
        
        //Button clicked
        cell.btnMovieBuyTicket.tag = indexPath.row
        cell.btnMovieBuyTicket.addTarget(self, action: #selector(RunningMovieViewController.buyMovieTicket(_:)), for: .touchUpInside)
        
        cell.runningMovieImageView.layer.cornerRadius = 10
        
        return cell
    }
    
    @objc func buyMovieTicket(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "News", bundle: Bundle.main)
        if let newsVC = storyBoard.instantiateViewController(identifier: "NewsVC") as? NewsDetailsViewController {
           self.navigationController?.pushViewController(newsVC, animated: true)
        }
    }

}
