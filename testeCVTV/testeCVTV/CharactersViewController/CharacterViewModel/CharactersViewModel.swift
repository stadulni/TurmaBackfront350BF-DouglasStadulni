//
//  CharactersViewModel.swift
//  testeCVTV
//
//  Created by Douglas Stadulni on 15/05/23.
//

import Foundation

class CharactersViewModel {
    
    private var listOfCharacters: [Characters] = [Characters(charactersImage: "yugi"),
                                                  Characters(charactersImage: "kaiba"),
                                                  Characters(charactersImage: "joey"),
                                                  Characters(charactersImage: "tea"),
                                                  Characters(charactersImage: "mai"),
                                                  Characters(charactersImage: "marik"),
                                                  Characters(charactersImage: "bakura"),
                                                  Characters(charactersImage: "ishizu"),
                                                  Characters(charactersImage: "pegasus")
    ]
    
    func getCharacter(index: Int) -> Characters{
        return listOfCharacters[index]
    }
    
    var arraySize: Int{
        return listOfCharacters.count
    }
    
}
