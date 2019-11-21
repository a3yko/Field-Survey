//
//  FieldEventsJsonLoader.swift
//  Field Survey
//
//  Created by Adrian Atanasov on 11/20/19.
//  Copyright © 2019 Adrian Atanasov. All rights reserved.
//

import Foundation


class FieldEventsJSONLoader{
    
    class func load(fileName: String) -> [FieldEvent]{
        var events = [FieldEvent]()
        
      if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
        let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
        events = FieldEventsJSONParser.parse(data)
        }
        return events
    }
}

