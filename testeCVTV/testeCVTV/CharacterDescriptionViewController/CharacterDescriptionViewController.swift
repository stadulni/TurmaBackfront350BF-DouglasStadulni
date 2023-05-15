//
//  CharacterDescriptionViewController.swift
//  testeCVTV
//
//  Created by Douglas Stadulni on 15/05/23.
//

import UIKit

class CharacterDescription: UIViewController {
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configBackground()
    }
    
    func configBackground(){
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "background")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
}
