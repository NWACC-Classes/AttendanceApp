//
//  Connector.swift
//  Example
//
//  Created by NWACC_MacBookAir_01 on 4/24/18.
//  Copyright © 2018 NWACC_MacBookAir_01. All rights reserved.
//

import Foundation

class Connector {
    
    
    func save() -> Void {
        //Create a SQL INSERT
        let _TABLE  = String(describing: type(of: self)).lowercased()
        var _FIELDS = "", _VALUES = ""
        
        //Loop through class' attributes to create the SQL statements
        let mirror = Mirror(reflecting: self)
        for (_, attr) in mirror.children.enumerated() {
            if let property_name = attr.label as String! {
                _FIELDS += ",\(property_name)"
                _VALUES += ",'\(attr.value)'"
            }
        }
        //Remove the first comma
        _FIELDS  = String(_FIELDS.dropFirst())
        _VALUES  = String(_VALUES.dropFirst())
        
        //Final Insert statement
        let sql = "INSERT INTO \(_TABLE) (\(_FIELDS)) VALUES (\(_VALUES))"
        connect(sql)
    }
    
    func update(idName : String, idValue : String) -> Void {
        //Create a SQL UPDATE
        let _TABLE  = String(describing: type(of: self)).lowercased()
        var _VALUES = ""
        
        //Loop through class' attributes to create the SQL statements
        let mirror = Mirror(reflecting: self)
        for (_, attr) in mirror.children.enumerated() {
            if let property_name = attr.label as String! {
                if ( property_name != idName ){
                    _VALUES += ",\(property_name)='\(attr.value)'"
                }
            }
        }
        //Remove the first comma
        _VALUES  = String(_VALUES.dropFirst())
        
        //Final Insert statement
        let sql = "UPDATE \(_TABLE) SET \(_VALUES) WHERE \(idName) = \(idValue)"
        connect(sql)
    }
    
    func load(idName : String, idValue : String) -> Void {
        //Create a SQL SELECT
        let _TABLE  = String(describing: type(of: self)).lowercased()
        var _FIELDS = ""
        
        //Loop through class' attributes to create the SQL statements
        let mirror = Mirror(reflecting: self)
        for (_, attr) in mirror.children.enumerated() {
            if let property_name = attr.label as String! {
                _FIELDS += ",\(property_name)"
            }
        }
        //Remove the first comma
        _FIELDS  = String(_FIELDS.dropFirst())
        
        //Final Insert statement
        let sql = "SELECT \(_FIELDS) FROM \(_TABLE) WHERE \(idName) = \(idValue)"
        connect(sql)
    }
    
    private func connect(_ sql : String ) -> Void {
        let url = "http://172.20.220.65/webserver/"
        
        var components = URLComponents(string: url)!
        components.query = "sql=\(sql)"
        components.percentEncodedQuery = components.percentEncodedQuery?.replacingOccurrences(of: "+", with: "%2B")
        
        let request = URLRequest(url: components.url!)
        let task = URLSession.shared.dataTask(with: request) {(data, response, error) in
            print(NSString(data: data!, encoding: String.Encoding.utf8.rawValue)!)
            
            //return data!
            
       }
        
        task.resume()
        //print(sql)
    }
    

    

    
    
    
    
    
}
