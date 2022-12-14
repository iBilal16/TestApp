//
//  ViewController.swift
//  TestApp
//
//  Created by Bilal Ahmad on 22/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bgImageView: UIImageView!
    
    @IBOutlet weak var ordersView: UIView!
    @IBOutlet weak var worksView: UIView!
    @IBOutlet weak var aboutUsView: UIView!
    @IBOutlet weak var contactUsView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.bgImageView.layer.cornerRadius = self.bgImageView.frame.width/6.0
        //bgImageView.round(corners: [.bottomLeft, .bottomRight], cornerRadius: 20)
        //bgImageView.roundCorners(with: [.layerMinXMaxYCorner], radius: 20)
        //bgImageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]

        ordersView.makeCornerRadius(radius: 10)
        worksView.makeCornerRadius(radius: 10)
        aboutUsView.makeCornerRadius(radius: 10)
        contactUsView.makeCornerRadius(radius: 10)


        self.bgImageView.clipsToBounds = true
        tabbarConfig()

    }

    
    func tabbarConfig()  {
        
        guard let tabbar = self.tabBarController?.tabBar else { return }
        
        tabbar.barTintColor = .white
        tabbar.tintColor = #colorLiteral(red: 0.1135524884, green: 0.3487411737, blue: 0.4994378686, alpha: 1)
        tabbar.unselectedItemTintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        tabbar.backgroundColor = .white
        
    }

}

