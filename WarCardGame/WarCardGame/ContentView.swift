//
//  ContentView.swift
//  WarCardGame
//
//  Created by Dave McCollough on 9/25/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
    
                HStack{ Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    dealCards()
                } label: {
                    Image("button")
                }
                
            
                Spacer()
        
                HStack {
                    Spacer()
                    VStack{
                        Text("Player 1")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                 
                }
                .foregroundStyle(.white)
                Spacer()
                VStack {
                    Button {
                        clearCards()
                    } label: {
                        Text("Clear")
                    }
                }
                .foregroundStyle(.white)
                Spacer()
            }
            
            
        }
    }
    
     func dealCards() {
        // Randomize player card
         var playerCardValue = Int.random(in: 2...14)
         var cpuCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        // Randomize cpu card
         cpuCard = "card" + String(cpuCardValue)
        // update score
         if playerCardValue > cpuCardValue {
             // Add one to player score
             playerScore += 1
         } else if playerCardValue < cpuCardValue {
             // Add one to CPU score
             cpuScore += 1
         }
    }
    
    func clearCards() {
        playerCard = "back"
        cpuCard = "back"
        playerScore = 0
        cpuScore = 0
    }
}



#Preview {
    ContentView()
}
