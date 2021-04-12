//
//  PasscordMagicApp.swift
//  Shared
//
//  Created by yutank34 on 1/1/21.
//

import SwiftUI

@main
struct PasscordMagicApp: App {
    // TODO: https://dev.classmethod.jp/articles/xcode12_change_appdelegate/
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            RootView(isStarted: UserDefaults.standard.bool(forKey: "isStarted"))
        }
    }
}
