//
//  YutoViewController.swift
//  testeCVTV
//
//  Created by Douglas Stadulni on 03/05/23.
//

import UIKit

class YutoViewController: UIViewController {
    
    @IBOutlet weak var titleNameLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let viewModel: YutoViewModel = YutoViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configCollectionView()

       
    }
    
    func configCollectionView(){
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(CardsCollectionViewCell.nib(), forCellWithReuseIdentifier: CardsCollectionViewCell.identifier)
        
        collectionView.backgroundColor = UIColor.clear
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
            layout.estimatedItemSize = .zero
            layout.itemSize = CGSize(width: 50, height: 50)
            layout.minimumInteritemSpacing = 2
            layout.minimumLineSpacing = 10
            layout.sectionInset = UIEdgeInsets(top: 30, left: 2, bottom: 30, right: 2)
        }
        
    }
    
}

extension YutoViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 1
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.arraySize
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardsCollectionViewCell.identifier, for: indexPath) as? CardsCollectionViewCell
        cell?.setupCell(cards: viewModel.getCards(index: indexPath.row))
        return cell ?? UICollectionViewCell()
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if let vc = UIStoryboard(name: String(describing: CardDescriptionViewController.self), bundle: nil).instantiateViewController(withIdentifier: String(describing: CardDescriptionViewController.self)) as? CardDescriptionViewController {
            vc.modalPresentationStyle = .fullScreen
            vc.delegate(delegate: self)
            present(vc, animated: true)
        }
        }
        
//        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//            switch indexPath.row {
//            case 0:
//                // apresentar tela para o item 1
//                let telaItem1 = TelaItem1ViewController()
//                navigationController?.pushViewController(telaItem1, animated: true)
//
//            case 1:
//                // apresentar tela para o item 2
//                let telaItem2 = TelaItem2ViewController()
//                navigationController?.pushViewController(telaItem2, animated: true)
//
//            case 2:
//                // apresentar tela para o item 3
//                let telaItem3 = TelaItem3ViewController()
//                navigationController?.pushViewController(telaItem3, animated: true)
//
//            default:
//                break
//            }
//        }

        
        }


extension YutoViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:( collectionView.frame.size.width - 30)/4, height:( collectionView.frame.size.width - 30)/4)
    }
    
}
