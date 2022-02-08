//
//  ContentView.swift
//  Grounded
//
//  Created by Justin Ridderbos on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            
            Divider()
                .padding(40.0)
            RoundedRectangle(cornerRadius: 30)
                .padding(.horizontal)
                .frame(width: 400, height: 150, alignment: .center)
            RoundedRectangle(cornerRadius: 30)
                .padding(.horizontal)
                .frame(width: 400, height: 150, alignment: .center)
            RoundedRectangle(cornerRadius: 30)
                .padding(.horizontal)
                .frame(width: 400, height: 150, alignment: .center)
            RoundedRectangle(cornerRadius: 30)
                .padding(.horizontal)
                .frame(width: 400, height: 150, alignment: .center)
            Spacer()
                .padding(4.0)
            HStack{
                Circle()
                    .frame(width: 80, height: 80, alignment: .center)
                Circle()
                    .frame(width: 80, height: 80, alignment: .center)
                Circle()
                    .frame(width: 80, height: 80, alignment: .center)
                Circle()
                    .frame(width: 80, height: 80, alignment: .center)
            }

        }
          
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
