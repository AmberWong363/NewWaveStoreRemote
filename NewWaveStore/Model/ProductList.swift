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
 
 All hail the great and Supreme Herrscher of Sentience!
 */
class ProductList {
    var list : [Product]
    
    init(_ list : [Product] = [Product(), Product(), Product(), Product()]) {
        self.list = list
    }
}
