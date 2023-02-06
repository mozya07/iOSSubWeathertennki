//
//  PrefecturesView.swift
//  OneCallOpenWeather
//
//  Created by cmStudent on 2023/01/17.
//

import SwiftUI

struct PrefecturesView: View {
    
    @ObservedObject var weatherSheetViewModel = WeatherSheetViewModel.sharedsheet

    
    var body: some View {
    
       
            
            ZStack {
                
                ScrollView(.horizontal) {
                    
                    HStack {
                    
                    Spacer(minLength: 20)
                    
                    VStack {
                        Text("横浜")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .underline()
                        Button(action: {
                            
                            weatherSheetViewModel.selectNumber = 6
                            weatherSheetViewModel.fullCall()
                            weatherSheetViewModel.showingSheet = true
                      
                    }) {
                        Image("横浜")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                    }.sheet(isPresented: $weatherSheetViewModel.showingSheet) {
                               WeatherSheetView()
                                    }
                    }
                    
                    VStack {
                        Text("東京")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .underline()
                        Button(action: {
                            
                            weatherSheetViewModel.selectNumber = 4
                            weatherSheetViewModel.fullCall()
                            weatherSheetViewModel.showingSheet = true
                      
                    }) {
                        Image("東京")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                    }.sheet(isPresented: $weatherSheetViewModel.showingSheet) {
                               WeatherSheetView()
                                    }
                    }
                    
                    VStack {
                        Text("さいたま")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .underline()
                        Button(action: {
                            
                            weatherSheetViewModel.selectNumber = 2
                            weatherSheetViewModel.fullCall()
                            weatherSheetViewModel.showingSheet = true
                      
                    }) {
                        Image("埼玉")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                    }.sheet(isPresented: $weatherSheetViewModel.showingSheet) {
                               WeatherSheetView()
                                    }
                    }
                    
                    VStack {
                        Text("前橋")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .underline()
                        Button(action: {
                            
                            weatherSheetViewModel.selectNumber = 1
                            weatherSheetViewModel.fullCall()
                            weatherSheetViewModel.showingSheet = true
                      
                    }) {
                        Image("前橋")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                    }.sheet(isPresented: $weatherSheetViewModel.showingSheet) {
                               WeatherSheetView()
                                    }
                    }
                    
                    VStack {
                        Text("宇都宮")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .underline()
                        Button(action: {
                            
                            weatherSheetViewModel.selectNumber = 5
                            weatherSheetViewModel.fullCall()
                            weatherSheetViewModel.showingSheet = true
                      
                    }) {
                        Image("宇都宮")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                    }.sheet(isPresented: $weatherSheetViewModel.showingSheet) {
                               WeatherSheetView()
                                    }
                    }
                    
                    VStack {
                        Text("水戸")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .underline()
                        Button(action: {
                            
                            weatherSheetViewModel.selectNumber = 0
                            weatherSheetViewModel.fullCall()
                            weatherSheetViewModel.showingSheet = true
                      
                    }) {
                        Image("水戸")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                    }.sheet(isPresented: $weatherSheetViewModel.showingSheet) {
                               WeatherSheetView()
                                    }
                    }
                    
                    VStack {
                        Text("千葉")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .underline()
                        Button(action: {
                            
                            weatherSheetViewModel.selectNumber = 3
                            weatherSheetViewModel.fullCall()
                            weatherSheetViewModel.showingSheet = true
                      
                    }) {
                        Image("千葉")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                    }.sheet(isPresented: $weatherSheetViewModel.showingSheet) {
                               WeatherSheetView()
                                    }
                    }
                        
                    }
                }//
                
                
            }
        
    }
}

struct PrefecturesView_Previews: PreviewProvider {
    static var previews: some View {
        PrefecturesView()
    }
}
