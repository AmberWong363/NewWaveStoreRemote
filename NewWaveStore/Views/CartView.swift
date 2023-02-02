//
//  CartView.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 12/1/22.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cart : Cart
    @EnvironmentObject var productList : ProductList
    @State var wasShown = false
    @State var priceShown : Double = 0.0
    
    var body: some View {
        VStack {
            ScrollView {
                if cart.products.list.count > 0 {
                    ForEach($cart.products.list.indices, id: \.self) { index in
                        CartItemView(product: $cart.products.list[index])
                            .onTapGesture {
                                productList.updateQuantity(cart.remove(index))
                                priceShown = cart.total
                                wasShown = true
                                
                            }
                    }
                } else {
                    Text("Add some items!")
                        .foregroundColor(Color.gray.opacity(0.7))
                        .padding()
                    Spacer()
                }
            }
            
            HStack {
                Text("Total: ")
                    .padding()
                    .foregroundColor(Color.black)
                Spacer()
                Text(String(format: "$%.2f", wasShown ? priceShown : cart.total))
                    .padding()
                    .foregroundColor(Color.black)
            }
        }
    }
}
