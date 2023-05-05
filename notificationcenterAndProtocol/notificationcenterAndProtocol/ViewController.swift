//
//  ViewController.swift
//  notificationcenterAndProtocol
//
//  Created by Douglas Stadulni on 04/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var clickHereButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        configObserver()
        nameLabel.text = ""
    }
    
    func configView(){
        
        logoImageView.image = UIImage(named: "Image 1")
    }
    
    func configObserver(){
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateMacbook), name: .macbook, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateImac), name: .imac, object: nil)
    }
    
    @objc func updateMacbook(_ notification: NSNotification){
        logoImageView.image = UIImage(named: "macbook")
        nameLabel.text = "Macbook Pro"
        view.backgroundColor = .red
    }
    @objc func updateImac(_ notification: NSNotification){
        logoImageView.image = UIImage(named: "imac")
        nameLabel.text = "Imac das galáxias"
        view.backgroundColor = .cyan
    }

    @IBAction func tappedClickHereButton(_ sender: UIButton) {
        
        let vc: Tela02ViewController? = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        vc?.modalPresentationStyle = .fullScreen
        present(vc ?? UIViewController(), animated: true)
    }
    
}

