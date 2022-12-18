import SwiftUI

@available(iOS 16.0, macOS 12.0, *)
public struct MyApps: View {
    
    // Hide your current app by providing the bundle id from the current app.
    var bundleID: String

    public init(bundleID: String) {
        self.bundleID = bundleID
    }

    public var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(myApps, id: \.id) { app in
                        Button(action: {
                            UIApplication.shared.open(app.url)
                        }) {
                            VStack {
                                Image(app.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(height: 94)
                                Text(app.name.capitalized)
                            }
                        }
                    }
                }
            }.scrollContentBackground(.hidden)
        }.frame(maxWidth: .infinity, alignment: .leading)
    }
    
    struct App: Identifiable {
        var id = UUID()
        var name: String
        var image: String
        var url: URL
    }
    
    let myApps: [App] = [
        .init(name: "Shoobie", image: "shoobie", url: URL(string: "https://apps.apple.com/app/apple-store/id1488166941?pt=120237833&ct=myapps&mt=8")!),
        .init(name: "Demeter", image: "demeter", url: URL(string: "https://apps.apple.com/app/apple-store/id1614712181?pt=120237833&ct=myapps&mt=8")!),
        .init(name: "Yorikiri", image: "yorikiri", url: URL(string: "https://apps.apple.com/app/apple-store/id6443876283?pt=120237833&ct=myapps&mt=8")!),
        .init(name: "Densha", image: "densha-material", url: URL(string: "https://apps.apple.com/app/apple-store/id1603409310?pt=120237833&ct=myapps&mt=8")!)
    ]
}

struct MyApps_Previews: PreviewProvider {
    @available(iOS 13.0, *)
    static var previews: some View {
        List {
            Section {
                if #available(iOS 16.0, *) {
                    MyApps(bundleID: "com.jeremieberduck.shoobie")
                } else {
                    // Fallback on earlier versions
                }
            }
            .listRowInsets(.init())
            .listRowBackground(Color.clear)
        }
    }
}
