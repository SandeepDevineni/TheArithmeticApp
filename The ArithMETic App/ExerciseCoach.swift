//
//  Exercise.swift
//  The ArithMETic App
//
//  Created by SandeepDevineni on 14/02/19.
//  Copyright © 2019 SandeepDevineni. All rights reserved.
//

import Foundation
struct  ExerciseCoach {
    static let sports:[String:Double] = ["Bicycling":8.0,"Jumping rope":12.3,"Running - slow":9.8,"Running - fast":23.0,"Tennis":8.0,"Swimming":5.8]
    static let kg:Double = 2.2
    static func energyConsumed(during:String,weight:Double,time:Double) -> Double {
        let met = sports[during]!
        let energyConsumed:Double = Double(String(format:"%.1f" , ((met * 3.5  * (weight/kg))/200)*time))!
        return energyConsumed
        
    }
    static func timeToLose1Pound(during: String,weight:Double) ->Double {
        let met:Double = sports[during]!
         let timetoLose1Pound:Double = Double(String(format:"%.1f" , (3500/((met * 3.5 * (weight/kg))/200))))!
        return timetoLose1Pound
    }
    
}
