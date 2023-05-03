//
//  CharactersCell.swift
//  testeCVTV
//
//  Created by Douglas Stadulni on 03/05/23.
//

import UIKit

class CharactersCell: UITableViewCell {
    
    @IBOutlet weak var characterImageView: UIImageView!
    
    static let identifier: String = String(describing: CharactersCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        configCharacterCell()
        
    }
    
    func configCharacterCell(){
        characterImageView.contentMode = .scaleToFill
    }
    
    func setupCell(character: Character) {
        characterImageView.image = UIImage(named: character.imageCharacter)
    }
    
//    func setupCell(exercise: Exercise) {
//        exerciseLabel.text = exercise.exerciseName
//        exerciseImageView.image = UIImage(named: exercise.exerciseImage)
//    }
    
}
