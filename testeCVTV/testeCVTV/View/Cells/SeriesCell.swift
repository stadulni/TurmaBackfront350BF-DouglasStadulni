//
//  SeriesCell.swift
//  testeCVTV
//
//  Created by Douglas Stadulni on 03/05/23.
//

import UIKit

class SeriesCell: UITableViewCell {
    
    @IBOutlet weak var seriesImageView: UIImageView!
    
    static let identifier: String = String(describing: SeriesCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        configSeriesCell()
        
    }
    
    func configSeriesCell(){
        seriesImageView.contentMode = .scaleToFill
    }
    
    func setupCell(serie: Series) {
        seriesImageView.image = UIImage(named: serie.imageSeries)
    }
    
//    func setupCell(exercise: Exercise) {
//        exerciseLabel.text = exercise.exerciseName
//        exerciseImageView.image = UIImage(named: exercise.exerciseImage)
//    }
    
}
