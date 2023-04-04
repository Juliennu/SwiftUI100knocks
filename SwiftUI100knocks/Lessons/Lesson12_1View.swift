//
//  Lesson12_1View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/04.
//

// NavigationViewの戻るボタンを非表示にしてください。

import SwiftUI

struct Lesson12_1View: View {
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
                NavigationLink(destination: Lesson12_2View(city: city)) {
                    Text(city)
                }
            }
        }
    }
}

struct Lesson12_1View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson12_1View()
    }
}
