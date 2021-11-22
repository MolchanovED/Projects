//
//  CatalogeBase.swift
//  UserMenu
//
//  Created by EgorM on 18.10.2021.
//

import Foundation
import SwiftUI

/*struct AirTickets: Identifiable  {
    let id: Int
    let name: String
    let price: Int
    let image: String
     var isLike: Bool
    mutating func toggleLike (isLike: Bool){
        self.isLike = isLike
    }
  
   
    
}
 */

class ClassAirTickets: Identifiable  {
    let id: Int
    let name: String
    let price: Int
    let image: String
     var isLike: Bool
    
    init(id: Int, name: String, price: Int, image: String, isLike: Bool){
        self.id = id
        self.name = name
        self.price = price
        self.image = image
        self.isLike = isLike
    }
  
    
    
}


struct LikeTickets: Identifiable {
    let id: Int
    let name: String
    let price: Int
    let image: String
    
    
}

/*class AirTickets1{
    
    let airTikets = ["Kiev-Viena" : 240, "Kiev-Istanbul" : 340, "Kiev-Milano" : 260,"Kiev-Barselona" : 320, "Kiev-Rome" : 345, "Kiev-Paris": 335, "Kiev-Warshava" : 130, "Kiev-Praga": 210, "Kiev-Berlin" : 360]
    let airTiketsUA = ["Kiev-Lviv": 50, "Kiev-Odessa" : 45, "Kiev-Kharkiv": 30, "Kiev-Zaporizhe": 40]
}*/


class TrainTickets{
    
    let trainTikets = ["Kiev-Lviv": 20, "Kiev-Odessa" : 35, "Kiev-Kharkiv": 20, "Kiev-Zaporizhe": 30]
   // let Images: [String] = [ "paris", "paris"]
    
}
