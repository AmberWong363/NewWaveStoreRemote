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
                .frame(width: 200, height: 100)
                .foregroundColor(Color.gray)
            
            HStack {
                Image("\(product.picture)")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                VStack(alignment: .leading) {
                    Text("\(product.name)")
                        .padding(3)
                        .foregroundColor(Color.black)
                    Text("\(product.price)")
                        .padding(3)
                        .foregroundColor(Color.black)
                    Spacer()
                }
                Spacer()
                .padding()
            }
            
        }
    }
}

//struct ProductView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductView()
//    }
//}
