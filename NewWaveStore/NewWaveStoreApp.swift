//
//  NewWaveStoreApp.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 11/18/22.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main

struct NewWaveStoreApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @StateObject var viewRouter: ViewRouter = ViewRouter()
    @StateObject var user : User = User()
    @StateObject var productList : ProductList = ProductList()
    @StateObject var cart : Cart = Cart()
    
    var body: some Scene {
        WindowGroup {
            MotherView()
                .environmentObject(viewRouter)
                .environmentObject(user)
                .environmentObject(productList)
                .environmentObject(cart)
        }
    }
}
