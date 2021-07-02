//
//  RentACarViewController.swift
//  GetGo
//
//  Created by Ye Ko on 02/07/2021.
//

import UIKit

class RentACarViewController: UIViewController {
    
    static let identifier = "RentACarViewController"

    @IBOutlet weak var btnActionAlert: UIView!
    @IBOutlet weak var btnActionLocate: UIView!
    @IBOutlet weak var parentLocationView: UIView!
    @IBOutlet weak var parentBottomView: UIView!
    @IBOutlet weak var parentDateTimeView: UIView!
    @IBOutlet weak var parentDurationView: UIView!
    @IBOutlet weak var btnGo: UIView!
    @IBOutlet weak var viewAvailableOne: UIView!
    @IBOutlet weak var viewAvailableTwo: UIView!
    @IBOutlet weak var viewAvailableThree: UIView!
    @IBOutlet weak var viewOutterMost: UIView!
    @IBOutlet weak var viewMiddle: UIView!
    @IBOutlet weak var viewInnerMost: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnActionAlert.layer.cornerRadius = btnActionAlert.frame.width / 2
        btnActionLocate.layer.cornerRadius = btnActionLocate.frame.width / 2

        parentLocationView.layer.cornerRadius = 8
        parentLocationView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        parentBottomView.layer.cornerRadius = 8
        parentBottomView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        parentDateTimeView.layer.cornerRadius = 8
        parentDateTimeView.layer.maskedCorners = [.layerMinXMaxYCorner]
        
        btnGo.layer.cornerRadius = 8
        btnGo.layer.maskedCorners = [.layerMaxXMaxYCorner]
        
        viewAvailableOne.layer.cornerRadius = 8
        viewAvailableTwo.layer.cornerRadius = 8
        viewAvailableThree.layer.cornerRadius = 8
        
        viewOutterMost.layer.cornerRadius = viewOutterMost.frame.width / 2
        viewMiddle.layer.cornerRadius = viewMiddle.frame.width / 2
        viewInnerMost.layer.cornerRadius = viewInnerMost.frame.width / 2
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onTapGo))
        btnGo.isUserInteractionEnabled = true
        btnGo.addGestureRecognizer(tapGesture)
        
    }
    
    @objc func onTapGo() {
        let vc = storyboard?.instantiateViewController(identifier: SearchViewController.identifier) as! SearchViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
}
