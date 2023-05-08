//
//  CardDescriptionViewController.swift
//  testeCVTV
//
//  Created by Douglas Stadulni on 07/05/23.
//

import UIKit

class CardDescriptionViewController: UIViewController {
    
    @IBOutlet weak var cardCollectionView: UICollectionView!
    
    private let viewModel: CardDescriptionViewModel = CardDescriptionViewModel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configCollectionView()
       
    }
    
    func configCollectionView(){
        
        cardCollectionView.delegate = self
        cardCollectionView.dataSource = self
        cardCollectionView.register(CardDescriptionCollectionViewCell.nib(), forCellWithReuseIdentifier: CardDescriptionCollectionViewCell.identifier)
        cardCollectionView.backgroundColor = UIColor.clear
    }
    
}

extension CardDescriptionViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.arraySize
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardDescriptionCollectionViewCell.identifier, for: indexPath) as? CardDescriptionCollectionViewCell
        cell?.setupCell(card: viewModel.getCard(index: indexPath.row))
        return cell ?? UICollectionViewCell()
    }
    
    
    
    
}
