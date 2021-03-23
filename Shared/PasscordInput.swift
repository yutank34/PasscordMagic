//
//  PasscordInput.swift
//  PasscordMagic
//
//  Created by yutank34 on 3/23/21.
//

import SwiftUI

struct PasscordInput: View {
    var body: some View {
        VStack {
            Text("Touch ID or Enter Passcode")
            HStack {
                NumberView(number: 1, alphabet: nil)
                NumberView(number: 2, alphabet: "ABC")
                NumberView(number: 3, alphabet: "DEF")
            }
            HStack {
                NumberView(number: 4, alphabet: "GHI")
                NumberView(number: 5, alphabet: "JKL")
                NumberView(number: 6, alphabet: "MNO")
            }
            HStack {
                NumberView(number: 7, alphabet: "PQRS")
                NumberView(number: 8, alphabet: "TUV")
                NumberView(number: 9, alphabet: "WXYZ")
            }
            NumberView(number: 0, alphabet: nil)
            HStack {
                Text("Emergency")
                Spacer()
                Text("Cancel")
            }
        }
        .frame(width: 300, height: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct PasscordInput_Previews: PreviewProvider {
    static var previews: some View {
        PasscordInput()
    }
}
