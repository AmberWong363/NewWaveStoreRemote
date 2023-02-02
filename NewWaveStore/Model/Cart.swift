//
//  Cart.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 12/1/22.
//

import Foundation

class Cart : ObservableObject {
    
    @Published var products : ProductList
    /*
     Computed property, yatta!
     */
    var total : Double {
        var sum = 0.0
        
        for i in products.list {
            sum += i.price * Double(i.quantity)
        }
        
        return sum
    }
    
    func add(_ product : Product) {
        // Variable for it being in cart
        var isInCart = false
        
        /*
         Will make it true if in cart
         */
        if !products.list.isEmpty {
            for i in 0..<products.list.count {
                if product.name == products.list[i].name {
                    isInCart = true
                }
            }
        }
        
        // Variable for an index
        var index = 0
        // Checks the index of the item
        if isInCart {
            for i in 0..<products.list.count {
                if product.name == products.list[i].name {
                    index = i
                }
            }
            // Updates quantity of the item
            products.list[index].quantity += 1
        } else {
            /*
             Appends otherwise
             */
            products.list.append(Product(product.name, description: product.description, picture: product.picture, quantity: 1, price: product.price))
        }
    }
    
    @discardableResult func remove(_ index : Int) -> String {
        let s = products.list[index].name
        if products.list[index].quantity > 1 {
            products.list[index].quantity -= 1
        } else {
            products.list.remove(at: index)
        }
        return s
    }
    
    init(_ products : ProductList = ProductList([])) {
        self.products = products
    }
}
