//
//  NameTableViewCell.swift
//  exercicioTableView
//
//  Created by Douglas Stadulni on 11/04/23.
//

import UIKit

class NameTableViewCell: UITableViewCell {
    
    
    
    
    @IBOutlet weak var imageSongsView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "NameTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(fiveSongs: Songs) {
        nameLabel.text = fiveSongs.name
        imageSongsView.image = UIImage(named: fiveSongs.imageName)
        
        
        // imageSongsView.image = UIImage(systemName: "person")
        
        //sf symbols
    }
}

