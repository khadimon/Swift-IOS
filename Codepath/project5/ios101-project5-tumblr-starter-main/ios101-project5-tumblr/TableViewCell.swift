//
//  TableViewCell.swift
//  ios101-project5-tumblr
//
//  Created by Khadichabonu Valieva on 18/10/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var imagePost: UIImageView!
    @IBOutlet weak var namePost: UILabel!
    @IBOutlet weak var descriptionPost: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
