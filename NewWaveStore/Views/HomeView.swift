//
//  HomeView.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 11/23/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var productList : ProductList
    @Binding var viewState : ViewState
    @Binding var index : Int
    
    var body: some View {
        ZStack { 
            ScrollView {
                ForEach($productList.list.indices) { index in
                    ProductView(product: $productList.list[index])
                        .onTapGesture {
                            viewState = .detail
                            self.index = index
                        }
                }
            }.navigationTitle("Products")
        }
        
    }
}
