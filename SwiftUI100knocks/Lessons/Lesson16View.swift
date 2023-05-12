//
//  Lesson16View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/28.
//

// ボタン1が押されたらアラート1を、ボタン2が押されたらアラート2を表示してください

import SwiftUI

struct Lesson16View: View {
    @State private var isShowingAlert1 = false
    @State private var isShowingAlert2 = false
    
    var body: some View {
        VStack(spacing: 8) {
            Button("Button1") {
                isShowingAlert1.toggle()
            }
            .alert("Alert1", isPresented: $isShowingAlert1) {
                Button("Close") {}
            } message: {
                Text("Message")
            }
            Button("Button2") {
                isShowingAlert2.toggle()
            }
            .alert("Alert2", isPresented: $isShowingAlert2) {
                Button("Close") {}
            } message: {
                Text("Message")
            }
        }
    }
}

struct Lesson16View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson16View()
    }
}
