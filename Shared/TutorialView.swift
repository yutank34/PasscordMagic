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
        "手品のやり方",
        "紙とペンを用意してください。",
        "「パスコードを変更します」と良い、パスコードを変更するふりをしてこのアプリを起動してください。",
        "「好きな4文字を紙に書いてください。あなたが書く数字を予測してすでにパスコードに設定しています」と言ってください。",
        "相手にパスコード入力画面を見せながら相手が書いた数字を入力してください。",
        "ホーム画面が表示されるので相手は自分の書いた番号でロックが解除されたと思います",
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
            Text(titles[pageNum])
            Spacer()
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                if pageNum > 0 {
                    Button(action: {
                        pageNum -= 1
                    }, label: {
                        Text("戻る")
                    })
                }
                if titles.count > pageNum + 1 {
                    Button(action: {
                        pageNum += 1
                    }, label: {
                        Text("次へ")
                    })
                } else {
                    Button(action: {
                        UserDefaults.standard.set(true, forKey: "isStarted")
                        isStarted = true
                    }, label: {
                        Text("はじめる")
                    })
                }
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottom)
        .padding(.bottom, 100)
    }
}

struct TutorialView_Previews: PreviewProvider {
    @State static var isStarted = false
    static var previews: some View {
        TutorialView(isStarted: $isStarted)
    }
}
