//
//  Lesson13View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/04.
//

// ListのスタイルをPlainListStyleに変更してください。

import SwiftUI

struct Lesson13View: View {
    struct City: Identifiable {
        let id = UUID()
        let name: String
    }

    struct Country: Identifiable {
        let id = UUID()
        let name: String
        let cities: [City]
    }

    private let countries: [Country] = [
        Country(name: "Japan",
                cities: [City(name: "Tokyo"),
                         City(name: "Fukuoka")]),
        Country(name: "Egypt",
                cities: [City(name: "Cairo"),
                         City(name: "Hurghada")]),
        Country(name: "Russia",
                cities: [City(name: "Moscow"),
                         City(name: "Saint Petersburg")])
    ]

    var body: some View {
        List(countries) { country in
            Section(country.name) {
                ForEach(country.cities) { city in
                    Text(city.name)
                }
            }
        }
        .listStyle(.plain)
    }
}

struct Lesson13View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson13View()
    }
}
