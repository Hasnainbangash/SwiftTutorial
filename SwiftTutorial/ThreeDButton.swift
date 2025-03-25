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
            
            let offset: CGFloat = 5
            
            RoundedRectangle(cornerRadius: 6)
                .foregroundColor(.black)
                .offset(y: offset)
            
            RoundedRectangle(cornerRadius: 6)
                .foregroundColor(.gray)
                .offset(y: configuration.isPressed ? offset : 0)
            
            configuration.label
                .offset(y: configuration.isPressed ? offset : 0)
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
