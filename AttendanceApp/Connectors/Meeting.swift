//
//  Meeting.swift
//  AttendanceApp
//
//  Created by NWACC_MacBookAir_01 on 5/1/18.
//  Copyright © 2018 Baker, Allen. All rights reserved.
//

import Foundation

class Meeting : Connector {
    
    var id              : Int
    var description     : String
    var status          : String
    var title           : String
    var location        : String
    var startTime       : Date
    var endTime         : Date
    var createdTime     : Date
    var createdBy       : Int
    var lastModifiedTime: Date
    var lastModifiedBy  : Int
    
    override init() {
        self.id                 = 0
        self.description        = ""
        self.status             = ""
        self.title              = ""
        self.location           = ""
        self.startTime          = Date()
        self.endTime            = Date()
        self.createdTime        = Date()
        self.createdBy          = 0
        self.lastModifiedTime   = Date()
        self.lastModifiedBy     = 0
    }
    
}
