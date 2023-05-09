//
//  CardsCollectionViewCell.swift
//  testeCVTV
//
//  Created by Douglas Stadulni on 03/05/23.
//

import UIKit

class CardsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cardImageView: UIImageView!
    
    static let identifier: String = String(describing: CardsCollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupCell(cards: Specs){
        cardImageView.image = UIImage(named: cards.cardImage)
    }

}
