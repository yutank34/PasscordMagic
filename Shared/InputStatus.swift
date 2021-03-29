//
//  InputStatus.swift
//  PasscordMagic
//
//  Created by yutank34 on 3/26/21.
//

import SwiftUI

struct InputStatus: View {
    @EnvironmentObject var inputs: InputsManager
    var body: some View {
        HStack {
            ForEach(0..<4) { num in
                if inputs.counts > num {
                    Circle()
                        .fill(Color.white)
                } else {
                    Circle()
                        .stroke(Color.white, lineWidth: 2)
                }

            }
        }
        .frame(width: 200, height: 12, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color.black)
    }
}


class InputsManager: ObservableObject {
    @Published var counts = 0
    
    func countUp() {
        counts += 1
    }
    
    func countDown() {
        counts -= 1
    }
    
    func reset() {
        counts = 0
    }
}

struct InputStatus_Previews: PreviewProvider {
    static var previews: some View {
        InputStatus().environmentObject(InputsManager())
    }
}
