//
//  Coffe_Ordering_AppApp.swift
//  Coffe Ordering App
//
//  Created by Mahbubur Rashid Leon on 20/5/22.
//

import SwiftUI

@main
struct Coffe_Ordering_AppApp: App {
    init() {
        UINavigationBar.appearance().backgroundColor = .systemGreen
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor.white]
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
