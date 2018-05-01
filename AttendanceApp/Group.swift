//
//  Group.swift
//  AttendanceApp
//
//  Created by NWACC_MacBookAir_01 on 5/1/18.
//  Copyright © 2018 Baker, Allen. All rights reserved.
//

import Foundation

class Group : Connector {
    
    var id              : Int
    var name            : String
    var description     : String
    
    override init() {
        self.id           =  0
        self.name         = ""
        self.description  = ""
    }
    
}
