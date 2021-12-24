//
//  Screen_2.swift
//  RPS
//
//  Created by Yerkebulan Sharipov on 17.12.2021.
//

import SwiftUI

struct Screen_2: View {
    var YourScore = 0
    var EnemyScore = 0

   

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
              //  .padding(.top, 10)
            
            Text ("Score \(YourScore) : \(EnemyScore)")
                .foregroundColor(Color.purple)
               // .padding(.top,12)
            
            
        } .padding(.bottom, 550)
            
            VStack(spacing: 24){
                
                NavigationLink(destination: Screen_3(choice: "📄")) {
                    RPSButton(emoji: "📄")
                       }
                
                NavigationLink(destination: Screen_3(choice: "🗿")) {
                    RPSButton(emoji: "🗿")
                       }
                NavigationLink(destination: Screen_3(choice: "✂️")) {
                    RPSButton(emoji: "✂️")
                       }
            } .padding(.top, 122)
           
                      
    
        
    }
}
}

struct RPSButton: View {
    let emoji : String
    var body : some View{
        ZStack{
            RoundedRectangle(cornerRadius: 48)
                .fill(Color(red: 243/255, green: 242/255, blue: 248/255))
                           // .cornerRadius(48)
                            .frame(width: 342, height: 128)
                        Text(emoji)
                            .font(.system(size: 80))
        }
        .padding(.horizontal, 24)
    }

}



struct Screen_2_Previews: PreviewProvider {
    static var previews: some View {
        Screen_2()
    }
}
