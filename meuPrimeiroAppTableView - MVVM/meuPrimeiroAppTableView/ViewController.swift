//
//  ViewController.swift
//  meuPrimeiroAppTableView
//
//  Created by Douglas Stadulni on 06/04/23.
//

import UIKit

//MARK: - PASSA A PASSO TABLEVIEW COM XIB

//Criar a tableview e fazer sua ligacao
//configurar tableview (delegate e datasource)
//criar celula customizavel

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        // configurar os protocolos
        tableView.delegate = self
        tableView.dataSource = self
        // registrar a celula
        
    }


}
// DATASOURCE - Responsavel pela parte de dados
extension ViewController: UITableViewDataSource {
    
    //quantidade de itens por seçã0
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
// DELEGATE - Responsavel pela interaçao do usuario
extension ViewController: UITableViewDelegate {
    
}


