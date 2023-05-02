//
//  AlertController.swift
//  desafioAppTabBar
//
//  Created by Douglas Stadulni on 02/05/23.
//

import UIKit

enum TypeImageSelected{
    
    case camera
    case library
    case cancel
}

class AlertController: NSObject {
    
    let controller: UIViewController
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func chooseImage(completion: @escaping(_ option: TypeImageSelected) -> Void){
        
        let alertController: UIAlertController = UIAlertController(title: "Selecione uma das opções abaixo", message: nil, preferredStyle: .actionSheet)
        let camera = UIAlertAction(title: "Câmera", style: .default){action in
            completion(.camera)
        }
        let library = UIAlertAction(title: "Biblioteca", style: .default){action in
            completion(.library)
        }
        let cancel = UIAlertAction(title: "Cancelar", style: .cancel){action in
            completion(.cancel)
        }
        alertController.addAction(camera)
        alertController.addAction(library)
        alertController.addAction(cancel)
        controller.present(alertController, animated: true)
    }
    
    func alertInformation(title: String, message: String){
        let alertController: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "ok", style: .default)
        alertController.addAction(ok)
        controller.present(alertController, animated: true)
        
    }
    

}
