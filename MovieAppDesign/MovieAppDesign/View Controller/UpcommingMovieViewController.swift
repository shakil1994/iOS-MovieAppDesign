//
//  UpcommingMovieViewController.swift
//  MovieAppDesign
//
//  Created by DhakaLive on 10/3/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class UpcommingMovieViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    @IBOutlet weak var upcommingMovieCollectionView: UICollectionView!
    
    let upcommingMovieImages: [UIImage] = [
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
    
    let upcommingMovieName = ["Avatar", "Avengers", "Blade Runner", "Dunkirk", "Hobbit", "Inception", "Joker Header", "Thor", "Venom", "Warcraft"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        upcommingMovieCollectionView.delegate = self
        upcommingMovieCollectionView.dataSource = self
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
            var width = UIScreen.main.bounds.width
            layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 0, right: 5)
        width = width - 10
        layout.itemSize = CGSize(width: width / 2, height: width)
        
            layout.minimumInteritemSpacing = 0
            layout.minimumLineSpacing = 0
            upcommingMovieCollectionView!.collectionViewLayout = layout
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return upcommingMovieName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCell", for: indexPath) as! UpcommoingMovieCollectionViewCell
        
        cell.upcommingMovieImage.image = upcommingMovieImages[indexPath.item]
        cell.upcommingMovieNameLabel.text = upcommingMovieName[indexPath.item]
        cell.upcommingMovieImage.contentMode = .scaleToFill
        

        //cell.layer.cornerRadius = 10
        
        cell.upcommingMovieImage.layer.cornerRadius = 10
        
        return cell
    }

}
