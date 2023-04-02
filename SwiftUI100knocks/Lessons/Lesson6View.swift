//
//  Lesson6View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/02.
//

// NavigationViewを使いラージタイトルを表示してください。

import SwiftUI

struct Lesson6View: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                Image("pyramid")
                    .resizable()
                    .frame(width: 256, height: 256)
                    .scaledToFill()
                Text("This is one of the Great Pyramids of Giza")
            }
            .padding(16)
            .navigationTitle("Egypt")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct Lesson6View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson6View()
    }
}
