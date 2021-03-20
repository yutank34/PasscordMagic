//
//  ContentView.swift
//  Shared
//
//  Created by yutank34 on 1/1/21.
//

import SwiftUI

struct ContentView: View {
    var now = Date()
    var body: some View {
        VStack {
            Text(getTime())
                .font(.system(size: 58))
            Text(getDate())
            Spacer()
        }
        .foregroundColor(.white)
        .background(Color.black)
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
    }
    
    func getDate() -> String {
        let f = DateFormatter()
        f.dateFormat = "M月d日 EEE曜日"
        f.locale = Locale(identifier: "ja_JP")
        return f.string(from: now)
    }
    
    func getTime() -> String {
        let f = DateFormatter()
        f.timeStyle = .short
        f.dateStyle = .none
        f.locale = Locale(identifier: "ja_JP")
        return f.string(from: now)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
