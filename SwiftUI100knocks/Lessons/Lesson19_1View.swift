//
//  Lesson19_1View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/05/12.
//

/*
 数字が入力されたらシートを表示してください。
 数字以外が入力されたらアラートを表示してください。
 */

import SwiftUI

struct Lesson19_1View: View {
    @State private var text = ""
    @State private var isShowingSheet = false
    @State private var isShowingAlert = false

    var body: some View {
        VStack(spacing: 16) {
            TextField("Input Number", text: $text)
                .textFieldStyle(.roundedBorder)
            Button("Show Sheet") {
                guard Int(text) != nil else {
                    return isShowingAlert.toggle()
                }
                isShowingSheet.toggle()
            }
            .sheet(isPresented: $isShowingSheet) {
                if let number = Int(text) {
                    Lesson19_2View(number: number)
                }
            }
            .alert("Error", isPresented: $isShowingAlert) {
                Button("Close", role: .cancel) {}
            } message: {
                Text("Please input numbers.")
            }
        }
        .padding()
    }
}

struct Lesson19View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson19_1View()
    }
}
