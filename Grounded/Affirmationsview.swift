//
//  Affirmationsview.swift
//  Grounded
//
//  Created by Tiffany Levy on 2/8/22.
//

import SwiftUI

struct Affirmationsview: View {
    var body: some View {
        ZStack {
            Color("royalBlue").edgesIgnoringSafeArea(.all)
            
            
                
            VStack {
                Spacer()
                
                Button(action: {
                    print("I am calm button pressed")
                }) {
                    Text ("I AM CALM")
                        .frame(minWidth: 0, maxWidth: .infinity)
                    .font(.system(size: 18))
                    .padding()
                    .foregroundColor(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.white, lineWidth: 2))
                }
                
                Button(action: {
                    print("sign up bin tapped")
                }) {
                    
                    Text("I AM RELAXED")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .font(.system(size: 18))
                        .padding()
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.white, lineWidth: 2)
                        )
                }
                
                
            
                
                Button(action: {
                    print("sign up bin tapped")
                }) {
                    Text("I AM LOVED")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .font(.system(size: 18))
                        .padding()
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.white, lineWidth: 2)
                        )
                }
                Button(action: {
                    print("sign up bin tapped")
                }) {
                    Text("I HAVE HARMONY WITHIN")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .font(.system(size: 18))
                        .padding()
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.white, lineWidth: 2)
                        )
                }
                Spacer ()
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
            }
            
            
            
            
            
            
            
            
        }
    }
}






struct Affirmationsview_Previews: PreviewProvider {
    static var previews: some View {
        Affirmationsview()
    }
}

