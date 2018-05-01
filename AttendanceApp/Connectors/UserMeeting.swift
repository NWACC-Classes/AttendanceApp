//
//  UserMeeting.swift
//  AttendanceApp
//
//  Created by NWACC_MacBookAir_01 on 5/1/18.
//  Copyright © 2018 Baker, Allen. All rights reserved.
//

import Foundation

class UserMeeting : Connector {
    
    var id              : Int
    var userID          : Int
    var meetingID       : Int
    var time            : Date
    var createdBy       : Int
    
    override init() {
        self.id           = 0
        self.userID       = 0
        self.meetingID    = 0
        self.time         = Date()
        self.createdBy    = 0
    }
    
}
