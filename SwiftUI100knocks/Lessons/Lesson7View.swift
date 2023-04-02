//
//  Lesson7View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/02.
//

// Pickerを使いポケモンを表示してください。

import SwiftUI

struct Lesson7View: View {
    let pokemons = ["Snolax", "Pikachu", "Slowpoke", "Meowth"]

    @State var selectedPokemon: String

    var body: some View {
        Picker("Pokemon", selection: $selectedPokemon, content: {
            ForEach(0..<pokemons.count) { index in
                Text(pokemons[index])
                    .tag(index)
            }
        })
        .pickerStyle(.wheel)
    }
}

struct Lesson7View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson7View(selectedPokemon: "Snolax")
    }
}
