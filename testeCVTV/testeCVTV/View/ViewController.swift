//
//  ViewController.swift
//  testeCVTV
//
//  Created by Douglas Stadulni on 03/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var titleNameLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    private var viewModel: ViewControllerViewModel = ViewControllerViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        configView()
        configBackground()
    }
    
    func configBackground(){
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "background")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    func configView(){
        
        titleNameLabel.text = "Top Tier Decks"
        
        logoImageView.image = UIImage(named: "logo")
        logoImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = logoImageView
    }
    
    func configTableView(){
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CharactersCell.nib(), forCellReuseIdentifier: CharactersCell.identifier)
        tableView.backgroundColor = UIColor.clear
        
        let cellSpacing: CGFloat = 20

        // Defina a altura da borda inferior de cada célula
        tableView.separatorStyle = .singleLine
        tableView.separatorColor = .clear // remove a linha separadora padrão
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tableView.rowHeight = UITableView.automaticDimension

        // Adicione um espaço abaixo de cada célula
        tableView.contentInset.bottom = cellSpacing
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.arraySize
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CharactersCell.self), for: indexPath) as? CharactersCell{
            cell.setupCell(character: viewModel.getCharacter(index: indexPath.row))
            return cell
        }
        return UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = UIStoryboard(name: String(describing: YutoViewController.self), bundle: nil).instantiateViewController(withIdentifier: String(describing: YutoViewController.self)) as? YutoViewController {
            vc.modalPresentationStyle = .formSheet
            present(vc, animated: true)
        }
    }
}
