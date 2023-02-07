//
//  User.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 2/6/23.
//

import Foundation
import FirebaseAuth

class User : ObservableObject {
    @Published var username : String
    @Published var password : String
    @Published var loggedIn : Bool = false
    
    init (username : String = "", password : String = "") {
        self.username = username
        self.password = password
        
        Auth.auth().addStateDidChangeListener{ _, user in
            guard let buffer = user else {return}
            
            self.loggedIn.toggle()
            self.username = buffer.email ?? ""
        }
    }
}
