//
//  TableData.swift
//  AttendanceApp
//
//  Created by NWACC_MacBookAir_01 on 4/26/18.
//  Copyright © 2018 Baker, Allen. All rights reserved.
//

import Foundation

struct userTableRow {
    var id: Int
    var name: String
    var email: String
    var phone: String
    var organization: String
    var title: String
    var documentID: Int
    var isChanged: Bool
}

struct user_meetingTableRow {
    var id: Int
    var userID: Int
    var meetingID: Int
    var time: Date
    var createdBy: Int
    var isChanged: Bool
}

//Other structs will follow the same pattern.
//The control layer will contain functions that return arrays of these [tableName]TableRow structs containing the data from the table. When creating these structs, the function will set isChanged to false.
//The control layer will also contain functions that accept arrays of the above configuration as parameters, and then update the database tables whenever the isChanged value is true.
