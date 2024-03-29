//
//  Constants.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 11/21/22.
//

import Foundation
import SwiftUI
import UIKit

struct Constants {
    static let buttonFont : Font = Font(UIFont(name: "HelveticaNeue-Thin", size:16) ?? UIFont.systemFont(ofSize: 16))
    static let textFont : Font = Font(UIFont(name: "HelveticaNeue-Thin", size:20) ?? UIFont.systemFont(ofSize: 20))
}

extension Color {
    static let highlight = Color("Highlight")
}

enum ViewState {
    case list
    case detail
    case cart
}
