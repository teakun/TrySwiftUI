//
//  HomeView.swift
//  TrySwiftUI
//
//  Created by Yuki Takeda on 2019/06/26.
//  Copyright © 2019 TAKEDA Yuki. All rights reserved.
//

import SwiftUI

struct ItemData: Hashable, Codable, Identifiable {
    let id: String
    let name: String
    let price: Int
}


struct ItemDataFixture {
    static func test() -> ItemData {
        return ItemData(id: "id", name: "name", price: 1000)
    }
}

struct SampleView : View {
    var body: some View {
        HStack {
            Spacer(minLength: 8)
            HomeListRow()
            HomeListRow()
            Spacer(minLength: 8)
        }
    }
}

struct ItemGridView : View {
//    let itemData = (0..<50).map { _ in ItemDataFixture.test() }
    var body: some View {
        ScrollView(isScrollEnabled: true,
                   alwaysBounceHorizontal: false,
                   alwaysBounceVertical: false,
                   showsHorizontalIndicator: false,
                   showsVerticalIndicator: false
        ) {
            ForEach(0..<50) { _ in
                SampleView()
                Spacer(minLength: 8)
            }
        }

    }
}

#if DEBUG
struct ItemGridView_Previews : PreviewProvider {
    static var previews: some View {
        ItemGridView()
    }
}
#endif
