//
//  Lesson20View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/05/19.
//

import SwiftUI

struct Lesson20View: View {
    @State var isActive = false

    var body: some View {
        NavigationStack {
            Button(action: {
                self.isActive.toggle()
            }) {
                Text("Tap Me!!")
            }
            NavigationLink(destination: Text("Second View"), isActive: $isActive) {
                EmptyView()
            }
        }
    }
}

struct Lesson20_1View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson20View()
    }
}
