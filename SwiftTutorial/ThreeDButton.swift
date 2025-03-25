//
//  ThreeDButton.swift
//  SwiftTutorial
//
//  Created by Elexoft on 25/03/2025.
//

import SwiftUI

struct ThreeDButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 6)
                .foregroundColor(.black)
                .offset(y: 5)
            
            RoundedRectangle(cornerRadius: 6)
                .foregroundColor(.gray)
            
            configuration.label
        } //: ZSTACK
    }
}

#Preview {
    Button("Button") {
        
    }
    .foregroundColor(.white)
    .frame(width: 100, height: 30, alignment: .center)
    .buttonStyle(ThreeDButton())
}
