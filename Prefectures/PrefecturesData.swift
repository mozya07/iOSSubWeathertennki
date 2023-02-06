//
//  PrefecturesData.swift
//  OneCallOpenWeather
//
//  Created by cmStudent on 2023/01/17.
//

import SwiftUI

class PrefecturesData : ObservableObject {
    
    static var sharedPrefecturesData = PrefecturesData()
    
    @Published var PrefecturesJP = ["水戸",
                                    "前橋",
                                    "さいたま",
                                    "千葉県",
                                    "東京都",
                                    "宇都宮",
                                    "横浜",
                                    "大島"]
    
    @Published var PrefecturesUS = ["Mito",
                                    "Maebachi",
                                    "Saitama",
                                    "Chiba",
                                    "Tokyo",
                                    "Utsunomiya",
                                    "Yokohama",
                                    "Ochima"]
   
    @Published var Coordinate:[[Double]] =
    [[36.22,140.28],
     [36.25,139.13],
     [35.5125,139.3856],
     [35.3617,140.0724],
     [35.4122,139.4130],
     [36.5594802,139.8984874],
     [35.4660694,139.6226196],]
}

