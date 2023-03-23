//
//  ViewController.swift
//  desafio2textfield
//
//  Created by Douglas Stadulni on 23/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    @IBOutlet weak var senhaConfirmadaTextField: UITextField!
    @IBOutlet weak var cadastrarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    //elementos do name text field
        nameTextField.delegate = self
        nameTextField.placeholder = "Digite o seu nome:"
        nameTextField.layer.borderColor = UIColor.lightGray.cgColor
        nameTextField.layer.borderWidth = 1
        
        //elementos do email text field
        emailTextField.delegate = self
        emailTextField.placeholder = "Digite seu email:"
        emailTextField.layer.borderColor = UIColor.lightGray.cgColor
        emailTextField.layer.borderWidth = 1
        
        //elementos da senha text field
        senhaTextField.delegate = self
        senhaTextField.placeholder = "Digite sua senha:"
        senhaTextField.layer.borderColor = UIColor.lightGray.cgColor
        senhaTextField.layer.borderWidth = 1
        
        //elementos da confirmacao de senha text field
        senhaConfirmadaTextField.delegate = self
        senhaConfirmadaTextField.placeholder = "Confirme seua senha:"
        senhaConfirmadaTextField.layer.borderColor = UIColor.lightGray.cgColor
        senhaConfirmadaTextField.layer.borderWidth = 1
        
        //elementos do button
        cadastrarButton.isEnabled = false
    }
    
    
    @IBAction func cliqueiCadastrarButton(_ sender: UIButton) {
        print("Cadastro realizado com sucesso")
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.hasText == false {
            textField.layer.borderColor = UIColor.red.cgColor
            textField.layer.borderWidth = 2
            cadastrarButton.isEnabled = false
        } else if
            nameTextField.hasText == true && emailTextField.hasText == true && senhaTextField.hasText == true && senhaConfirmadaTextField.hasText == true && senhaTextField.text == senhaConfirmadaTextField.text {
            cadastrarButton.isEnabled = true
        } else {
            textField.layer.borderWidth = 0
            senhaTextField.layer.borderColor = UIColor.red.cgColor
            senhaConfirmadaTextField.layer.borderColor = UIColor.red.cgColor
            senhaTextField.layer.borderWidth = 1
            senhaConfirmadaTextField.layer.borderWidth = 1
        }
        
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            if textField == nameTextField{
                emailTextField.becomeFirstResponder()
            } else if textField == emailTextField {
                senhaTextField.becomeFirstResponder()
            } else if textField == senhaTextField {
                senhaConfirmadaTextField.becomeFirstResponder()
            } else {
                textField.resignFirstResponder()
            }
            return true
        }
    }
}

