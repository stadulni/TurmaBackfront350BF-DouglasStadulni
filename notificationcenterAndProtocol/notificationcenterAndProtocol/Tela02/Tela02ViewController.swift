//
//  Tela02ViewController.swift
//  notificationcenterAndProtocol
//
//  Created by Douglas Stadulni on 04/05/23.
//

import UIKit

class Tela02ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var macbookAirLogoButton: UIButton!
    
    @IBOutlet weak var macDesktopLogoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tappedMacbookAirLogoButton(_ sender: UIButton) {
        
        NotificationCenter.default.post(name: Notification.Name("macbook"), object: nil)
        dismiss(animated: true)
    }
    
    @IBAction func tappedMacDesktopLogoButton(_ sender: UIButton) {
        
        NotificationCenter.default.post(name: Notification.Name("imac"), object: nil)
        dismiss(animated: true)
    }
    

}
