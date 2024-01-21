//
//  ContentView.swift
//  RPS+
//
//  Created by Elias Breitenbach on 21.01.24.
//

import SwiftUI


struct ContentView: View {
    
    @State private var rock: String = "🤜🏽"
    @State private var paper: String = "✋🏽"
    @State private var scissors: String = "✌🏽"
    
    var body: some View {
        VStack {
            Text(rock)
        }
    }
}



#Preview {
    ContentView()
}
