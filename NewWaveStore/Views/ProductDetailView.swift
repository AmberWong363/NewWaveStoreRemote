//
//  ProductDetailView.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 11/28/22.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var cart : Cart
    @Binding var product : Product
    @Binding var viewState : ViewState
    @State var quantityShown = 0
    @State var quantityChanged = false
    
    var body: some View {
        
        VStack {
            Button {
                viewState = .list
            } label: {
                Text("<< Back")
                    .padding(.horizontal)
                    .font(Constants.buttonFont)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color.highlight)
            }

            
            Image(product.picture)
                .resizable()
                .padding()
                .aspectRatio(contentMode: .fit)
            
            Text(product.name)
                .bold()
                .padding(.horizontal)
                .font(Constants.textFont)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(product.description)
                .padding(.horizontal)
                .font(Constants.textFont)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(String(format: "$%.2f", product.price))
                .padding(.horizontal)
                .font(Constants.textFont)
                .foregroundColor(Color.highlight)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Quantity left: \(quantityChanged ? quantityShown : product.quantity)")
                .padding(.horizontal)
                .font(Constants.textFont)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            Button {
                cart.add(product)
                product.quantity -= 1
                quantityChanged = true
                quantityShown = product.quantity
            } label: {
                Text("Add to cart")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .font(Constants.buttonFont)
                    .background(Color.highlight)
                    .cornerRadius(15)
            }
            .padding()
            
        }
    }
}

//struct ProductDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductDetailView(product: Binding.constant(Product()))
//    }
//}
