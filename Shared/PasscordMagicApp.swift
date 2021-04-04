//
//  PasscordMagicApp.swift
//  Shared
//
//  Created by yutank34 on 1/1/21.
//

import SwiftUI

@main
struct PasscordMagicApp: App {
    var body: some Scene {
        WindowGroup {
            if UserDefaults.standard.bool(forKey: "isStarted") {
                ContentView()
            } else {
                TutorialView()
            }
        }
    }
}
