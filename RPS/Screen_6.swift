//
//  Screen_6.swift
//  RPS
//
//  Created by Yerkebulan Sharipov on 23.12.2021.
//

import SwiftUI

struct Screen_6: View {
    var choice: String
    var EnemyChoice: Int
    var YourScore = 0
    var EnemyScore = 0

    var body: some View {
        VStack{
            scoreResult(choice: self.choice, EnemyChoice: self.EnemyChoice)
                .padding(.top, 50)
            
            Text ("Score \(YourScore) : \(EnemyScore)")
                         .foregroundColor(Color.purple)
                         .font(.system(size: 17))
                       
        
            ZStack{
                HStack{
                    Button (action: {}) {
                    EmojiButton(emoji: "\(choice)")
                    }
                    Spacer()
                }
                
                HStack{
                    Spacer()
                    switch EnemyChoice {
                    case 0 :
                    Button (action: {}){
                    EmojiButton(emoji: "🗿")
                    .padding()
                    } .padding(.top, 80)
                        
                    case 1 :
                    Button (action: {}){
                    EmojiButton(emoji: "📄")
                    .padding()
                    } .padding(.top, 80)
                    default :
                    Button (action: {}){
                    EmojiButton(emoji: "✂️")
                    .padding()
                  
                    } .padding(.top, 80)
                        
                    }
                }
                
            }
            Spacer()
            NavigationLink(destination: Screen_2(),
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

struct Screen_6_Previews: PreviewProvider {
    static var previews: some View {
        Screen_6(choice : " ", EnemyChoice: 0 )
    }
}

//

struct EmojiButton : View {
    let emoji : String
    var body : some View {

        ZStack{
            RoundedRectangle(cornerRadius: 48)
                .fill(Color(red: 243/255, green: 242/255, blue: 248/255))
                .frame(width: 198, height: 128)
                .overlay(
                    RoundedRectangle(cornerRadius: 48)
                        .stroke(Color.white, lineWidth : 10)

                )
            Text(emoji)
                .font(.system(size: 80))

        }
        .padding(.horizontal, 24)
        .padding(.top, 100)

    }
  }

//

  struct  scoreResult : View{
    var choice : String
    var EnemyChoice : Int




    var body: some View {
        if choice == "🗿" && EnemyChoice == 0 {
            Text ("Tie")
                .gradientForeground(colors: [.yellow, .red])
                .font(.system(size: 54, weight: .regular))
                 .multilineTextAlignment(.center)



        } else if choice == "🗿" && EnemyChoice == 1 {
            Text ("Lose")
                .gradientForeground(colors: [.pink, .red])
                .font(.system(size: 54, weight: .regular))
                 .multilineTextAlignment(.center)
            



        } else if choice == "🗿" && EnemyChoice == 2 {
            Text ("Win")
                .gradientForeground(colors: [.yellow, .green])
                .font(.system(size: 54, weight: .regular))
                 .multilineTextAlignment(.center)
      

        } else if choice == "📄" && EnemyChoice ==  0 {
            Text("Win")
                .gradientForeground(colors: [.yellow, .green])
                .font(.system(size: 54, weight: .regular))
                 .multilineTextAlignment(.center)


        } else if choice == "📄" && EnemyChoice ==  1 {
          
            Text ("Tie")
                .gradientForeground(colors: [.yellow, .red])
                .font(.system(size: 54, weight: .regular))
                 .multilineTextAlignment(.center)

        }else if choice == "📄" && EnemyChoice ==  2 {
            Text ("Lose")
                .gradientForeground(colors: [.pink, .red])
                .font(.system(size: 54, weight: .regular))
                 .multilineTextAlignment(.center)
      
            
        } else if choice == "✂️" && EnemyChoice ==  0 {
            Text ("Lose")
                .gradientForeground(colors: [.pink, .red])
                .font(.system(size: 54, weight: .regular))
                 .multilineTextAlignment(.center)
              
        }else if choice == "✂️" && EnemyChoice ==  1 {
            Text ("Win")
                .gradientForeground(colors: [.yellow, .green])
                .font(.system(size: 54, weight: .regular))
                 .multilineTextAlignment(.center)
          

        }else if choice == "✂️" && EnemyChoice ==  1 {
            Text ("Tie")
                .gradientForeground(colors: [.yellow, .red])
                .font(.system(size: 54, weight: .regular))
                 .multilineTextAlignment(.center)
        }
    }

   }

     extension View {

    public func gradientForeground( colors: [Color]) -> some View{
        self.overlay(LinearGradient(gradient: .init(colors: colors ), startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(self)

    }
   }

