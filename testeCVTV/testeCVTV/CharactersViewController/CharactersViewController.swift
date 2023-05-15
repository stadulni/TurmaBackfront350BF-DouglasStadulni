//
//  CharactersViewController.swift
//  testeCVTV
//
//  Created by Douglas Stadulni on 15/05/23.
//

import UIKit

class CharactersViewController: UIViewController{


    @IBOutlet weak var serieImageView: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    private var viewModel: CharactersViewModel = CharactersViewModel()
    
    var serie: Series?

    override func viewDidLoad() {
        super.viewDidLoad()
        configBackground()
        configImage()
       configCollectionView()

    }

    func configBackground(){

        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "background")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }

    func configImage(){
        serieImageView.image = UIImage(named: serie?.imageSeries ?? "")
    }

    func configCollectionView(){

        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CharactersCollectionViewCell.nib(), forCellWithReuseIdentifier: CharactersCollectionViewCell.identifier)
        
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

extension CharactersViewController: UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 1
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.arraySize
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CharactersCollectionViewCell.identifier, for: indexPath) as? CharactersCollectionViewCell
        cell?.setupCell(character: viewModel.getCharacter(index: indexPath.row))
        return cell ?? UICollectionViewCell()
    }

//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        return
//    }

}

extension CharactersViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:( collectionView.frame.size.width - 30)/4, height:( collectionView.frame.size.width - 30)/4)
    }
}
