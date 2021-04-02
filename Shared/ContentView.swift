//
//  ContentView.swift
//  Shared
//
//  Created by yutank34 on 1/1/21.
//

import SwiftUI

struct ContentView: View {
    var now = Date()
    @State var isPresentedSubView = false
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 2) {
            Text(getTime())
                .font(.system(size: 58))
                .padding(.top, 30)
            Text(getDate())
            Spacer()
            Button(action: {
                self.isPresentedSubView.toggle()
            }) {
                Text("Press home to unlock")
            }
            .foregroundColor(.white)
            .fullScreenCover(isPresented: $isPresentedSubView) {
                PasscordInput()
                    .environmentObject(InputsManager())
            }
            Text("● ◇")
                .font(.system(size: 10))
                .padding(.bottom, 2)
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
        .background(Color.black)
        
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
