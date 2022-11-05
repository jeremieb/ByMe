//
//  File.swift
//  
//
//  Created by Jeremie Berduck on 05/11/2022.
//

import Foundation
import SwiftUI

final class MyApps {
    // Create app objects
    static let shoobie: AnApp = AnApp(name: "Shoobie", url: "https://apple.co/3tHjo8I", appicon: "shoobie")
    static let demeter: AnApp = AnApp(name: "Demeter", url: "https://apple.co/3heu7VR", appicon: "demeter")
    static let densha: AnApp = AnApp(name: "Densha Otaku", url: "https://apple.co/3E4Qsya", appicon: "densha")
    static let yorikiri: AnApp = AnApp(name: "Yorikiri", url: "https://apple.co/3FHZSRo", appicon: "yorikiri-app")
    
    static let list: [AnApp] = [shoobie, demeter, densha, yorikiri]
}

@available(macOS 13.0, *)
public struct MyAppsView: View {
    public var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 8) {
                ForEach(MyApps.list, id: \.self) { app in
                    Link(destination: URL(string: app.url)!) {
                        VStack(alignment: .center) {
                            Image(app.appicon, bundle: .module).frame(width: 44, height: 44).cornerRadius(12)
                            Text(app.name).multilineTextAlignment(.center).lineLimit(2)
                            Spacer()
                        }.frame(height: 90).frame(maxWidth: 52).padding(.horizontal)
                    }
                }
            }
        }
    }
}

public struct AnApp: Hashable {
    var id = UUID().uuidString
    var name, url, appicon: String
}
