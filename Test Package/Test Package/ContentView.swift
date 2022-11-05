//
//  ContentView.swift
//  Test Package
//
//  Created by Jeremie Berduck on 05/11/2022.
//

import SwiftUI
import ByMe

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
