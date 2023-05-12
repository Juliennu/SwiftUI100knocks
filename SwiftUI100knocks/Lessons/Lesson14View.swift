//
//  Lesson14View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/21.
//

// iOS14以前でも使用できる方法でアラートを表示させてください。

import SwiftUI

struct Lesson14View: View {
    @State private var showingAlert = false

    var body: some View {
        Button("Push Me!") {
            self.showingAlert.toggle()
        }
        .alert(isPresented: $showingAlert) {
            Alert(
                title: Text("テスト"),
                message: Text("ボタンが押されました！"),
                primaryButton: .cancel(Text("Button1")),
                secondaryButton: .destructive(Text("Button2"))
            )
        }
    }
}

struct Lesson14View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson14View()
    }
}
