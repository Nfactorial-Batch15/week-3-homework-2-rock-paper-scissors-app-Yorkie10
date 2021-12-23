//
//  Screen_5.swift
//  RPS
//
//  Created by Yerkebulan Sharipov on 19.12.2021.
//

import SwiftUI

struct Screen_5: View {
     
    @State var showScreen_6 : Bool
    var choice: String
    var EnemyChoice = Int.random(in: 0...2)

    var body: some View {
        VStack(spacing: 0){
            NavigationLink(isActive: $showScreen_6) {
                Screen_6(choice: self.choice , EnemyChoice: self.EnemyChoice)
            } label: {
                EmptyView()
            }
            Text("Your opponent's pick")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 20)
                .multilineTextAlignment(.center)

            VStack(spacing: 24){
                switch EnemyChoice {
                case 0 :
                    Button(action : {}) {
                        RPSButton(emoji: "🗿")
                    }
                case 1 :
                    Button(action: {}) {
                        RPSButton(emoji : "📄")
                    }
                default:
                    Button(action: {}){
                        RPSButton(emoji: "✂️")
                    }
                }
                }
            .padding(.top, 124)
                       .onAppear{
                           DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                               showScreen_6 = true
                           }
                       }
            Spacer()
            
      
        }
        

    }
}

struct Screen_5_Previews: PreviewProvider {
    static var previews: some View {
        Screen_5(showScreen_6 : false ,choice : " ")
    }
}
