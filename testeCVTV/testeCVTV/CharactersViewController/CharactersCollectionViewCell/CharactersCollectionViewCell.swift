//
//  CharactersCollectionViewCell.swift
//  testeCVTV
//
//  Created by Douglas Stadulni on 15/05/23.
//

import UIKit

class CharactersCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var characterImageView: UIImageView!
    
    static let identifier: String = String(describing: CharactersCollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }
    
    func setupCell(character: Characters) {
        characterImageView.image = UIImage(named: character.charactersImage)
        
    }

}
