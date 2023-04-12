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
//registrar celula

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var nameList: [String] = ["Caio", "Felipe", "Anderson", "Andressa", "Lucas"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        // configurar os protocolos
        tableView.delegate = self
        tableView.dataSource = self
        // registrar celula
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
        
    }


}
// DATASOURCE - Responsavel pela parte de dados
extension ViewController: UITableViewDataSource {
    
    //quantidade de itens por seçã0
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    //responsavel por criar as celular
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell
        cell?.setupCell(name: nameList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
}
// DELEGATE - Responsavel pela interaçao do usuario
extension ViewController: UITableViewDelegate {
    
}


