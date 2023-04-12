//
//  NameTableViewCell.swift
//  meuPrimeiroAppTableView
//
//  Created by Douglas Stadulni on 06/04/23.
//

import UIKit

//criar setup

class NameTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    //o identifier tem que ser o mesmo nome do arquivo
    static let identifier: String = "NameTablezViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(name: String){
        nameLabel.text = name
        
    }
    
}
