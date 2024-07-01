//
//  WeatherButton.swift
//  SwiftUIFistClass
//
//  Created by Muhammad Zeshan on 01/07/2024.
//

import SwiftUI

struct WeatherButton : View{
    
    var body: some View {
        Text("Change Day Time")
            .foregroundStyle(.gray)
            .frame(width:280, height: 50)
            .background(.white)
            .font(.system(size: 24,weight: .bold,design: .default))
            .cornerRadius(10)
    }
    
}
