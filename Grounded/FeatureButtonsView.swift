//
//  FeaturedButtonsView.swift
//  Grounded
//
//  Created by Zoe Cutler on 2/8/22.
//

import SwiftUI

struct FeatureButtonsView: View {
    var imageName: String
        
        var body: some View {
            VStack {
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .frame(width:70, height: 70)
                    .foregroundColor(.blue)
            }
        }
}

struct FeatureButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureButtonsView(imageName: "circle")
    }
}
