//
//  TutorialView.swift
//  PasscordMagic
//
//  Created by yutank34 on 4/5/21.
//

import SwiftUI

struct TutorialView: View {
    @Binding var isStarted: Bool
    @State var pageNum = 0
    let titles: [String] = [
        NSLocalizedString("Tutorial0", comment: ""),
        NSLocalizedString("Tutorial1", comment: ""),
        NSLocalizedString("Tutorial2", comment: ""),
        NSLocalizedString("Tutorial3", comment: ""),
        NSLocalizedString("Tutorial4", comment: ""),
        NSLocalizedString("Tutorial5", comment: "")
    ]
    let images: [String] = [
        "none",
        "tutorial-1",
        "tutorial-2",
        "tutorial-3",
        "tutorial-4",
        "none"
    ]
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Spacer()
            if images[pageNum] != "none" {
                Image(images[pageNum])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Text(NSLocalizedString("Tutorial\(pageNum)", comment: ""))
            Spacer()
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                if pageNum > 0 {
                    Button(action: {
                        pageNum -= 1
                    }, label: {
                        Text(NSLocalizedString("Back", comment: ""))
                    })
                }
                if titles.count > pageNum + 1 {
                    Button(action: {
                        pageNum += 1
                    }, label: {
                        Text(NSLocalizedString("Next", comment: ""))
                    })
                } else {
                    Button(action: {
                        UserDefaults.standard.set(true, forKey: "isStarted")
                        isStarted = true
                    }, label: {
                        Text(NSLocalizedString("Start", comment: ""))
                    })
                }
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottom)
        .padding(.horizontal, 20)
        .padding(.bottom, 100)
    }
}

struct TutorialView_Previews: PreviewProvider {
    @State static var isStarted = false
    static var previews: some View {
        TutorialView(isStarted: $isStarted)
    }
}
