//
//  RNViewManager.swift
//  NativeApp
//
//  Created by Phincon on 10/08/23.
//

import Foundation
import React

class RNViewManager: NSObject {
    var bridge: RCTBridge?
    
    static let sharedInstance = RNViewManager()
    
    func createBridgeIfNeed() -> RCTBridge {
        if bridge == nil {
            bridge = RCTBridge.init(delegate: self, launchOptions: nil)
        }
        return bridge!
    }
    
    func viewForModule(_ moduleName: String, initialProperties: [String:Any]?) -> RCTRootView {
        let viewBridge = createBridgeIfNeed()
        let rootView: RCTRootView = RCTRootView(
            bridge: viewBridge,
            moduleName: moduleName,
            initialProperties: initialProperties)
        return rootView
    }
}

extension RNViewManager: RCTBridgeDelegate {
    func sourceURL(for bridge: RCTBridge!) -> URL! {
//        #if DEBUG
//            return URL(string: "http://localhost:8081/index.bundle?platform=ios")
//        #else
            return Bundle.main.url(forResource: "main", withExtension: "jsbundle")
//        #endif
    }
}
