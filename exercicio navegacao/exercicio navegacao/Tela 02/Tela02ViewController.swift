//
//  Tela02ViewController.swift
//  exercicio navegacao
//
//  Created by Douglas Stadulni on 05/04/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    
    @IBAction func VoltarButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func cliqueiShowTela03Button(_ sender: UIButton) {
        let vc: Tela03ViewController? = UIStoryboard(name: "Tela03ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela03ViewController") as? Tela03ViewController
        //vc?.modalPresentationStyle = .formSheet
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    

}
