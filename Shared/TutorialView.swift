//
//  TutorialView.swift
//  PasscordMagic
//
//  Created by yutank34 on 4/5/21.
//

import SwiftUI

struct TutorialView: View {
    @State var pageNum = 0
    let titles = [
        "マジックのやり方",
        "紙とペンを用意してください。",
        "「パスコードを変更します」と良い、パスコードを変更するふりをしてこのアプリを起動してください。",
        "「好きな4文字を紙に書いてください。あなたが書く数字を予測してすでにパスコードに設定しています」と言ってください。",
        "相手にパスコード入力画面を見せながら相手が書いた数字を入力してください。",
        "ホーム画面が表示されるので相手は自分の書いた番号でロックが解除されたと思います",
    ]
    let images = [
        "none",
        "none",
        "none",
        "none",
        "none",
        "none"
    ]
    var body: some View {
        VStack {
            Text(titles[pageNum])
            if images[pageNum] != "none" {
                Image(images[pageNum])
            }
            HStack {
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
                        TutorialView()
                    }, label: {
                        Text("はじめる")
                    })
                }
            }
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
