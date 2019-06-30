//
//  HomeListCellView.swift
//  TrySwiftUI
//
//  Created by Yuki Takeda on 2019/06/26.
//  Copyright © 2019 TAKEDA Yuki. All rights reserved.
//

import SwiftUI

struct HomeListRow : View {
    let width = (UIScreen.main.bounds.width - 24) / 2
    let height = (UIScreen.main.bounds.width / 2) * 1.5

    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .bottomTrailing) {
                Image("img03").resizable().aspectRatio(contentMode: .fill)
                Image("fav_false")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding(5)
            }
            VStack (alignment: .leading) {
                Text("かがみもち")
                Text("現在 1000円").font(.headline)
                HStack {
                    Text("3日")
                }
            }.padding(4)
            Spacer()
        }.background(Color.gray)
        .frame(width: width, height: height)
    }
}

#if DEBUG
struct HomeListCellView_Previews : PreviewProvider {
    static var previews: some View {
        HomeListRow().previewLayout(.fixed(width: 200, height: 300))
    }
}
#endif
