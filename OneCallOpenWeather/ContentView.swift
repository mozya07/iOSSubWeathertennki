//
//  ContentView.swift
//  OneCallOpenWeather
//
//  Created by cmStudent on 2023/01/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            Image("sora")
                .resizable()
                           .aspectRatio(contentMode: .fill)
                           .edgesIgnoringSafeArea(.all)
       
            VStack {
                
                Group {
                Spacer()
                Spacer()
                Spacer()
                }
                Text("関東地域の天気")
                    .foregroundColor(Color.white)
                    .font(.system(size: 40))
                
                Spacer()
                Spacer()
                Spacer()
                
                PrefecturesView()
                Spacer()
                
                Text("画像をタップしていただくと、　")
                    .foregroundColor(Color.white)
                    .font(.system(size: 18))
                
                Text("その場所の天気が表示されます。")
                    .foregroundColor(Color.white)
                    .font(.system(size: 18))
                
                              
            }
          
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
