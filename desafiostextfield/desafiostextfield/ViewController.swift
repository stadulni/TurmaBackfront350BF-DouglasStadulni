//
//  ViewController.swift
//  desafiostextfield
//
//  Created by Douglas Stadulni on 22/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var enderecoTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var cadastrarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // elementos da name
        nameTextField.placeholder = "Digite seu nome aqui:"
        nameTextField.delegate = self
        nameTextField.layer.borderWidth = 1
        nameTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        // elementos do endereco
        enderecoTextField.placeholder = "Digite seu endereço aqui:"
        enderecoTextField.delegate = self
        enderecoTextField.layer.borderWidth = 1
        enderecoTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        // elementos da senha
        senhaTextField.placeholder = "Digite sua senha aqui:"
        senhaTextField.delegate = self
        senhaTextField.layer.borderWidth = 1
        senhaTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        // elementos do button
        cadastrarButton.isEnabled = false
        
    }
    
    func validacaoTextFields() {
        if nameTextField.text?.isEmpty == true {
            nameTextField.layer.borderColor = UIColor.red.cgColor
            nameTextField.layer.borderWidth = 2
        } else {
            nameTextField.layer.borderWidth = 0
        }
        
        if enderecoTextField.text?.isEmpty == true {
            enderecoTextField.layer.borderColor = UIColor.red.cgColor
            enderecoTextField.layer.borderWidth = 2
        } else {
            enderecoTextField.layer.borderWidth = 0
        }
        
        if senhaTextField.text?.isEmpty == true {
            senhaTextField.layer.borderWidth = 2
            senhaTextField.layer.borderColor = UIColor.red.cgColor
        } else {
            senhaTextField.layer.borderWidth = 0
        }
        if nameTextField.text?.isEmpty == false && enderecoTextField.text?.isEmpty == false && senhaTextField.text?.isEmpty == false {
            cadastrarButton.isEnabled = true
        } else {
            cadastrarButton.isEnabled = false
        }
    }
        
        
        @IBAction func cliqueiCadastrarButton(_ sender: UIButton) {
            print("Cadastro realizado com sucesso.")
        }
    }

extension ViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        validacaoTextFields()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            enderecoTextField.becomeFirstResponder()
        } else if textField == enderecoTextField {
            senhaTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return true
    }
}


    
    

        
        
    
    
   
            
            
          





