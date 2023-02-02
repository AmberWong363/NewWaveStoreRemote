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
    
    func updateQuantity(_ name : String) {
        for i in 0..<list.count {
            if name == list[i].name {
                list[i].quantity += 1
            }
        }
    }
    
    init(_ list : [Product] = [Product("New Wave PC", description: "A PC made by NewWave", picture: "NW-PC", quantity: 100, price: 999.99), Product("wPhone", description: "A Phone made by NewWave", picture: "nwPhone", quantity: 100, price: 599.99), Product("wPen", description: "A Pen made by NewWave", picture: "wPen", quantity: 100, price: 10.99), Product("software", description: "software made by NewWave", picture: "software", quantity: 100, price: 59.99)]) {
        self.list = list
    }
}
