//
//  FieldEvent.swift
//  Field Survey
//
//  Created by Adrian Atanasov on 11/18/19.
//  Copyright © 2019 Adrian Atanasov. All rights reserved.
//

import Foundation

struct FieldEvent{
    let entity: Classification
    let title: String
    let description: String
    let date: Date
    
    init(entity: Classification, title: String, description: String, date: Date){
        self.entity = entity
        self.title = title
        self.description = description
        self.date = date
    }
    init?(eventName: String, title: String, description: String, date: Date){
        if let entity = Classification(rawValue: eventName){
            self.init(entity: entity, title: title, description: description, date: date)
        }else{
            return nil
        }
    }
}

