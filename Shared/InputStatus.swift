//
//  InputStatus.swift
//  PasscordMagic
//
//  Created by yutank34 on 3/26/21.
//

import SwiftUI

struct InputStatus: View {
    var body: some View {
        HStack {
            Circle()
                .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 2)
            Circle()
            Circle()
            Circle()
        }
        .frame(width: 200, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .foregroundColor(.blue)
    }
}

struct InputStatus_Previews: PreviewProvider {
    static var previews: some View {
        InputStatus()
    }
}
