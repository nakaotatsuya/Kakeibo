//
//  ContentView.swift
//  Kakeibo
//
//  Created by 中尾　達也 on 2020/08/11.
//  Copyright © 2020 Sample Inc. All rights reserved.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @State var check: Bool = true
    var body: some View {
        VStack{
            Text("Hello, World!")
            if self.check {
                Kakeibo()
            } else {
                Text("aaa")
            }
            
            Button(check ? "Home" : "Calender"){
                self.check.toggle()
            }
            //Kakeibo()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Kakeibo: View{
    @EnvironmentObject var model: Model
    
    @State var price = ""
    @State var total = 0
    @State var selection: [String] = ["食費"]
    @State var data: [String] = ["食費", "交通費", "衣服", "医療費", "美容費"]
    @State var selectionDate = Date()
    
    var body: some View{
        NavigationView{
            Form {
                Section {
                    TextField("金額", text: $price).keyboardType(.numberPad)
                    Spacer()
                    Picker("カテゴリー", selection: self.$selection[0]) {
                            ForEach(0..<self.data.count) { row in
                                Text(verbatim: self.data[row]).tag(self.data[row])
                            }
                        }
                    Spacer()
                    DatePicker("日付",selection: $selectionDate, displayedComponents: .date)
                    Spacer()
                    Button(action: {
                        self.total = Int(self.price)!
                    
                    }) {
                        Text("Save")
                    }
                    Text("\(self.total) 円")
                    
//                    NavigationLink(destination: SecondView(), isActive: self.$model.secondViewPushed) {
//                        Button(action: {
//                            self.model.secondViewPushed = true
//                        }) {
//                            Text("Calender")
//                        }
//                    }
                }
            }
        }
    }
    
}

//struct WebView: UIViewRepresentable {
//    var url : URL
//    func makeUIView(context: Context) -> WKWebView{
//        return WKWebView()
//    }
//    func updateUIView(_ uiView: WKWebView, context: Context) {
//        let request = URLRequest(url: url)
//        uiView.load(request)
//    }
//}
