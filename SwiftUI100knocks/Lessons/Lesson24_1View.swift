//
//  Lesson24_1View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/06/16.
//

// ViewModifierを使ってViewに影をつけてください。

import SwiftUI

struct Lesson24_1View: ViewModifier {
    let color: Color
    let radius: CGFloat

    func body(content: Content) -> some View {
        content
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: color.opacity(0.4), radius: radius, x: 4, y: 4)
            .padding(radius + 8)
    }
}

extension View {
    func card(color: Color = Color.gray, radius: CGFloat = 8) -> some View {
        self.modifier(Lesson24_1View(color: color, radius: radius))
    }
}

struct Lesson24_1_Previews: PreviewProvider {
    static var previews: some View {
        Text("Pyramid")
            .card()
            .previewLayout(.sizeThatFits)
    }
}
