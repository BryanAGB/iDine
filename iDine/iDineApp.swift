//
//  iDineApp.swift
//  iDine
//
//  Created by Bryan Mansell on 04/10/2023.
//

import SwiftUI
@main
struct iDineApp: App {
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
