//
//  NewWaveStoreApp.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 11/18/22.
//

import SwiftUI

@main
struct NewWaveStoreApp: App {
    
    @StateObject var productList : ProductList = ProductList()
    @StateObject var cart : Cart = Cart()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(productList)
                .environmentObject(cart)
        }
    }
}
