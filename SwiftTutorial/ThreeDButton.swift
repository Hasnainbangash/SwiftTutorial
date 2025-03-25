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
                .foregroundColor(Color(red: 62/255, green: 87/255, blue: 178/255))
                .offset(y: offset)
            
            RoundedRectangle(cornerRadius: 6)
                .foregroundColor(Color(red: 123/255, green: 152/255, blue: 255/255))
                .offset(y: configuration.isPressed ? offset : 0)
            
            configuration.label
                .offset(y: configuration.isPressed ? offset : 0)
        } //: ZSTACK
        // It groups multiple layers into a single rendered entity before applying effects like shadows or opacity
        .compositingGroup()
        .shadow(radius: 6, y: 4)
    }
}

#Preview {
    Button("Button") {
        
    }
    .foregroundColor(.white)
    .frame(width: 100, height: 100, alignment: .center)
    .buttonStyle(ThreeDButton())
}
