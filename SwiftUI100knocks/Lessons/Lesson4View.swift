//
//  Lesson4View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/02.
//

import SwiftUI

struct Lesson4View: View {
    var body: some View {
        Image("pyramid")
            .resizable()
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color.black, lineWidth: 3)
            )
    }
}

struct Lesson4View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson4View()
    }
}
