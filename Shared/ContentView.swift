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
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 2) {
                Text(getTime())
                    .font(.system(size: 72))
                    .padding(.top, 60)
                Text(getDate())
                    .font(.system(size: 25))
                Spacer()
                Button(action: {
                    self.isPresentedSubView.toggle()
                }) {
                    Text(NSLocalizedString("Unlock", comment: ""))
                        .font(.system(size: 18))
                        .padding(.bottom, 10)
                }
                .foregroundColor(.white)
                .fullScreenCover(isPresented: $isPresentedSubView) {
                    PasscordInput()
                        .environmentObject(InputsManager())
                }
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 6) {
                    Text("●")
                    Text("■")
                        .foregroundColor(.gray)
                }
                .font(.system(size: 12))
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
            .background(Color.black)
        }
    }
    
    private func getDate() -> String {
        let f = DateFormatter()
        f.dateFormat = NSLocalizedString("DateFormat", comment: "")
        f.locale = Locale(identifier: NSLocalizedString("Locale", comment: ""))
        return f.string(from: now)
    }
    
    private func getTime() -> String {
        let f = DateFormatter()
        f.dateFormat = NSLocalizedString("hh:mm", comment: "")
        f.locale = Locale(identifier: NSLocalizedString("Locale", comment: ""))
        return f.string(from: now)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
