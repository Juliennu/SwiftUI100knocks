//
//  Lesson11_1View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/04.
//

// 画面遷移時に値を渡してください。

import SwiftUI

struct Lesson11_1View: View {
    private let cities = ["Tokyo",
                          "Fukuoka",
                          "Cairo",
                          "Hurghada",
                          "Moscow",
                          "Saint Petersburg"
    ]

    var body: some View {
        NavigationView {
            List(cities, id: \.self) { city in
                NavigationLink(destination: Lesson11_2View(city: city)) {
                    Text(city)
                }
            }
        }
    }
}

struct Lesson11_1View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson11_1View()
    }
}
