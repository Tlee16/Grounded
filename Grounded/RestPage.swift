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
                    .foregroundColor(Color(red: 0.5607843137254902, green: 0.6823529411764706, blue: 0.5764705882352941))
                    .padding(.top)
                Spacer()
                VStack {
                    Image(systemName: "oval.fill")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 180, height: 180)
                        .foregroundColor(.blue)
                }
                
                Spacer()
                HStack(spacing:20) {
                    FeatureButtonsView(imageName: "circle.fill")
                    FeatureButtonsView(imageName: "circle.fill")
                    FeatureButtonsView(imageName: "circle.fill")
                    FeatureButtonsView(imageName: "circle.fill")
                    
                    
                }
                Spacer()
                
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

