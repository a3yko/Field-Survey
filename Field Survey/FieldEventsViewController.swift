//
//  FieldEventsViewController.swift
//  Field Survey
//
//  Created by Adrian Atanasov on 11/20/19.
//  Copyright © 2019 Adrian Atanasov. All rights reserved.
//

import UIKit

class FieldEventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
    @IBOutlet weak var fieldEventsTableView: UITableView!
    
        
        let events = FieldEventsJSONLoader.load(fileName: "field_observations")
        
        
      
        
        let dateFormatter = DateFormatter()
        
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return events.count
        }
        
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "fieldCell", for: indexPath)
            
            if let cell = cell as? FieldEventsTableViewCell {
                let fieldEvent = events[indexPath.row]
                cell.fieldIcon.image = fieldEvent.entity.image
                cell.titleLabel.text = fieldEvent.title
                cell.dateLabel.text = dateFormatter.string(from: fieldEvent.date)
            }
            
            return cell
        }
        

        override func viewDidLoad() {
            super.viewDidLoad()
            
            dateFormatter.dateStyle = .medium
            dateFormatter.timeStyle = .medium
            
        }
        
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let destination = segue.destination as? FieldEventsDetailViewController,
                let row = fieldEventsTableView.indexPathForSelectedRow?.row{
                destination.fieldEvent = events[row]
        }
            
    }

}
