//
//  File.swift
//  
//
//  Created by Jeremie Berduck on 05/11/2022.
//

import Foundation

public struct AnApp: Hashable {
    var id = UUID().uuidString
    var appID, name, url, appicon: String
}
