//
//  Lesson15View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/21.
//

// iOS15以降で使用できる方法でアラートを表示させてください。

import SwiftUI

struct Lesson15View: View {
    @State private var isShowingAlert = false

    var body: some View {
        Button("Tap Me!") {
            self.isShowingAlert.toggle()
        }
        .alert("Title", isPresented: $isShowingAlert) {
            Button("キャンセル", role: .cancel) {}
            Button("削除", role: .destructive) {}
        } message: {
            Text("Message")
        }
    }
}

struct Lesson15View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson15View()
    }
}
