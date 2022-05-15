//
//  ContentView.swift
//  PizzaDemo
//
//  Created by IACD-013 on 2022/04/13.
//
/// Note:
/// $ sign when writing with your binding variable and a normal var when your reading from it
/// Observable objects are used mainly for the models while state and binding are used for the view and view conditions
/// State and binding need a chain in order to work
/// If There's a probelm with object obeservers and binding , state and binidng for view related tasks and Object observers for Model related tasks
/// `Enviroment Objects` dont't have to go through the same process as state, for larger data sets trickle it down the hierachy

import SwiftUI

struct ContentView: View {
    @ObservedObject var orderModel:OrderModel
    @State var isMenuDisplayed : Bool = true
    
    var body: some View {
        VStack {
//            ContentHeaderView()
//                .layoutPriority(2)
            Button(action:{self.isMenuDisplayed.toggle()}){
                PageTitleView(isDisplayingOrders : isMenuDisplayed, title: "Order Up" )
            }
            MenuListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
            OrderListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
                .animation(.spring())
//            Spacer()
        }
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(orderModel: OrderModel())
            .environmentObject(UserPreferences())
        ContentView(orderModel: OrderModel())
            .environmentObject(UserPreferences())
            .previewDevice("iPad Pro (9.7-inch)")
            .preferredColorScheme(.dark)
            
    }
}
