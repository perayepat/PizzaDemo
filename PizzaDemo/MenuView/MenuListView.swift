//
//  MenuListView.swift
//  PizzaDemo
//
//  Created by IACD-013 on 2022/04/26.
//

import SwiftUI

struct MenuListView: View {
    var menuList = MenuModel().menu
    @ObservedObject var orderModel:OrderModel //was a state 
    var body: some View {
        VStack {
            ListHeaderView(orderModel: orderModel,text: "Menu")
            NavigationView{
                List(menuList){ item in
                    NavigationLink(destination: MenuDetailView(orderModel: self.orderModel, menuItem: item)){
                        MenuRowView(menuItem: item)
                            //Test purposes
                            .padding()
                            .listRowInsets(EdgeInsets())
                    }
                }
                .navigationBarTitle("Pizza Order")
                .listStyle(.plain)
                
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView(orderModel: OrderModel())
    }
}




