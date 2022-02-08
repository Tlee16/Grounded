//
//  FirstPage.swift
//  Grounded
//
//  Created by Zoe Cutler on 2/8/22.
//

import SwiftUI

struct FirstPage: View {
    var body: some View {
            
            
            ZStack {
                Color("royalBlue")
                .edgesIgnoringSafeArea(.all)
                
                Image ("Logo")
                
                
                VStack {
                    
                    Spacer()
                    
                    Text("GROUNDED")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    .padding()
               
                    Spacer()
                    
                    Spacer()
                
                    
                }

            }
            
            
        
              
        }
}

struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
