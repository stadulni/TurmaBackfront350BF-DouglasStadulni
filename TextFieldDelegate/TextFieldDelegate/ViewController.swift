//
//  ViewController.swift
//  TextFieldDelegate
//
//  Created by Douglas Stadulni on 21/03/23.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.placeholder = "Digite seu nome:"
        emailTextField.placeholder = "Digite seu email:"
        nameTextField.delegate = self
        nameTextField.layer.borderWidth = 2
        nameTextField.layer.borderColor = UIColor.lightGray.cgColor
    }
    

    
    
}

extension ViewController: UITextFieldDelegate {

    // Quando o teclado subir esse metodo será disparado
    // didBegin -> autocomplete
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 1
    }
    
    // Quando o teclado abaixa/some da tela
    // Metodo utilizado para fazer validações de campo
    // didEndEdit
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
        if textField.text == "" {
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            textField.layer.borderColor = UIColor.lightGray.cgColor
        }
        textField.layer.borderWidth = 2
    }
    
    // Quando pressionamos no botão "RETURNO"
    // return
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        textField.resignFirstResponder()
        return true
    }

}






