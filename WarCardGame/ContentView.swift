//
//  ContentView.swift
//  WarCardGame
//
//  Created by Dave McCollough on 9/5/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var computerCard = "card3"
    @State var playerScore = 0
    @State var computerScore = 0
    
    
    
    
    
    
    
    var body: some View {
        ZStack {
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()

            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(computerCard)
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
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("Computer")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(computerScore))
                            .font(.largeTitle)

                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func dealCards() {
        // Randomize player card
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        // Randomize computer card
        let computerCardValue = Int.random(in: 2...14)
        computerCard = "card" + String(computerCardValue)
        // update score
        if playerCardValue > computerCardValue {
            // Add 1 to player score
            playerScore += 1
        } else if computerCardValue > playerCardValue {
            computerScore += 1
        }
    }
}

#Preview {
    ContentView()
}
