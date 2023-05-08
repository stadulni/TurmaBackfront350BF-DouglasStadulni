//
//  CardDescriptionCollectionViewCell.swift
//  testeCVTV
//
//  Created by Douglas Stadulni on 07/05/23.
//

import UIKit

class CardDescriptionCollectionViewCell: UICollectionViewCell {
    

    @IBOutlet weak var titleCardLabel: UILabel!
    @IBOutlet weak var rarityLabel: UILabel!
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var typeOfCardLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var atkLabel: UILabel!
    @IBOutlet weak var numberOfAtkLabel: UILabel!
    @IBOutlet weak var defLabel: UILabel!
    @IBOutlet weak var numberOfDefLabel: UILabel!
    
    static let identifier: String = String(describing: CardsCollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func setupCell(card: Specs){
        titleCardLabel.text = card.titleCard
        rarityLabel.text = card.rarity
        cardImageView.image = UIImage(named: card.cardImage)
        typeOfCardLabel.text = card.typeOfCard
        descriptionLabel.text = card.description
        numberOfAtkLabel.text = card.numberOfAtk
        numberOfDefLabel.text = card.numberOfDef
        atkLabel.text = "ATK"
        defLabel.text = "DEF"
    }
}
