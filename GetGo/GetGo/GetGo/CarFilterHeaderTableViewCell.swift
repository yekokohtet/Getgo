//
//  CarFilterHeaderTableViewCell.swift
//  GetGo
//
//  Created by Ye Ko on 03/07/2021.
//

import UIKit

class CarFilterHeaderTableViewCell: UITableViewCell {
    
    static let identifier = "CarFilterHeaderTableViewCell"

    @IBOutlet weak var btnMap: UIView!
    @IBOutlet weak var btnFilter: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        btnMap.layer.cornerRadius = 5
        btnFilter.layer.cornerRadius = 5

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onTapMap))
        btnMap.isUserInteractionEnabled = true
        btnMap.addGestureRecognizer(tapGesture)
        
        let tapFilterGesture = UITapGestureRecognizer(target: self, action: #selector(onTapFilter))
        btnFilter.isUserInteractionEnabled = true
        btnFilter.addGestureRecognizer(tapFilterGesture)
    }
    
    @objc func onTapMap() {
        print("back!!!!!")
    }
    
    @objc func onTapFilter() {
        print("back!!!!!")
    }
}
