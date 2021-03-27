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
        VStack {
            Text(getTime())
                .font(.system(size: 58))
                .padding(.top, 30)
            Text(getDate())
            Spacer()
            Button(action: {
                self.isPresentedSubView.toggle()
            }) {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            }
            .foregroundColor(.white)
            .fullScreenCover(isPresented: $isPresentedSubView) {
                PasscordInput()
                    .environmentObject(InputsManager())
            }
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
