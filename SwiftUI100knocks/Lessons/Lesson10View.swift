//
//  Lesson10View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/02.
//

// Listを使ってセクションごとに表示する

import SwiftUI

struct Lesson10View: View {
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
        List {
            ForEach(countries) { country in
                Section(country.name) {
                    ForEach(country.cities) { city in
                        Text(city.name)
                    }
                }
            }
        }
    }
}

struct Lesson10View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson10View()
    }
}
