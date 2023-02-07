//
//  MotherView.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 2/2/23.
//

import SwiftUI

struct MotherView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var cart: Cart
    @EnvironmentObject var productList: ProductList
    @EnvironmentObject var user : User
    
    var body: some View {
        if (viewRouter.currentPage == .page1 && !user.loggedIn) {
            SignUpView()
        } else if (viewRouter.currentPage == .page2 && !user.loggedIn) {
            SignInView()
        } else if (user.loggedIn) {
            ContentView()
        }
    }
}
