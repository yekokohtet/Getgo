//
//  BookingDetailsViewController.swift
//  GetGo
//
//  Created by Ye Ko on 03/07/2021.
//

import UIKit

class BookingDetailsViewController: UIViewController {
    
    static let identifier = "BookingDetailsViewController"

    @IBOutlet weak var btnBack: UIImageView!
    @IBOutlet weak var viewConfirmed: UIView!
    @IBOutlet weak var viewDuration: UIView!
    @IBOutlet weak var viewAddCalendar: UIView!
    @IBOutlet weak var viewExtend: UIView!
    @IBOutlet weak var viewGetDirections: UIView!
    @IBOutlet weak var view10Plus: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onTapBack))
        btnBack.isUserInteractionEnabled = true
        btnBack.addGestureRecognizer(tapGesture)

        viewConfirmed.layer.cornerRadius = 5
        viewDuration.layer.cornerRadius = 5
        
        viewAddCalendar.layer.cornerRadius = 5
        viewAddCalendar.layer.borderColor = UIColor.gray.cgColor
        viewAddCalendar.layer.borderWidth = 1
        
        viewExtend.layer.cornerRadius = 5
        viewExtend.layer.borderColor = UIColor.gray.cgColor
        viewExtend.layer.borderWidth = 1
        
        viewGetDirections.layer.cornerRadius = 5
        viewGetDirections.layer.borderColor = UIColor.gray.cgColor
        viewGetDirections.layer.borderWidth = 1
        
        view10Plus.layer.cornerRadius = 5
        view10Plus.layer.borderColor = UIColor.gray.cgColor
        view10Plus.layer.borderWidth = 1
    }
    
    @objc func onTapBack() {
        self.dismiss(animated: true, completion: nil)
    }
  
}
