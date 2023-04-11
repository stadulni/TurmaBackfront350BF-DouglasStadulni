//
//  Tela03ViewController.swift
//  exercicio navegacao
//
//  Created by Douglas Stadulni on 05/04/23.
//

import UIKit

class Tela03ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func cliqueiShowTela04Button(_ sender: UIButton) {
        let vc: Tela04ViewController? = UIStoryboard(name: "Tela04ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela04ViewController") as? Tela04ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    
    @IBAction func voltarButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
