//
//  Screen_1.swift
//  RPS
//
//  Created by Yerkebulan Sharipov on 17.12.2021.
//

import SwiftUI

struct Screen_1: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("BackgroundImage")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Text("Welcome to the game")
                      //  .frame(width: 358, height: 124)
                        .foregroundColor(Color.white)
                        .font(.system(size: 54))
                        .multilineTextAlignment(.center)
                   
                        .padding(.top, 122)
                    Spacer()
                
                    NavigationLink(destination: Screen_2(), label:{
                
                    Text("Single player")
                        .frame(width:358, height: 50)
                        .foregroundColor(.white)
                        .background(Color(red: 103/255, green: 80/255, blue: 164/255, opacity: 1))
                        .cornerRadius(16)
                        
                    
                    
                    })
                    NavigationLink(destination: Screen_Multy1(), label: {
                       
                        Text("Multy player")
                            .frame(width:358, height: 50)
                            .foregroundColor(.white)
                            .background(Color(red: 103/255, green: 80/255, blue: 164/255, opacity: 1))
                            .cornerRadius(16)
                            
                        
                    
                    }) .padding(.top , 10)
                        .padding(.bottom, 10)
                 }
                
                
            }
        }
   
    }
}

struct Screen_1_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Screen_1()
          
        }
    }
}
