//
//  WelcomViewController.swift
//  Login
//
//  Created by Sofi on 02.02.2021.
//

import UIKit

class WelcomViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome,\(userName)!"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setGradientBackground()
        super.viewWillAppear(animated)
    }
//    MARK: - Gradient
    func setGradientBackground() {
        let colorTop =  UIColor(red: 255.0/255.0,
                                green: 154.0/255.0,
                                blue: 179.0/255.0,
                                alpha: 1.0).cgColor
        
        let colorBottom = UIColor(red: 128.0/255.0,
                                  green: 154.0/255.0,
                                  blue: 220.0/255.0,
                                  alpha: 1.0).cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds

        self.view.layer.insertSublayer(gradientLayer, at:0)
    }

    @IBAction func logOut() {
        dismiss(animated: true)
    }
}
