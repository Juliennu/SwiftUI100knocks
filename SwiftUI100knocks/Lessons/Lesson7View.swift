//
//  Lesson7View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/02.
//

// Pickerを使いポケモンを表示してください。

import SwiftUI

struct Lesson7View: View {
    enum Pokemon: String, CaseIterable, Identifiable {
        case snolax = "Snolax"
        case pikachu = "Pikachu"
        case slowpoke = "Slowpoke"
        case meowth = "Meowth"

        var id: Self {
            return self
        }
    }

    @State var selectedPokemon: Pokemon

    var body: some View {
        Picker("Pokemon", selection: $selectedPokemon, content: {
            ForEach(Pokemon.allCases) { pokemon in
                Text(pokemon.rawValue)
            }
        })
        .pickerStyle(.wheel)
    }
}

struct Lesson7View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson7View(selectedPokemon: .snolax)
    }
}
