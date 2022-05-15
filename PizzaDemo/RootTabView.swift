//
//  RootTabView.swift
//  PizzaDemo
//
//  Created by IACD-013 on 2022/05/11.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView{
            ContentView(orderModel: OrderModel())
                .tabItem{
                    Image(systemName: "cart")
                    Text("Order")
                }
            HistoryView()
                .tabItem{
                    Image(systemName: "book")
                    Text("History")
                }
        }
        // The selected tab will change to this color 
        .accentColor(Color("B1"))
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
            .environmentObject(UserPreferences())
    }
}
