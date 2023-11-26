//
//  UserViewController.swift
//  ShoppableApp
//
//  Created by Sanket Kar on 26/11/23.
//

import Foundation
import UIKit

class UserViewController: UIViewController{

    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        image.layer.borderWidth = 1
            image.layer.masksToBounds = false
            image.layer.borderColor = UIColor.black.cgColor
            image.layer.cornerRadius = image.frame.height/2
            image.clipsToBounds = true
    }
}
