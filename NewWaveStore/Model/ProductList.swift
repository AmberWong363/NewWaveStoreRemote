//
//  ProductList.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 11/18/22.
//

import Foundation
import SwiftUI
/*
 This is a list? For products? How pathetic.
 You should just list all the reasons why I'm the greatest ever!
 
 All hail the great and divine Herrscher of Sentience!
 */
class ProductList : ObservableObject {
    var list : [Product]
    
    init(_ list : [Product] = [Product("New Wave PC", description: "A PC made by NewWave", picture: "NW-PC", quantity: 0, price: 0.0), Product("wPhone", description: "A Phone made by NewWave", picture: "nwPhone", quantity: 0, price: 0.0), Product("wPen", description: "A Pen made by NewWave", picture: "wPen", quantity: 0, price: 0.0), Product("software", description: "software made by NewWave", picture: "software", quantity: 0, price: 0.0)]) {
        self.list = list
    }
}
