//
//  Screen_3.swift
//  RPS
//
//  Created by Yerkebulan Sharipov on 17.12.2021.
//

import SwiftUI

struct Screen_3: View {
    @State var EnemyChoice = false
    var YourScore = 0
    var EnemyScore = 0
    var choice : String
    
    var body: some View {
        VStack(spacing: 0){
            
            
            Text("Your pick is")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
                .padding(.top, 160)
            Text ("Score \(YourScore) : \(EnemyScore)")
                .foregroundColor(Color.purple)
                .padding(.top, 18)
                
            
            VStack(spacing: 24){
                
                NavigationLink(destination: Screen_4(choice: self.choice)) {
                    RPSButton(emoji: "\(choice)")
                        .transition(.slide)
                        .padding(.top, 124)
                }
            }
            .padding(.top, 74)
            Spacer()
            
            NavigationLink(destination: Screen_2(),
                           label: {
                ZStack{
                    Text("I changed my mind")
                        .frame(width:358, height: 50)
                        .foregroundColor(.white)
                        .background(Color(red: 103/255, green: 80/255, blue: 164/255, opacity: 1))
                        .cornerRadius(16)
                    
                }
                
            }) .padding(.bottom, 40)
              
            
            
            
        }.padding(.horizontal)
            .edgesIgnoringSafeArea(.all)
        
    }
}

struct Screen_3_Previews: PreviewProvider {
    static var previews: some View {
        Screen_3 (choice : " ")
    }
}
