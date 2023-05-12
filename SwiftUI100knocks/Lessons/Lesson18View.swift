//
//  Lesson18View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/05/12.
//

/*
 Buttonが押されたら文字を変えてください。
 Button内の画像やテキストの色を変えないでください。
 */

import SwiftUI

struct Lesson18View: View {
    @State private var title: String = "Pyramid"

    var body: some View {
        VStack(spacing: 24) {
            Text(title)
            Button(action: {
                title = "Forever"
            }) {
                HStack(spacing: 16) {
                    Image("pyramid")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 44, height: 44)
                    Text("Tap Me!!")
                }
            }
            .padding()
            .border(.gray, width: 2)
        }
        .buttonStyle(.plain)
    }
}

struct Lesson18View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson18View()
    }
}
