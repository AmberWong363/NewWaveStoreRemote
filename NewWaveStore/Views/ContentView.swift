//
//  ContentView.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 11/18/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var productList : ProductList
    //    @State var product : Product = Product("New Wave PC", description: "A PC made by NewWave", picture: "NW-PC", quantity: 0, price: 0.0)
    
    var body: some View {
        ZStack {
            HomeView()
        }
    }
}
