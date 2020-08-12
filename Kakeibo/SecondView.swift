//
//  SecondView.swift
//  Kakeibo
//
//  Created by 中尾　達也 on 2020/08/11.
//  Copyright © 2020 Sample Inc. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        VStack {
            Text("Second View")
//            Button("戻る") {
//                self.model.secondViewPushed = false
//            }
//            NavigationLink(destination: ContentView(), isActive: self.$model.secondViewPushed) {
//                Button(action: {
//                    self.model.secondViewPushed = false
//                }) {
//                    Text("Home")
//                }
//            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
