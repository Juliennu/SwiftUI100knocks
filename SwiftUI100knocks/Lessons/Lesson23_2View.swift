//
//  Lesson23_2View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/06/16.
//

import SwiftUI

struct Lesson23_2View: View {
    var body: some View {
        VStack {
            Lesson23_1View {
                Text("Hello, World!")
            }
            Lesson23_1View(shadowColor: Color.red) {
                Image("pyramid")
                    .resizable()
                    .frame(width: 60, height: 60)
            }
            Lesson23_1View(shadowColor: Color.cyan, radius: 24) {
                HStack {
                    Image("pyramid")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Hello, Egypt!")
                }
            }
        }
    }
}

struct Lesson23_2View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson23_2View()
    }
}
