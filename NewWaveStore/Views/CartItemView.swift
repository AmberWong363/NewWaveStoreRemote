//
//  CartItemView.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 12/1/22.
//

import SwiftUI

struct CartItemView: View {
    
    /*
     This is the product that will be passed when you call this view
     
     It can be any name, just of type Product
     
     This is used in the next values in the view
    */
    @Binding var product : Product
    
    var body: some View {
        ZStack {
            /*
             Rectangle for the background, put in a ZStack so everything is on top
             */
            Rectangle()
                .frame(width: 250, height: 120)
                .foregroundColor(Color.gray)
                .cornerRadius(5)
            
            // This is where all of the items go, pictures and name and quantity
            HStack(alignment: .top) {
                Image("\(product.picture)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.vertical)
                    .frame(width: 100, height: 120, alignment: .leading)
                // Name and quantity here
                VStack(alignment: .leading) {
                    Text("\(product.name)")
                        .font(Constants.buttonFont)
                        .padding(.vertical, 3.0)
                        .foregroundColor(Color.black)
                    Text("Quantity: \(product.quantity)")
                        .font(Constants.buttonFont)
                        .foregroundColor(Color.black)
                }
                /*
                 This is for formatting the price.
                 '%' is an operator that starts string format.
                 
                 ".2" is how many decimal places ('.' means decimal, '2' means the number of places
                 
                 'f' means float, it just means that's the format of the number
                 
                 anything previous will be a part of the output, so the '$' will appear in front
                 
                 Then I'm multiplying by the quantity and price to get total price
                 */
                Text(String(format: "$%.2f", (product.price * Double(product.quantity))))
                    .font(Constants.buttonFont)
                    .foregroundColor(Color.highlight)
                // This is to align with the left side
                Spacer()
                
            }
            
        }
        /*
         This frame is just to make sure everything fits within the rectangle, this is an alterable value.
         
         All values changed here should be changed at line 19 with the rectangle as well
         */
        .frame(width: 250, height: 120)
    }
}
