//
//  JSONCall.swift
//  ReactJSONDemo
//
//  Created by computer on 5/23/17.
//  Copyright © 2017 computer. All rights reserved.
//

import Foundation
import ReactiveCocoa
import ReactiveJSON
import Result


/// A JSON client for the Guild Wars 2 API
struct GW2API: Singleton, ServiceHost {
    // 'Singleton'
    private(set) static var shared = Instance()
    typealias Instance = GW2API
    
    // 'ServiceHost'
    static var scheme: String { return "https" }
    static var host: String { return "api.guildwars2.com" }
    static var path: String? { return "v2" }
}
