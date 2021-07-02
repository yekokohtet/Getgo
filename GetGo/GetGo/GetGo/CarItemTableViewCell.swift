//
//  CarItemTableViewCell.swift
//  GetGo
//
//  Created by Ye Ko on 03/07/2021.
//

import UIKit

class CarItemTableViewCell: UITableViewCell {
    
    static let identifier = "CarItemTableViewCell"

    @IBOutlet weak var parentCarView: UIView!
    @IBOutlet weak var dotView: UIView!
    @IBOutlet weak var viewDistance: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        
        parentCarView.layer.cornerRadius = 8
        dotView.layer.cornerRadius = dotView.frame.width / 2
        viewDistance.layer.cornerRadius = 5
        viewDistance.layer.borderColor = UIColor.gray.cgColor
        viewDistance.layer.borderWidth = 1
    }
    
}
