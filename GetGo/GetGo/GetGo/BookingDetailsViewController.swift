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
    @IBOutlet weak var ivParkOne: UIImageView!
    @IBOutlet weak var ivParkTwo: UIImageView!
    @IBOutlet weak var ivParkThree: UIImageView!
    @IBOutlet weak var carListCollectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carListCollectionView.register(UINib(nibName: CarItemCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CarItemCollectionViewCell.identifier)
        carListCollectionView.isPagingEnabled = true
        pageControl.numberOfPages = 3
        carListCollectionView.dataSource = self
        carListCollectionView.delegate = self
        
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
        
        ivParkOne.layer.cornerRadius = 5
        ivParkTwo.layer.cornerRadius = 5
        ivParkThree.layer.cornerRadius = 5
    }
    
    @objc func onTapBack() {
        self.dismiss(animated: true, completion: nil)
    }
  
}

extension BookingDetailsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarItemCollectionViewCell.identifier, for: indexPath) as! CarItemCollectionViewCell
        return cell
    }
}

extension BookingDetailsViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: 180)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
}
