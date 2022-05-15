//
//  PageTitleView.swift
//  PizzaDemo
//
//  Created by IACD-013 on 2022/04/26.
//

import SwiftUI


/// When working with system enviroments the `(\.CODE)` is needed
/// dynamic type as seen in font is what's used to make sure the font stays consistent on all screens
/// 

let staticfont = Font.system(size: 22)

struct PageTitleView: View {
    @Environment(\.verticalSizeClass) var sizeClass
    var isDisplayingOrders: Bool! = nil
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .fontWeight(.light)
                .font(sizeClass != .compact ? .largeTitle : staticfont)
                .padding()
            Spacer()
        }
        .overlay(
            Image(systemName: "chevron.up.square")
                .rotationEffect(isDisplayingOrders ?? false ? Angle(degrees: 0.0) : Angle(degrees: 180.0))
                .animation(.easeInOut(duration: 0.5))
                .font(sizeClass != .compact ? .title : staticfont)
                .foregroundColor(isDisplayingOrders != nil ? Color("G1") : .clear)
                .padding()
            ,alignment: .trailing
        )
    }
}


struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(isDisplayingOrders:true, title: "Order Up")
    }
}
