//
//  ViewRouter.swift
//  NewWaveStore
//
//  Created by Amber Wong (student LM) on 2/2/23.
//

import Foundation

class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .page2
}

enum Page {
    case page1
    case page2
    case page3
}
