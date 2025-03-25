//
//  ThreeDButton.swift
//  SwiftTutorial
//
//  Created by Elexoft on 25/03/2025.
//

import SwiftUI

struct ThreeDButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        
    }
}

#Preview {
    Button("Button") {
        
    }
    .frame(width: 100, height: 30, alignment: .center)
    .buttonStyle(ThreeDButton())
}
