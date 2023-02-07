//
//  HomeView.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 11/23/22.
//

import SwiftUI
import FirebaseAuth

struct HomeView: View {
    
    @EnvironmentObject var viewRouter : ViewRouter
    @EnvironmentObject var productList : ProductList
    @EnvironmentObject var cart : Cart
    @EnvironmentObject var user : User
    @Binding var viewState : ViewState
    @Binding var index : Int
    
    var body: some View {
        
        TabView {
            VStack {
                Button {
                    try! Auth.auth().signOut()
                    
                    user.username = ""
                    user.password = ""
                    user.loggedIn = false
                    
                    viewRouter.currentPage = .page2
                } label: {
                    Text("Sign Out")
                        .padding()
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(10)
                }

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
