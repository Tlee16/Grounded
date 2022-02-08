//
//  ContentView.swift
//  jb
//
//  Created by JB Davis on 2/5/22.
//

import SwiftUI

struct RestPage: View {
    
    @State var timeRemaining = 334
            
        let timer = Timer.publish(every: 1,
                                  on: .main,
                                  in:
                                        .common)
                                        .autoconnect()
            
        
            
            func convertSecondsTotime(timeInSeconds : Int) ->
            String {
                
                let minutes = timeInSeconds / 60
                
                let seconds = timeInSeconds % 60
                
                return String(format: "%02i:%02i",
                              minutes,
                              seconds)
                
            }
                var body: some View {
                   ZStack {
                        Color(.blue)
                            .edgesIgnoringSafeArea(.all)
                        VStack {
                    Text(convertSecondsTotime(timeInSeconds:timeRemaining))
                                .font(.system(size: 100))
                                .fontWeight(.black)
                                .foregroundColor(.white)
                                .padding(.top)
                            Spacer()
                           
                            VStack {
                          Text("Calming Music Playing")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .background(
                                    Circle()
                                        .fill(Color.blue)
                                        .opacity(4.2)
                                        .frame(width: 180, height: 180, alignment: .center)
                                    )
                                    .background(
                                    Circle()
                                        .fill(Color.blue)
                                        .opacity(0.4)
                                        .frame(width: 280, height: 280, alignment: .center))
                                    .background(
                                    Circle()
                                        .fill(Color.blue)
                                        .opacity(0.8)
                                        .frame(width: 340, height: 340, alignment: .center))
                                
                            }
                            
                            Spacer()
                            
                            HStack(spacing:20) {
                                FeatureButtonsView(imageName: "circle.fill").overlay(Image(systemName: "quote.bubble.fill")
                                    .renderingMode(.original)
                                                                                .resizable()
                                    .foregroundColor(.white))
                                    FeatureButtonsView(imageName: "circle.fill").overlay(Image(systemName: "music.note.list")
                                            .resizable()
                                            .foregroundColor( .white))
                                FeatureButtonsView(imageName: "circle.fill").overlay(Image(systemName: "brain.head.profile")
                                        .resizable()
                                    .foregroundColor(.white))
                                FeatureButtonsView(imageName: "circle.fill").overlay(Image(systemName: "pencil.and.outline")
                                            .resizable()
                                            .foregroundColor( .white))
                                    
                                
                                
                            }
                            
                            
                            
                            
                                   .onReceive(timer) { _ in
                            
                            timeRemaining -= 1
                             
                        }
                        }
                    }
            }
    
}




struct RestPage_Previews: PreviewProvider {
    static var previews: some View {
        RestPage()
    }
}

