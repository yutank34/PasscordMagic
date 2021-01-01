//
//  ContentView.swift
//  Shared
//
//  Created by yutank34 on 1/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("12:00")
            Text(getDate())
        }
    }
    
    func getDate() -> String {
        let f = DateFormatter()
        f.dateFormat = "M月d日 EEE曜日"
        f.locale = Locale(identifier: "ja_JP")
        let now = Date()
        return f.string(from: now)
    }
    
    func getDef() -> String {
        let f = DateFormatter()
        f.timeStyle = .full
        f.dateStyle = .full
        f.locale = Locale(identifier: "ja_JP")
        let now = Date()
        return f.string(from: now)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
