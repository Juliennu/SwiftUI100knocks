//
//  Lesson3View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/02.
//

import SwiftUI

struct Lesson3View: View {
    var body: some View {
        Image("pyramid")
            .resizable()
            .frame(width: 150, height: 150)
            .clipShape(Circle())
    }
}

struct Lesson3View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson3View()
    }
}
