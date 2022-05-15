    //
    //  HistoryListView.swift
    //  PizzaDemo
    //
    //  Created by IACD-013 on 2022/04/29.
    //

import SwiftUI

struct HistoryListView: View {
    var historyList = HistoryModel()
    @Binding var imageID:Int
    
    var body: some View {
        VStack {
            NavigationView{
                List(historyList.historyItems){ item in
                    NavigationLink(destination:
                                    HistoryDetailView(historyItem: item, imageID: self.$imageID)){
                        HistoryRowView(historyItem: item)
                    }
                }
                .listStyle(.inset)
            }
        }
    }
}

struct HistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryListView(imageID: .constant(0))
    }
}
