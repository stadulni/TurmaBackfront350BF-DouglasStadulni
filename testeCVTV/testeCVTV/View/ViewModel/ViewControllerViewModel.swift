//
//  ViewControllerViewModel.swift
//  testeCVTV
//
//  Created by Douglas Stadulni on 03/05/23.
//

import Foundation

class ViewControllerViewModel {
    
   private var listOfSeries: [Series] = [Series(imageSeries: "dm"),
                                         Series(imageSeries: "gx"),
                                         Series(imageSeries: "5ds"),
                                         Series(imageSeries: "arcv"),
                                         Series(imageSeries: "vrains")]
    
    func getSeries(index: Int) -> Series {
        return listOfSeries[index]
    }
    
    var arraySize: Int {
        return listOfSeries.count
    }
    
}
