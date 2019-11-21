//
//  FieldEventsDetailViewController.swift
//  Field Survey
//
//  Created by Adrian Atanasov on 11/20/19.
//  Copyright © 2019 Adrian Atanasov. All rights reserved.
//

import UIKit

class FieldEventsDetailViewController: UIViewController {
    
    
    var fieldEvent: FieldEvent?
    var dateFormatter = DateFormatter()
    @IBOutlet weak var fieldIcon: UIImageView!
    @IBOutlet weak var datelabel: UILabel!
    @IBOutlet weak var observLabel: UILabel!
    @IBOutlet weak var desLabel: UILabel!

        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            dateFormatter.dateStyle = .medium
            dateFormatter.timeStyle = .medium
            
            fieldIcon.image = fieldEvent?.entity.image
            observLabel.text = fieldEvent?.title
            desLabel.text = fieldEvent?.description
            if let date = fieldEvent?.date{
                datelabel.text = dateFormatter.string(from: date)
            } else {
                datelabel.text = ""
            }
            
        }
        
    }
