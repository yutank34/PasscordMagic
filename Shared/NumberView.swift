//
//  NumberView.swift
//  PasscordMagic
//
//  Created by yutank34 on 3/23/21.
//

import SwiftUI

struct NumberView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.gray)
            VStack {
                Text("1")
                    .font(.system(size: 28))
                Text("ABC")
                    .font(.system(size: 12))
            }
            .foregroundColor(.white)
        }
        .frame(width: 60, height: 60)
    }
}

struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView()
    }
}
