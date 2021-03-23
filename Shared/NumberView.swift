//
//  NumberView.swift
//  PasscordMagic
//
//  Created by yutank34 on 3/23/21.
//

import SwiftUI

struct NumberView: View {
    let number: Int
    let alphabet: String?
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.gray)
            VStack {
                Text(String(number))
                    .font(.system(size: 28))
                if let alphabet = alphabet ?? "" {
                    Text(alphabet)
                        .font(.system(size: 12))
                }
            }
            .foregroundColor(.white)
        }
        .frame(width: 70, height: 70)
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
    }
}

struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView(number: 1, alphabet: nil)
        NumberView(number: 2, alphabet: "ABC")
    }
}
