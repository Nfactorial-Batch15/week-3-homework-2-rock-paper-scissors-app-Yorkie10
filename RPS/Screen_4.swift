//
//  Screen_4.swift
//  RPS
//
//  Created by Yerkebulan Sharipov on 19.12.2021.
//

import SwiftUI

struct Screen_4: View {
   
    var choice: String
   

    
    @State var ShowEnemyChoice : Bool  = false
    
    @State var isLoading: Bool = false
    
    

    
    var body: some View {
        ZStack{
            NavigationLink(isActive: $ShowEnemyChoice){
                Screen_5(showScreen_6: false, choice: self.choice)
            } label: {
                EmptyView()
            }
            VStack(spacing: 24){
            if isLoading{
                Text("Your \nopponent is \nthinking")
                    .font(.system(size: 54))
                    .fontWeight(.bold)
                 //.frame(width: 358, height: 186)
                    //.frame(maxWidth: .infinity)
                 
                    .padding(.bottom, 440)
                    .multilineTextAlignment(.center)
                   // .minimumScaleFactor(0.1)
                
            }
            }
                ZStack{
                        RoundedRectangle(cornerRadius: 48)
                            .fill(Color(red: 243/255, green: 242/255, blue: 248/255))
                                     
                                        .frame(width: 342, height: 128)
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .gray))
                    .scaleEffect(3)
             
                } .padding(.top, 124)
               
            }
           
           
        
        
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                           ShowEnemyChoice = true
                       }
        }
      
        
        .onAppear{startFakeLoading()
                
            
            
            
        }
    


       
    }
    
    func startFakeLoading(){
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            isLoading = false
            
         
        }
    }
    
    
}






struct Screen_4_Previews: PreviewProvider {
    static var previews: some View {
        Screen_4(choice : " ")
    }
}
