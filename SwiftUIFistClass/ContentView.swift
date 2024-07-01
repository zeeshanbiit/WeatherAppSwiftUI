//
//  ContentView.swift
//  SwiftUIFistClass
//
//  Created by Muhammad Zeshan on 26/06/2024.
//

import SwiftUI


struct ContentView: View {

    @State private  var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack{
                CityView(cityName: "Islamabad, PK")
                MainWeatherView(weatherImage: "sun.max.fill", Temperature: "40")
                Spacer()
                HStack(spacing:20){
                    WeatherView(DayofWeek: "MON", TemperatureImage: "sunrise.fill", Temperature: 43)
                    WeatherView(DayofWeek: "TUE", TemperatureImage: "sun.max.fill", Temperature: 40)
                    WeatherView(DayofWeek: "WED", TemperatureImage: "sun.dust.fill", Temperature: 38)
                    WeatherView(DayofWeek: "THU", TemperatureImage: "cloud.rain.fill", Temperature: 25)
                    WeatherView(DayofWeek: "FRI", TemperatureImage: "sunset.fill", Temperature: 18)
                }
                
                Spacer()
                
                Button{
                    isNight.toggle()
                }label: {
                   WeatherButton()
                }
                Spacer()
                
            }
           
            
        }
        
    }
}

#Preview {
    ContentView()
}

struct WeatherView: View {
    var DayofWeek: String
    var TemperatureImage:String
    var Temperature:Int
    
    
    var body: some View {
       
        VStack{
            Text(DayofWeek)
                .font(.system(size: 20,weight: .medium))
                .foregroundStyle(.white)
            Image(systemName:TemperatureImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            Text("\(Temperature)")
                .font(.system(size: 18,weight: .medium))
                .foregroundStyle(.white)
            }
    }
}

struct BackgroundView: View {
    
    var isNight : Bool
    
    var body: some View {
        LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")], startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
    }
}

struct CityView:View{
    var cityName:String
    var body: some View{
        Text(cityName)
            .font(.system(size: 32,weight: .medium,design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct MainWeatherView: View {
    
    var weatherImage:String
    var Temperature:String
    var body: some View {
        VStack{
            Image(systemName:weatherImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            Text("\(Temperature) º")
                .font(.system(size: 76,weight: .medium))
                .foregroundStyle(.white)
        }
    }
}
