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
    
    
    var spec: Specs?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       configElements()
    }
    
    func configElements(){
        cardImageView.image = UIImage(named: spec?.cardImage ?? "")
        titleLabel.text = spec?.titleCard ?? ""
        titleLabel.textColor = .white

    }
   
}
