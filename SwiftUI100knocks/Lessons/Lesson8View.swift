//
//  Lesson8View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/04/02.
//

// TabViewを使って画面を切り替えてください。

import SwiftUI

struct Lesson8View: View {
    enum Tab: Int, CaseIterable, Identifiable {
        case first = 1
        case second
        case third

        var id: Self {
            return self
        }
        var iconName: String {
            return "\(self.rawValue).square.fill"
        }
        var title: String {
            switch self {
            case .first:
                return "First"
            case .second:
                return "Second"
            case .third:
                return "Third"
            }
        }
        var view: some View {
            return Text("\(self.title) Tab")
        }
    }

    @State var selectedTab: Tab

    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(Tab.allCases) { tab in
                tab.view
                    .tabItem {
                        Label(tab.title, systemImage: tab.iconName)
                    }
            }
        }
    }
}

struct Lesson8View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson8View(selectedTab: .first)
    }
}
