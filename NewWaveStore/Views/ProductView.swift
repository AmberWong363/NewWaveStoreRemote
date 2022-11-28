//
//  ProductView.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 11/21/22.
//

import SwiftUI

struct ProductView: View {
    
    @Binding var product: Product
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 250, height: 120)
                .foregroundColor(Color.gray)
            
            HStack {
                Image("\(product.picture)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                VStack(alignment: .leading) {
                    Text("\(product.name)")
                        .padding(.vertical, 3.0)
                        .foregroundColor(Color.black)
                    Text(String(format: "$%.2f", product.price))
                        .padding(.vertical, 3.0)
                        .foregroundColor(Color.black)
                }
                .padding()
                .frame(width: 120, height: 120)
            }
            
        }
    }
}

//struct ProductView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductView()
//    }
//}
