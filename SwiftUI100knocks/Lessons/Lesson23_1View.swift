//
//  Lesson23_1View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/06/02.
//

// FunctionBuilderを使ってViewに影をつけてください。

import SwiftUI

struct Lesson23_1View<Content>: View where Content: View {
    let color: Color
    let radius: CGFloat
    let content: () -> Content

    init(shadowColor: Color = Color.gray,
         radius: CGFloat = 8,
         content: @escaping () -> Content) {
        self.color = shadowColor.opacity(0.4)
        self.radius = radius
        self.content = content
    }

    var body: some View {
        content()
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: color, radius: radius, x: 4, y: 4)
            .padding(radius + 8)
    }
}

struct Lesson23View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson23_1View {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .previewLayout(.sizeThatFits)
    }
}
