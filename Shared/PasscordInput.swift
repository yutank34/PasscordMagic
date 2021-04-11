//
//  PasscordInput.swift
//  PasscordMagic
//
//  Created by yutank34 on 3/23/21.
//

import SwiftUI

struct PasscordInput: View {
    @EnvironmentObject var inputs: InputsManager
    var body: some View {
        if inputs.counts == 4 {
            exit(0)
        } else {
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 24) {
                Text("Touch ID or Enter Passcode")
                InputStatus()
                VStack {
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
                }
                HStack(alignment: .center, spacing: 120) {
                    Text("Emergency")
                    if inputs.counts == 0 {
                        Text("Cancel")
                    } else {
                        Button(action: {
                            inputs.countDown()
                        }) {
                            Text("Delete")
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color.black)
            .foregroundColor(.white)
        }
    }
}

struct PasscordInput_Previews: PreviewProvider {
    static var previews: some View {
        PasscordInput()
            .environmentObject(InputsManager())
    }
}
