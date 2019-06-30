//
//  HomePageView.swift
//  TrySwiftUI
//
//  Created by Yuki Takeda on 2019/06/30.
//  Copyright © 2019 TAKEDA Yuki. All rights reserved.
//

import SwiftUI

struct HomePageView<Page: View> : View {
    var viewControllers: [UIHostingController<Page>]

    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }

    var body: some View {
        PageViewController(controllers: viewControllers)
    }
}

#if DEBUG
struct HomePageView_Previews : PreviewProvider {
    static var previews: some View {
        HomePageView([ItemGridView(), ItemGridView()])
    }
}
#endif
