//
//  HomeView.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 11/23/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var productList : ProductList
    @EnvironmentObject var cart : Cart
    @Binding var viewState : ViewState
    @Binding var index : Int
    
    var body: some View {
        
        TabView {
            VStack {
                ScrollView {
                    ForEach($productList.list.indices, id: \.self) { index in
                        ProductView(product: $productList.list[index])
                            .onTapGesture {
                                viewState = .detail
                                self.index = index
                            }
                    }
                }
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            
            CartView()
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
            
        }
        
        
    }
}
