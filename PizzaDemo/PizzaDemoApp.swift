    //
    //  PizzaDemoApp.swift
    //  PizzaDemo
    //
    //  Created by IACD-013 on 2022/04/13.
    //

import SwiftUI

@main
struct PizzaDemoApp: App {
    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(UserPreferences())
                //            ContentView(orderModel: OrderModel())
                //                .environmentObject(UserPreferences())
        }
    }
}
