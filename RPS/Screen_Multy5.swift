//
//  Screen_Multy5.swift
//  RPS
//
//  Created by Yerkebulan Sharipov on 23.12.2021.
//

import SwiftUI

struct Screen_Multy5: View {
    var choice: String
        var choice2: String
        var player1 = 0
        var player2 = 0
    
    var body: some View {
        VStack{
            scoreResultMulty(choice: self.choice, choice2: self.choice2)
            
            Text("Score \(player1):\(player2)")
                .foregroundColor(Color.purple)
                .font(.system(size: 17))
            
            ZStack{
                HStack{
                    Button(action: {}) {
                        EmojiButton(emoji: "\(choice)")
                    }
                    Spacer()
                }
                HStack{
                    Spacer()
                    Button(action: {}){
                        EmojiButton(emoji: "\(choice2)")
                    } .padding(.top, 80)
                }
            }
            
            Spacer()
            NavigationLink(destination: Screen_Multy1(),
                           label: {
                ZStack{
                    Text("Another round")
                    .frame(width:358, height: 50)
                    .foregroundColor(.white)
                    .background(Color(red: 103/255, green: 80/255, blue: 164/255, opacity: 1))
                    .cornerRadius(16)
                    
                }
            }) .padding(.bottom, 40)
        }
        .padding(.top, 80)
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle(" ")
    
    }
}


struct  scoreResultMulty : View{
  var choice : String
  var choice2 : String




  var body: some View {
      if choice == "🗿" && choice2 == "🗿"  {
          Text ("Tie")
              .gradientForeground(colors: [.yellow, .red])
              .font(.system(size: 54, weight: .regular))
               .multilineTextAlignment(.center)



      } else if choice == "🗿" && choice2 == "📄" {
          Text ("Lose")
              .gradientForeground(colors: [.pink, .red])
              .font(.system(size: 54, weight: .regular))
               .multilineTextAlignment(.center)
          



      } else if choice == "🗿" && choice2 == "✂️"{
          Text ("Win")
              .gradientForeground(colors: [.yellow, .green])
              .font(.system(size: 54, weight: .regular))
               .multilineTextAlignment(.center)
    

      } else if choice == "📄" && choice2 == "🗿"{
          Text("Win")
              .gradientForeground(colors: [.yellow, .green])
              .font(.system(size: 54, weight: .regular))
               .multilineTextAlignment(.center)


      } else if choice == "📄" && choice2 == "📄" {
        
          Text ("Tie")
              .gradientForeground(colors: [.yellow, .red])
              .font(.system(size: 54, weight: .regular))
               .multilineTextAlignment(.center)

      }else if choice == "📄" && choice2 ==  "✂️" {
          Text ("Lose")
              .gradientForeground(colors: [.pink, .red])
              .font(.system(size: 54, weight: .regular))
               .multilineTextAlignment(.center)
    
          
      } else if choice == "✂️" && choice2 ==  "🗿"{
          Text ("Lose")
              .gradientForeground(colors: [.pink, .red])
              .font(.system(size: 54, weight: .regular))
               .multilineTextAlignment(.center)
            
      }else if choice == "✂️" && choice2 ==  "📄" {
          Text ("Win")
              .gradientForeground(colors: [.yellow, .green])
              .font(.system(size: 54, weight: .regular))
               .multilineTextAlignment(.center)
        

      }else if choice == "✂️" && choice2 ==  "✂️" {
          Text ("Tie")
              .gradientForeground(colors: [.yellow, .red])
              .font(.system(size: 54, weight: .regular))
               .multilineTextAlignment(.center)
      }
  }

 }


struct Screen_Multy5_Previews: PreviewProvider {
    static var previews: some View {
        Screen_Multy5(choice: " ", choice2: " ")
    }
}
