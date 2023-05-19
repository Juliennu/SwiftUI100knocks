//
//  Lesson19_2View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/05/12.
//

import SwiftUI

struct Lesson19_2View: View {
    let number: Int
    
    var body: some View {
        Text("\(number) is number")
    }
}

struct Lesson19_2View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson19_2View(number: 123456)
    }
}
