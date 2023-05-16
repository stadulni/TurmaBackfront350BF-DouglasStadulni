//
//  CardDescriptionViewController.swift
//  testeCVTV
//
//  Created by Douglas Stadulni on 07/05/23.
//

import UIKit

class CardDescriptionViewController: UIViewController {
    
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var rarityLabel: UILabel!
    @IBOutlet weak var cardTypeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var atkLabel: UILabel!
    @IBOutlet weak var numberOfAtkLabel: UILabel!
    @IBOutlet weak var defLabel: UILabel!
    @IBOutlet weak var numberOfDefLabel: UILabel!
    
    var spec: Specs?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       configElements()
        configBackground()
    }
    
    func configBackground(){

        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "background")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    func configElements(){
        cardImageView.image = UIImage(named: spec?.cardImage ?? "")
        
        titleLabel.text = spec?.titleCard ?? ""
        titleLabel.textColor = .white
        
        rarityLabel.text = spec?.rarity ?? ""
        rarityLabel.textColor = .white
        
        cardTypeLabel.text = spec?.typeOfCard ?? ""
        cardTypeLabel.textColor = .white
        
        descriptionLabel.text = spec?.description ?? ""
        descriptionLabel.textColor = .white
        
        atkLabel.text = "ATK"
        atkLabel.textColor = .white
        numberOfAtkLabel.text = spec?.numberOfAtk ?? ""
        numberOfAtkLabel.textColor = .white
        
        defLabel.text = "DEF"
        defLabel.textColor = .white
        numberOfDefLabel.text = spec?.numberOfDef ?? ""
        numberOfDefLabel.textColor = .white
        
        if rarityLabel.text == "R"{
            rarityLabel.backgroundColor = .blue
        } else if rarityLabel.text == "SR"{
            rarityLabel.backgroundColor = .yellow
            rarityLabel.textColor = .black
        }else{
            rarityLabel.backgroundColor = .cyan
        }
        
        
        if let atkText = spec?.numberOfAtk, !atkText.isEmpty {
                atkLabel.isHidden = false
                numberOfAtkLabel.isHidden = false
            } else {
                atkLabel.isHidden = true
                numberOfAtkLabel.isHidden = true
            }

            if let defText = spec?.numberOfDef, !defText.isEmpty {
                defLabel.isHidden = false
                numberOfDefLabel.isHidden = false
            } else {
                defLabel.isHidden = true
                numberOfDefLabel.isHidden = true
            }
        
    }
   
}
