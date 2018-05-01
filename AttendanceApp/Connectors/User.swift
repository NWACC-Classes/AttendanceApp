//
//  File.swift
//  Example
//
//  Created by NWACC_MacBookAir_01 on 4/24/18.
//  Copyright © 2018 NWACC_MacBookAir_01. All rights reserved.
//

import Foundation


class User : Connector {
    
    var id              : Int
    var name            : String
    var email           : String
    var phone           : String
    var organization    : String
    var title           : String
    var documentID      : Int
    
    override init() {
        self.id           = 0
        self.name         = ""
        self.email        = ""
        self.phone        = ""
        self.organization = ""
        self.title        = ""
        self.documentID   = 0
    }
    
}
