//
//  Lesson5View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/02.
//

/*
 画像を等間隔で横に並べてください。
 */

import SwiftUI

struct Lesson5View: View {
    var image: Image {
        Image("pyramid")
            .resizable()
    }
    var body: some View {
        HStack(spacing: 16) {
            image
            image
            image
            image
            image
        }
        .scaledToFit()
        .padding(16)
    }
}

struct Lesson5View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson5View()
    }
}
