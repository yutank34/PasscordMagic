//
//  RootView.swift
//  PasscordMagic
//
//  Created by yutank34 on 4/12/21.
//

import SwiftUI

struct RootView: View {
    @State var isStarted: Bool
    
    var body: some View {
        Group {
            if isStarted {
                ContentView()
            } else {
                TutorialView(isStarted: $isStarted)
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView(isStarted: true)
    }
}
