//
//  GroupUsers.swift
//  AttendanceApp
//
//  Created by NWACC_MacBookAir_01 on 5/1/18.
//  Copyright © 2018 Baker, Allen. All rights reserved.
//

import Foundation

class GroupUsers : Connector {
    
    var id              : Int
    var userID          : Int
    var groupID         : Int
    var userRole        : String
    
    override init() {
        self.id           = 0
        self.userID       = 0
        self.groupID      = 0
        self.userRole     = ""
    }
    
}
