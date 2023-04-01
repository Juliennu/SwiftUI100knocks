//
//  Lesson1View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/01.
//

/*
 150✖︎200サイズに画像をリサイズして表示させてください。
 アスペクト比が異なる場合は余白を赤色で表示してください。
 */

import SwiftUI

struct Lesson1View: View {
    var body: some View {
        VStack {
            Image("pyramid")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 200)
                .background(Color.red)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct Lesson1View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson1View()
    }
}
