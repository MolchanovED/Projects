//
//  WeatherPointApp.swift
//  WeatherPoint
//
//  Created by EgorM on 25.11.2021.
//

import SwiftUI
import Firebase

@main
struct WeatherPointApp: App {
    init(){
        FirebaseApp.configure()
    }

    
    
    var body: some Scene {
        WindowGroup {
            let viewModel = AppViewModel()
            ContentView()
                .environmentObject(viewModel)
        }
    }
}





