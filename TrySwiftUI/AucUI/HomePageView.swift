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

    @State var currentPage = 0

    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }

    var body: some View {
        VStack {
            Text("Current Page: \(currentPage)").frame(height: 150)
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
        }
    }
}

#if DEBUG
struct HomePageView_Previews : PreviewProvider {
    static var previews: some View {
        HomePageView([ItemGridView(), ItemGridView()])
    }
}
#endif
