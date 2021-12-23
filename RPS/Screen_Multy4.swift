//
//  Screen_Multy4.swift
//  RPS
//
//  Created by Yerkebulan Sharipov on 23.12.2021.
//

import SwiftUI

struct Screen_Multy4: View {
    var choice: String
    var choice2: String
    var Player1 = 0
    var Player2 = 0
    
    var body: some View {
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Take your pick")
                
                    .font(.system(size: 54))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                
                Text("Player 2 • Score \(Player1):\(Player2)")
                    .foregroundColor(Color.purple)
            } .padding(.bottom, 550)
            
            VStack(spacing: 24){
                
                NavigationLink(destination: Screen_Multy5(choice: self.choice, choice2: "📄")) {
                    RPSButton(emoji: "📄")
                       }
                
                NavigationLink(destination: Screen_Multy5(choice: self.choice, choice2: "🗿")) {
                    RPSButton(emoji: "🗿")
                       }
                NavigationLink(destination: Screen_Multy5(choice: self.choice, choice2: "✂️")) {
                    RPSButton(emoji: "✂️")
                       }
            } .padding(.top, 122)
            
        }
    }
}

struct Screen_Multy4_Previews: PreviewProvider {
    static var previews: some View {
        Screen_Multy4(choice: " ", choice2: " ")
    }
}
