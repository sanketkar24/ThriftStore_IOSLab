//
//  LoginViewController.swift
//  ShoppableApp
//
//  Created by Sanket Kar on 26/11/23.
//

import Foundation
import UIKit
import Lottie

class LoginViewController: UIViewController{
    @IBOutlet var submitButton: UIButton!
    
    @IBOutlet var usernameText: UITextField!
    
    @IBOutlet var passwordText: UITextField!
    
    var animationView: LottieAnimationView?
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView = .init(name: "loginLottie")
        
        
        let animationViewHeight: CGFloat = 250.0 // Adjust the height as needed
           let animationViewFrame = CGRect(x: 0, y: 100, width: view.bounds.width, height: animationViewHeight)
           animationView!.frame = animationViewFrame

           animationView!.contentMode = .scaleAspectFit
           animationView!.loopMode = .loop
           animationView!.animationSpeed = 0.5
        
        
        view.addSubview(animationView!)
        animationView!.play()
        
    }
    @IBAction func onSubmit(_ sender: Any) {
        if( usernameText.text == "Sanket" &&
            passwordText.text == "Kar"){
            performSegue(withIdentifier: "TabSegue", sender: self)
        }
    }
}
