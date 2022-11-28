//
//  HomeView.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 11/23/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var productList : ProductList
    
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    ForEach($productList.list.indices) { index in
                        ProductView(product: $productList.list[index])
                    }
                }.navigationTitle("Products")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
