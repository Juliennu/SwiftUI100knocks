//
//  Lesson12_2View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/04.
//

import SwiftUI

struct Lesson12_2View: View {
    let city: String

    var body: some View {
        Text(city)
            .navigationBarBackButtonHidden()
    }
}

struct Lesson12_2View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson12_2View(city: "Tokyo")
    }
}
