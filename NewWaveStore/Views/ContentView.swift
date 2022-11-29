//
//  ContentView.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 11/18/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var productList : ProductList
    @State var viewState : ViewState = .list
    @State var index : Int = 0
    
    var body: some View {
        if viewState == .list {
            HomeView(viewState: $viewState, index: $index)
        } else {
            ProductDetailView(product: $productList.list[index], viewState: $viewState)
        }
    }
}
