//
//  Lesson9View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/02.
//

// Buttonが押されたら文字を変えてください。

import SwiftUI

struct Lesson9View: View {
    enum City: String {
        case egypt = "Egypt"
        case tokyo = "Tokyo"

        var toggleSelf: Self {
            switch self {
            case .egypt:
                return .tokyo
            case .tokyo:
                return .egypt
            }
        }
    }

    @State var city: City = .egypt

    var body: some View {
        VStack(spacing: 8) {
            Text(city.rawValue)
            Button("Tap Me!!", action: changeText)
        }
    }

    func changeText() {
        city = city.toggleSelf
    }
}

struct Lesson9View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson9View()
    }
}
