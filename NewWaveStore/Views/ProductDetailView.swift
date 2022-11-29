//
//  ProductDetailView.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 11/28/22.
//

import SwiftUI

struct ProductDetailView: View {
    
    @Binding var product : Product
    @Binding var viewState : ViewState
    
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
            
            Text("Quantity left: \(product.quantity)")
                .padding(.horizontal)
                .font(Constants.textFont)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            Button {
                //
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
