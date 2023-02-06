//
//  WeatherSheetViewModel.swift
//  OneCallOpenWeather
//
//  Created by cmStudent on 2023/01/17.
//

import SwiftUI


class WeatherSheetViewModel : ObservableObject {
    
    // 別ファイル
    @ObservedObject var prefecturesData = PrefecturesData.sharedPrefecturesData
    @Published var eightWeatherStructure : EightWeatherStructure? = nil
    let apiService = APIService.shared
    
    // 変数
    @Published var selectPlaceName : String = "東京"
    @Published var selectNumber : Int = 0
    var lat : Double = 0 // 緯度
    var lon : Double = 0 // 経度
    
    // シート変数
    @Published var showingSheet : Bool = false
    
    // 個別のキー
    //let KeyCode = "864e988f1abe34c53726a3ce6ffadcaf"
    var KeyCode : String = ""
    
    // シングルトン
    static var sharedsheet = WeatherSheetViewModel()
    
    // URL生成 + 天気データ取得
    func getWeatherForecast() {
        
        KeyCode = APIkeyHelper().getValue(key: "OpenWeatherAPIkey") as! String
        
                apiService.getJSON(urlString: "https://api.openweathermap.org/data/2.5/onecall?lat=\(self.lat)&lon=\(self.lon)&lang=ja&exclude=current,minutely,hourly,alerts&appid=\(self.KeyCode)", dateDecodingStrategy: .secondsSince1970) { (result:Result<EightWeatherStructure,APIService.APIError>) in
                    switch result {
                    case .success(let forecast):
                        self.eightWeatherStructure = forecast
                    case .failure(let apiError):
                        switch apiError {
                        case .error(let errorString):
                            print(errorString)
                        }
                    }
                }
    }
    
    // 座標取得
    func getCoordinate() {
        lat = prefecturesData.Coordinate[selectNumber][0]
        lon = prefecturesData.Coordinate[selectNumber][1]
    }
    
    // 選んだ場所の名前を取得
    func getselectPlaceName() {
        selectPlaceName = prefecturesData.PrefecturesJP[selectNumber]
    }
    
    func fullCall() {
        getCoordinate()
        getselectPlaceName()
        getWeatherForecast()
    }
    
}
