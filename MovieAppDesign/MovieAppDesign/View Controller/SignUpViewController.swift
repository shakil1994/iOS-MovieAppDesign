//
//  SignUpViewController.swift
//  MovieAppDesign
//
//  Created by DhakaLive on 3/1/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var labelSignin: UILabel!
    @IBOutlet weak var btnSignUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let buttonRedius = self.btnSignUp.bounds.width / 50
        self.btnSignUp.layer.cornerRadius = buttonRedius

        textColor()
        
        labelSignin.isUserInteractionEnabled = true
        let tapgesture = UITapGestureRecognizer.init(target: self, action: #selector(clickLabel))
        labelSignin.addGestureRecognizer(tapgesture)
        
    }
    
    @objc func clickLabel() {
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        if let signIn = storyBoard.instantiateViewController(identifier: "SignIn") as? SignInViewController {
           self.navigationController?.pushViewController(signIn, animated: true)
        }
    }
    
    func textColor() {
        let attrs1 = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18), NSAttributedString.Key.foregroundColor : UIColor.gray]

        let attrs2 = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18), NSAttributedString.Key.foregroundColor : UIColor.red]

        let attributedString1 = NSMutableAttributedString(string:"Already have an account?", attributes:attrs1)

        let attributedString2 = NSMutableAttributedString(string:" Signin", attributes:attrs2)

        attributedString1.append(attributedString2)
        self.labelSignin.attributedText = attributedString1
    }
    
    @IBAction func signupTapped(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Home", bundle: Bundle.main)
        if let signIn = storyBoard.instantiateViewController(identifier: "HomeVC") as? HomeViewController {
           self.navigationController?.pushViewController(signIn, animated: true)
        }
    }
}
