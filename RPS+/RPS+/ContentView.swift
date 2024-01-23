//
//  ContentView.swift
//  RPS+
//
//  Created by Elias Breitenbach on 21.01.24.
//

import SwiftUI


struct ContentView: View {
    
    @State private var rockWins: Bool = false
    @State private var score: Int = 0
    @State private var rock: String = "🤜🏽"
    @State private var paper: String = "✋🏽"
    @State private var scissors: String = "✌🏽"
    @State private var myChoise: Array = ["🤜🏽", "✋🏽", "✌🏽"]
    
    
    var rockWin: Bool {
        if rock > scissors {
            rockWins = true
        }
        return rockWins
    }
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.3, green: 0.8, blue: 0.9), location: 0.6),
                .init(color: Color(red: 0.3, green: 0.9, blue: 0.9), location: 0.8),
            ], center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            VStack {
                Text("RPS+")
                    .font(.title2)
                    .padding()
                Text("If I choose:")
                    .font(.title3)
                    
                Text("\(myChoise[.random(in: 0..<2)])")
                    .font(.largeTitle)
                    .frame(width: 150, height: 100)
                    .background(.regularMaterial)
                    .cornerRadius(10.0)
                    .padding()
                    .padding(.bottom)
                
                Text("Which one would LOSE?")
                    .font(.title3)
                Spacer()
                    VStack {
                        Button(action: {
                            rockWins = true
                        }, label: {
                            Text(rock)
                        })
                            .font(.largeTitle)
                            .frame(width: 150, height: 100)
                            .background(.regularMaterial)
                            .cornerRadius(10.0)
                            .padding()
                        
                        Button(action: {
                            rockWins = true
                        }, label: {
                            Text(paper)
                        })
                            .font(.largeTitle)
                            .frame(width: 150, height: 100)
                            .background(.regularMaterial)
                            .cornerRadius(10.0)
                            .padding()
                        
                        Button(action: {
                            game()
                            rockWins = true
                        }, label: {
                            Text(scissors)
                        })
                            .font(.largeTitle)
                            .frame(width: 150, height: 100)
                            .background(.regularMaterial)
                            .cornerRadius(10.0)
                            .padding()
                           
                        Text("Score: \(score)")
                            .font(.title3)
                            .foregroundColor(Color.black)
                    }
                }
                Spacer()
            }
        }
    func game() {
        if rockWins == true {
            score += 1
        }
    }
}






#Preview {
    ContentView()
}
