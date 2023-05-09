//
//  ViewController.swift
//  desafioNotificationCenterTabBar
//
//  Created by Douglas Stadulni on 09/05/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configItems()
        configColors()
        
    }
    
    func configItems() {
        guard let items = tabBar.items else {return}
        items[0].title = "Tela 01"
        items[0].image = UIImage(systemName: "person")
        
        items[1].title = "Tela 02"
        items[1].image = UIImage(systemName: "gear")
        
    }
    
    func configColors(){
        
        tabBar.layer.borderWidth = 0.5
        tabBar.layer.borderColor = UIColor.red.cgColor
        tabBar.backgroundColor = .white
    }


}

