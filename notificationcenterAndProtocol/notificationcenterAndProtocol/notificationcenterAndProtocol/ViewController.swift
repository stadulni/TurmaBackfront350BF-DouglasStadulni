//
//  ViewController.swift
//  notificationcenterAndProtocol
//
//  Created by Douglas Stadulni on 09/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        titleLabel.text = ""
        configObserver()
    }
    
    func configObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(updateMacbook), name: .macbook, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateImac), name: .imac, object: nil)
    }
    
    @objc func updateMacbook(_ notification: NSNotification) {
        logoImageView.image = UIImage(named: "macbook_pro")
        titleLabel.text = "MacBook Pro"
        view.backgroundColor = .red
    }
    
    @objc func updateImac(_ notification: NSNotification) {
        logoImageView.image = UIImage(named: "imac_pro")
        titleLabel.text = "Imac das galáxias"
        view.backgroundColor = .cyan
    }
    
    
    
    @IBAction func tappedChooseAction(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "SellectionViewController", bundle: nil).instantiateViewController(withIdentifier: "SellectionViewController") as? SellectionViewController
        vc?.modalPresentationStyle = .fullScreen
        vc?.delegate = self
        present(vc ?? UIViewController(), animated: true)
    }
}

extension ViewController: SellectionViewControllerProtocol {
    func tappedMacbook() {
        logoImageView.image = UIImage(named: "macbook")
        titleLabel.text = "MacBook Pro"
        view.backgroundColor = .red
    }
    
    func tappedImac() {
        logoImageView.image = UIImage(named: "Imac")
        titleLabel.text = "Imac das galáxias"
        view.backgroundColor = .cyan
    }
    
    //func teste(nome: String) {}
    
    
    
}
