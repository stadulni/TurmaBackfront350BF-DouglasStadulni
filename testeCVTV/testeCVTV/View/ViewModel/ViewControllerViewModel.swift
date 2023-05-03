//
//  ViewControllerViewModel.swift
//  testeCVTV
//
//  Created by Douglas Stadulni on 03/05/23.
//

import Foundation

class ViewControllerViewModel {
    
   private var listOfCharacters: [Character] = [Character(imageCharacter: "yuto"), Character(imageCharacter: "resonators")]
    
    func getCharacter(index: Int) -> Character {
        return listOfCharacters[index]
    }
    
    var arraySize: Int {
        return listOfCharacters.count
    }
    
}
