//
//  RatingsView.swift
//  PizzaDemo
//
//  Created by IACD-013 on 2022/04/26.
//

import SwiftUI

struct RatingsView: View {
    var count:Int = 5
    
    var rating:[String]{
        let symbloName = "\(count).circle"
        return Array(repeating: symbloName, count: count)
    }
    
    var body: some View {
        HStack {
            //id:\.self makes whatevert this value is it's is own ID
            ForEach(rating, id:\.self){item in
                Image(systemName: "star.fill")
                    .font(.headline)
            }
        }
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView(count: 3)
            .previewLayout(.sizeThatFits)
    }
}
