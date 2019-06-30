//
//  CircleImage.swift
//  TrySwiftUI
//
//  Created by Yuki Takeda on 2019/06/26.
//  Copyright © 2019 TAKEDA Yuki. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var body: some View {
        Image("img03")
            .resizable()
            .frame(width: 150, height: 150, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(color: .black, radius: 10, x: 0, y: 5)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
#endif
