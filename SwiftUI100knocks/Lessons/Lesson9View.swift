//
//  Lesson9View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/02.
//

// Buttonが押されたら文字を変えてください。

import SwiftUI

struct Lesson9View: View {
    @State var text: String = "Egypt"

    var body: some View {
        VStack(spacing: 8) {
            Text(text)
            Button("Tap Me!!", action: changeText)
        }
    }

    func changeText() {
        if text == "Egypt" {
            text = "Tokyo"
        } else if text == "Tokyo" {
            text = "Egypt"
        }
    }
}

struct Lesson9View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson9View()
    }
}
