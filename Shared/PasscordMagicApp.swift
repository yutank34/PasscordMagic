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
            if UserDefaults.standard.bool(forKey: "isStarted") {
                ContentView()
            } else {
                TutorialView()
            }
        }
        .onChange(of: scenePhase) { scene in
                    switch scene {
                    case .active:
                        print("scenePhase: active")
                    case .inactive:
                        print("scenePhase: inactive")
                    case .background:
                        print("scenePhase: background")
                    @unknown default: break
                    }
                }
    }
}
