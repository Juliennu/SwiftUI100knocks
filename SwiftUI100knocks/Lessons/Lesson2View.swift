//
//  Lesson2View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/02.
//

/*
 150✖︎200サイズに画像をリサイズして表示させてください。
 アスペクト比が異なる場合ははみ出た箇所を切り取って表示してください。
 */

import SwiftUI

struct Lesson2View: View {
    var body: some View {
        Image("pyramid")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 200, alignment: .center)
            .clipped()
    }
}

struct Lesson2View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson2View()
    }
}
