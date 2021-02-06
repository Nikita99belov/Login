//
//  DataUserViewController.swift
//  Login
//
//  Created by Sofi on 05.02.2021.
//

import UIKit

class DataUserViewController: UIViewController {
    
    @IBOutlet var UserNameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var interestLabel: UILabel!
    
    @IBOutlet var iconImage: UIImageView!
    
    private let userName = DataUser.showDataUser().userName
    private let icon = DataUser.showDataUser().icon
    private let city = DataUser.showDataUser().city
    private let interest = DataUser.showDataUser().interest
    private let age = DataUser.showDataUser().age
    
    private let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setingView()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "Back2.png")
        backgroundImage.alpha = 0.45
        view.insertSubview(backgroundImage, at: 0)
    }
    
    private func setingView() {
        iconImage.layer.cornerRadius = 50
        iconImage.alpha = 0.9
        iconImage.layer.borderWidth = 2
        iconImage.layer.borderColor = UIColor.black.cgColor
        
        UserNameLabel.text = userName
        ageLabel.text = age
        cityLabel.text = city
        interestLabel.text = interest
        iconImage.image = UIImage(named: icon)
        
    }
}
