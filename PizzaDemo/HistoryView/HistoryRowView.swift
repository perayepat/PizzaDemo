//
//  HistoryRowView.swift
//  PizzaDemo
//
//  Created by IACD-013 on 2022/04/29.
//

import SwiftUI

struct HistoryRowView: View {
    var historyItem:HistoryItem
    var body: some View {
        HStack(alignment: .center, spacing: 15){
            Image("\(historyItem.id)_100w")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
               
            
            Text(historyItem.name)
                    .font(.title3)
                    .fontWeight(.light)
            Spacer()
        }
//        .overlay(
//            Image(systemName: "chevron.right")
//                .font(.title3)
//                .padding()
//            ,alignment: .trailing
//            )
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView(historyItem: HistoryModel().historyItems[1])
            .previewLayout(.sizeThatFits)
    }
}
