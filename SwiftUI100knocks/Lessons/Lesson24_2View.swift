//
//  Lesson24_2View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/06/16.
//

import SwiftUI

struct Lesson24_2View: View {
    var body: some View {
        VStack {
            Text("Hello, Egypt!")
                .card()
            Image("pyramid")
                .resizable()
                .frame(width: 60, height: 60)
                .card(color: Color.red)
            HStack {
                Image("pyramid")
                    .resizable()
                    .frame(width: 60, height: 60)
                Text("Hello, Egypt!")
            }
            .card(color: Color.cyan, radius: 24)
        }
    }
}

struct Lesson24_2View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson24_2View()
    }
}
