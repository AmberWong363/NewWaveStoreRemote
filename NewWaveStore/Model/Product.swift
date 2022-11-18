//
//  Product.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 11/18/22.
//

import Foundation

/*
 Class Product, used for well, products
 has a name, description, and a picture. No one cares about price or quantity since there aren't being sold anyway
 
 Take an L, New Wave Store! hahaha!
 
 Yatta!
 All hail the great and divine Herrscher of Sentience!
 */
class Product : ObservableObject {
    @Published var name : String
    @Published var description : String
    @Published var picture : String
    @Published var quantity : Int
    @Published var price : Double
    
    init (_ name : String = "", description : String = "", picture : String = "", quantity : Int = 0, price : Double = 0.0) {
        self.name = name
        self.description = description
        self.picture = picture
        self.quantity = quantity
        self.price = price
    }
}
