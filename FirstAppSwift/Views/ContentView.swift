//
//  ContentView.swift
//  FirstAppSwift
//
//  Created by Shreyash Dewangan on 13/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
