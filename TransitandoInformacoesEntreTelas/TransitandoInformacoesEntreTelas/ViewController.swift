//
//  ViewController.swift
//  TransitandoInformacoesEntreTelas
//
//  Created by Douglas Stadulni on 05/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func cliqueiExibirButton(_ sender: UIButton) {
        let vc: Tela02ViewController? = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        vc?.modalPresentationStyle = .formSheet
        vc?.name = nameTextField.text ?? ""
        present(vc ?? UIViewController(), animated: true)
    }
    

}

