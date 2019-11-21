//
//  FieldEventsTableViewCell.swift
//  Field Survey
//
//  Created by Adrian Atanasov on 11/20/19.
//  Copyright © 2019 Adrian Atanasov. All rights reserved.
//

import UIKit

class FieldEventsTableViewCell: UITableViewCell {

    @IBOutlet weak var fieldIcon: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
