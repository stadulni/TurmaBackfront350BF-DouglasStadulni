//
//  SellectionViewController.swift
//  notificationcenterAndProtocol
//
//  Created by Douglas Stadulni on 09/05/23.
//

import UIKit

protocol SellectionViewControllerProtocol: AnyObject{
    func tappedMacbook()
    func tappedImac()
    //func teste(nome: String)
    
}

class SellectionViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var macbookButton: UIButton!
    @IBOutlet weak var imacButton: UIButton!
    
    weak var delegate: SellectionViewControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    @IBAction func tappedMacbookButton(_ sender: UIButton) {
        //NotificationCenter.default.post(name: .macbook, object: nil)
        delegate?.tappedMacbook()
        dismiss(animated: true)
    }
    
    
    @IBAction func tappedImacButton(_ sender: UIButton) {
        //NotificationCenter.default.post(name: .imac, object: nil)
        delegate?.tappedImac()
        dismiss(animated: true)
    }
    
    
}
