//
//  Screen_Multy3.swift
//  RPS
//
//  Created by Yerkebulan Sharipov on 23.12.2021.
//

import SwiftUI

struct Screen_Multy3: View {
    var choice: String
    var choice2: String
    
    var body: some View {
        VStack(spacing: 0){
            Text("Pass the \nphone to your \nopponent")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.top, 100)
           
            Spacer()
            
            NavigationLink(destination: Screen_Multy4(choice: self.choice, choice2: self.choice2),
                           label: {
                ZStack{
                    
                    Text("Ready to continue")
                        .frame(width:358, height: 50)
                        .foregroundColor(.white)
                        .background(Color(red: 103/255, green: 80/255, blue: 164/255, opacity: 1))
                        .cornerRadius(16)
                    
                }
            } ) .padding(.bottom, 40)
        }
        
        
    
    }
}

struct Screen_Multy3_Previews: PreviewProvider {
    static var previews: some View {
        Screen_Multy3(choice: " ", choice2: " ")
    }
}
