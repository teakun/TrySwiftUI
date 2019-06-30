//
//  MainTabView.swift
//  TrySwiftUI
//
//  Created by Yuki Takeda on 2019/06/29.
//  Copyright © 2019 TAKEDA Yuki. All rights reserved.
//

import SwiftUI

struct MainTabView : View {
    @State private var selection = 0
    var body: some View {
        TabbedView(selection: $selection){
            ItemGridView()
                .font(.title)
                .tabItemLabel(Text("first"))
                .tag(0)
            Text("Second View")
                .font(.title)
                .tabItemLabel(Text("second"))
                .tag(1)
            Text("Second View")
                .font(.title)
                .tabItemLabel(Text("second"))
                .tag(2)

            Text("Second View")
                .font(.title)
                .tabItemLabel(Text("second"))
                .tag(3)

            Text("Second View")
                .font(.title)
                .tabItemLabel(Text("second"))
                .tag(4)
        }
    }
}

#if DEBUG
struct MainTabView_Previews : PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
#endif
