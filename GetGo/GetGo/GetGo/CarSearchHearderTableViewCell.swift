//
//  CarSearchHearderTableViewCell.swift
//  GetGo
//
//  Created by Ye Ko on 03/07/2021.
//

import UIKit

protocol CarSearchHeardItemDelegate {
    func onBack()
}

class CarSearchHearderTableViewCell: UITableViewCell {
    
    static let identifier = "CarSearchHearderTableViewCell"

    @IBOutlet weak var btnBack: UIImageView!
    
    var delegate: CarSearchHeardItemDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onTapBack))
        btnBack.isUserInteractionEnabled = true
        btnBack.addGestureRecognizer(tapGesture)
    }
    
    @objc func onTapBack() {
        delegate?.onBack()
    }

}
