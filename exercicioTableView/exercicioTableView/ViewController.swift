//
//  ViewController.swift
//  exercicioTableView
//
//  Created by Douglas Stadulni on 11/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var songsList: [Songs] = [Songs(name: "Mockingbird", imageName: "mockingbird"),
                              Songs(name: "BABYDOLL X The Perfect Girl", imageName: "babydoll"),
                                Songs(name: "Unforgettable", imageName: "unforgettable"),
                                Songs(name: "Lullaby Baby", imageName: "lullabybaby"),
                                Songs(name: "Solway Flirth", imageName: "solwayflirth"),
    ]
    
    
    
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

extension ViewController: UITableViewDataSource {
    
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songsList.count
    }
    
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell
        cell?.setupCell(fiveSongs: songsList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}


extension ViewController: UITableViewDelegate {
    
}


