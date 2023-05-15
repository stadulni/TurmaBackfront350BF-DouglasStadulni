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
        
        nameCharacterLabel.text = "Yami"
        nameCharacterLabel.textColor = .white
        
        surnameCharacterLabel.text = "Yugi"
        surnameCharacterLabel.textColor = .white
        
        characterImageView.image = UIImage(named: "yamiyugi")
        
        characterDescriptionLabel.text = "When Yugi Muto solved the Millennium Puzzle, he was infused with the ancient spirit of Yami Yugi. Yami Yugi is ready to face any challenge in order to regain his lost memories. An expert Duelist wielding unmatched skills and cards, Yami Yugi's most trusted monster is Dark Magician."
        characterDescriptionLabel.textColor = .white
        
        deckButton.layer.cornerRadius = 10
        
    }
    
    
    
    @IBAction func tappedDeckButton(_ sender: UIButton) {
        let vc: YutoViewController? = UIStoryboard(name: "YutoViewController", bundle: nil).instantiateViewController(withIdentifier: "YutoViewController") as? YutoViewController
        vc?.modalPresentationStyle = .fullScreen
        present(vc ?? UIViewController(), animated: true)
        
    }
    
}

