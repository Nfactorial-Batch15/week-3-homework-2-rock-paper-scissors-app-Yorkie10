//
//  Screen_Multy1.swift
//  RPS
//
//  Created by Yerkebulan Sharipov on 17.12.2021.
//

import SwiftUI

struct Screen_Multy1: View {
    var Palyer1 = 0
    var Player2 = 0
    var body: some View {
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0){
                Text("Take your pick")

                    .font(.system(size: 54))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.center)
      
                
                Text ("Player 1 • Score \(Palyer1):\(Player2)")
                    .foregroundColor(Color.purple)
        
                
                
            } .padding(.bottom, 550)
            
            VStack(spacing: 24){
                
                NavigationLink(destination: Screen_Multy2(choice: "📄")) {
                    RPSButton(emoji: "📄")
                       }
                
                NavigationLink(destination: Screen_Multy2(choice: "🗿")) {
                    RPSButton(emoji: "🗿")
                       }
                NavigationLink(destination: Screen_Multy2(choice: "✂️")) {
                    RPSButton(emoji: "✂️")
                       }
            } .padding(.top, 122)
    }
}
}

struct Screen_Multy1_Previews: PreviewProvider {
    static var previews: some View {
        Screen_Multy1()
    }
}
