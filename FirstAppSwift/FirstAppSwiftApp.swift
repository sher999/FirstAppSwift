//
//  FirstAppSwiftApp.swift
//  FirstAppSwift
//
//  Created by Shreyash Dewangan on 13/05/24.
//

import SwiftUI

@main
struct FirstAppSwiftApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
