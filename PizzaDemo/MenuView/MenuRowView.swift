//
//  MenuRowView.swift
//  PizzaDemo
//
//  Created by IACD-013 on 2022/04/26.
//

import SwiftUI

struct MenuRowView: View {
    var menuItem:MenuItem = testMenuItem
    var body: some View {
        VStack(alignment: .center){
            HStack(alignment: .top, spacing: 15){
                Image("\(menuItem.id)_100w")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                
                Spacer()
                VStack(alignment: .trailing){
                    Text(menuItem.name)
                        .font(.title3)
                        .fontWeight(.light)
                    RatingsView(count: menuItem.rating)
                }
//                Spacer()
            }
            Text(menuItem.description)
                .padding()
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(menuItem: MenuModel().menu[1])
            .previewLayout(.sizeThatFits)
    }
}


