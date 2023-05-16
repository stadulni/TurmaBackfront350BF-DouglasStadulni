//
//  CharacterDescriptionViewController.swift
//  testeCVTV
//
//  Created by Douglas Stadulni on 15/05/23.
//

import UIKit

class CharacterDescriptionViewController: UIViewController {
    
    @IBOutlet weak var nameCharacterLabel: UILabel!
    @IBOutlet weak var surnameCharacterLabel: UILabel!
    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var characterDescriptionLabel: UILabel!
    @IBOutlet weak var deckButton: UIButton!
    
    var bio: Characters?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configBackground()
        configView()
    }
    
    func configBackground(){
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "background")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    func configView(){
        
        nameCharacterLabel.text = bio?.charactersName ?? ""
        nameCharacterLabel.textColor = .white
        
        surnameCharacterLabel.text = bio?.charactersSurname ?? ""
        surnameCharacterLabel.textColor = .white
        
        characterImageView.image = UIImage(named: bio?.charactersImage ?? "")
        
        characterDescriptionLabel.text = bio?.charactersDescription ?? ""
        characterDescriptionLabel.textColor = .white
        
        deckButton.layer.cornerRadius = 10
        
    }
    
    
    
    @IBAction func tappedDeckButton(_ sender: UIButton) {
        let vc: YutoViewController? = UIStoryboard(name: "YutoViewController", bundle: nil).instantiateViewController(withIdentifier: "YutoViewController") as? YutoViewController
        vc?.modalPresentationStyle = .fullScreen
        present(vc ?? UIViewController(), animated: true)
        
    }
    
}

