//
//  AlertController.swift
//  desafioNotificationCenterTabBar
//
//  Created by Douglas Stadulni on 09/05/23.
//

import UIKit

class AlertController: NSObject{
    
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func alertInformation(title: String, message: String){
        
        let alertController: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "ok", style: .default)
        
        alertController.addAction(ok)
        controller.present(alertController, animated: true)
    }
}
