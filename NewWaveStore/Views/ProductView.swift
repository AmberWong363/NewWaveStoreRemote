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
                .cornerRadius(20)

            HStack(alignment: .top) {
                Image("\(product.picture)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .frame(width: 100, height: 120, alignment: .leading)
                VStack(alignment: .leading) {
                    Text("\(product.name)")
                        .font(Constants.textFont)
                        .padding(.vertical, 3.0)
                        .foregroundColor(Color.black)
                    Text(String(format: "$%.2f", product.price))
                        .font(Constants.buttonFont)
                        .padding(.vertical, 3.0)
                        .foregroundColor(Color.black)
                }
                Spacer()
                
            }
            
        }
        .frame(width: 250, height: 120)
    }
}

//struct ProductView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductView()
//    }
//}
