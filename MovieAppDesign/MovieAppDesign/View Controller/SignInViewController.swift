//
//  LoginViewController.swift
//  MovieAppDesign
//
//  Created by DhakaLive on 3/1/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var btnSignIn: UIButton!
    @IBOutlet weak var labelSignup: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let buttonRedius = self.btnSignIn.bounds.width / 50
        self.btnSignIn.layer.cornerRadius = buttonRedius

        labelSignup.isUserInteractionEnabled = true
        let tapgesture = UITapGestureRecognizer.init(target: self, action: #selector(clickLabel))
        labelSignup.addGestureRecognizer(tapgesture)
        
        textColor()
    }
    
    @objc func clickLabel() {
        //print("Hello")
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        if let signUp = storyBoard.instantiateViewController(identifier: "SignUp") as? SignUpViewController {
           self.navigationController?.pushViewController(signUp, animated: true)
        }
    }
    
    func textColor() {
        let attrs1 = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18), NSAttributedString.Key.foregroundColor : UIColor.gray]

        let attrs2 = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18), NSAttributedString.Key.foregroundColor : UIColor.red]

        let attributedString1 = NSMutableAttributedString(string:"Don't have an account?", attributes:attrs1)

        let attributedString2 = NSMutableAttributedString(string:" Signup", attributes:attrs2)

        attributedString1.append(attributedString2)
        self.labelSignup.attributedText = attributedString1
    }
    
    
    @IBAction func signinTapped(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "HomeStoryboard", bundle: Bundle.main)
        if let signUp = storyBoard.instantiateViewController(identifier: "HomeVC") as? HomeViewController {
           self.navigationController?.pushViewController(signUp, animated: true)
        }
    }
    
}
