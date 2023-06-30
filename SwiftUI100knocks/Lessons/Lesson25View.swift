//
//  Lesson25View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/06/30.
//

import SwiftUI

struct Lesson25View: View {
    struct City: Identifiable {
        var id = UUID()
        var name: String
    }

    @State private var cities = [
        City(name: "Tokyo"),
        City(name: "Fukuoka"),
        City(name: "Cairo"),
        City(name: "Hurghada"),
        City(name: "Moscow"),
        City(name: "Saint Petersburg")
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(cities) {
                    Text($0.name)
                }
                .onDelete(perform: delete(at:))
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }
        }
    }

    private func delete(at index: IndexSet) {
        cities.remove(atOffsets: index)
    }
}

struct Lesson25View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson25View()
    }
}
