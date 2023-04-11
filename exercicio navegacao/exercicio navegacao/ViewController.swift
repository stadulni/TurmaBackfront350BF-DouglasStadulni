//
//  ViewController.swift
//  exercicio navegacao
//
//  Created by Douglas Stadulni on 05/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func cliqueiShowTela02Button(_ sender: Any) {
        let vc: Tela02ViewController? = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        //vc?.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    
    @IBAction func cliqueiShowTela03Button(_ sender: Any) {
        let vc: Tela03ViewController? = UIStoryboard(name: "Tela03ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela03ViewController") as? Tela03ViewController
        //vc?.modalPresentationStyle = .formSheet
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    @IBAction func cliqueiShowTela04Button(_ sender: UIButton) {
        let vc: Tela04ViewController? = UIStoryboard(name: "Tela04ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela04ViewController") as? Tela04ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    
    @IBAction func cliqueiShowTela05Button(_ sender: UIButton) {
        let vc: Tela05ViewController? = UIStoryboard(name: "Tela05ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela05ViewController") as? Tela05ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    
    
    @IBAction func cliqueiShowTela06Button(_ sender: UIButton) {
        let vc: Tela06ViewController? = UIStoryboard(name: "Tela06ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela06ViewController") as? Tela06ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    
}

