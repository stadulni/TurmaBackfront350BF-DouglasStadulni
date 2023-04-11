//
//  Tela05ViewController.swift
//  exercicio navegacao
//
//  Created by Douglas Stadulni on 05/04/23.
//

import UIKit

class Tela05ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func cliqueiShowTela06Button(_ sender: UIButton) {
        let vc: Tela06ViewController? = UIStoryboard(name: "Tela06ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela06ViewController") as? Tela06ViewController
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
