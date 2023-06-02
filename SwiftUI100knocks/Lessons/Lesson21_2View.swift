//
//  Lesson21_2View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/05/23.
//

import SwiftUI

struct Lesson21_2View: View {
    @State var text: String
    @State private var isFirst = true
    @State private var isFold = false
    @State private var isFoldButtonNeeded = true
    @State private var textHeight: CGFloat? = nil

    var body: some View {
        VStack(alignment: .trailing) {
            HStack {
                Text(text)
                    .frame(height: textHeight)
                    .background(GeometryReader { geometry in
                        Color.clear.preference(key: SizePreference.self, value: geometry.size)
                    })
                    .padding()
                    .onPreferenceChange( SizePreference.self) { textSize in
                        if self.isFirst == true {
                            if textSize.height > 80 {
                                self.textHeight = 80
                                self.isFold = true
                                self.isFirst = false
                            } else {
                                self.isFoldButtonNeeded = false
                            }
                        }
                    }
                Spacer()
            }

            if isFoldButtonNeeded {
                Button(action: {
                    self.isFold.toggle()
                    self.textHeight = isFold ? 80 : nil
                }) {
                    Text(isFold ? "Read More" : "Fold")
                }
                .padding(.trailing, 16)
            }
        }
    }
}

fileprivate struct SizePreference: PreferenceKey {
    static let defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {}
}

struct Lesson21_2View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson21_2View(text: "Hello world")
    }
}
