//
//  Lesson17View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/28.
//

import SwiftUI

struct Lesson17View: View {
    @State private var isShowingAlert1 = false
    @State private var isShowingAlert2 = false

    var body: some View {
        VStack(spacing: 8) {
            Button("Show Alert1") {
                isShowingAlert1.toggle()
            }
            .alert(isPresented: $isShowingAlert1) {
                Alert(
                    title: Text("Alert1"),
                    message: Text("Message"),
                    primaryButton: .default(Text("OK")),
                    secondaryButton: .default(Text("Close"))
                )
            }
            Button("ShowAlert2") {
                isShowingAlert2.toggle()
            }
            .alert(isPresented: $isShowingAlert2) {
                Alert(
                    title: Text("Alert2"),
                    message: Text("Message"),
                    primaryButton: .default(Text("OK")),
                    secondaryButton: .default(Text("Close"))
                )
            }
        }
    }
}

struct Lesson17View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson17View()
    }
}
