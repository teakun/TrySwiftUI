import SwiftUI

struct ContentView : View {
    var body: some View {
        ScrollView(isScrollEnabled: true,
                   alwaysBounceHorizontal: false,
                   alwaysBounceVertical: true,
                   showsHorizontalIndicator: true,
                   showsVerticalIndicator: true) {
            VStack {
                MapView().edgesIgnoringSafeArea(.top)
                    .frame(height: 300)

                CircleImage()
                    .offset(y: -75)
                    .padding(.bottom, -75)

                VStack(alignment: .leading) {
                    Text("Title")
                        .font(.title)
                        .color(.green)
                    HStack {
                        Text("description")
                            .font(.subheadline)
                        Spacer()
                        Text("name")
                            .font(.callout)
                    }
                    }.padding()
                Spacer()
                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)

        }

    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
