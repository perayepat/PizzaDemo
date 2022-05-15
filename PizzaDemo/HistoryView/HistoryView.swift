//
//  PizzaHistoryView.swift
//  PizzaDemo
//
//  Created by IACD-013 on 2022/04/26.
//

import SwiftUI

struct HistoryView: View {
    @State var imageID:Int = 0
    var body: some View {
        VStack{
            PageTitleView(title: "Pizza History")
                .overlay(
                    Rectangle().frame(height: 1).offset(y: 4)
                    , alignment: .bottom)
                .padding(.bottom, 10)
                SelectedImageView(image: "\(imageID)_250w")
                .frame(width: 200, height: 150)
                
                
            HistoryListView(imageID: $imageID)
                .layoutPriority(1)
//                .offset(x: 0, y: -10)
        }
    }
}

struct PizzaHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
        HistoryView()
            .preferredColorScheme(.dark)
    }
}
