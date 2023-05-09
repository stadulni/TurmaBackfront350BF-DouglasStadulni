//
//  CadastroViewController.swift
//  desafioNotificationCenterTabBar
//
//  Created by Douglas Stadulni on 09/05/23.
//

import UIKit

class CadastroViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    
    var alert: AlertController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alert = AlertController(controller: self)
    }
    
    
    @IBAction func tappedAddButton(_ sender: UIButton) {
        if nameTextField.hasText == false{
            self.alert?.alertInformation(title: "Atenção!", message: "É necessário inserir um nome!")
        } else {
            NotificationCenter.default.post(name: .name, object: nameTextField.text)
            tabBarController?.selectedIndex = 0
            nameTextField.text = ""
        }
    }
}
