//
//  Lesson22View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/06/02.
//

import SwiftUI

struct Lesson22View: View {
    var body: some View {
        (Text("Hello, ")
            .foregroundColor(Color.purple)
         + Text("world")
            .foregroundColor(Color.cyan)
         + Text("!\n")
            .foregroundColor(Color.pink)
         + Text("A whole new world!")
            .font(Font.system(size: 20).bold())
        )
        .lineSpacing(4)
    }
}

struct Lesson22View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson22View()
    }
}
