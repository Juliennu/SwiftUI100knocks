//
//  Lesson11_2View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/04.
//

import SwiftUI

struct Lesson11_2View: View {
    let city: String

    var body: some View {
        Text(city)
    }
}

struct Lesson11_2View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson11_2View(city: "Moscow")
    }
}
