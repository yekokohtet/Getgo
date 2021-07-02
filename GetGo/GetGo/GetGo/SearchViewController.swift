//
//  SearchViewController.swift
//  GetGo
//
//  Created by Ye Ko on 02/07/2021.
//

import UIKit

class SearchViewController: UIViewController {
    
    static let identifier = "SearchViewController"

    @IBOutlet weak var btnBack: UIImageView!
    @IBOutlet weak var btnMap: UIView!
    @IBOutlet weak var btnFilter: UIView!
    @IBOutlet weak var tableViewCarList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewCarList.register(UINib(nibName: CarItemTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: CarItemTableViewCell.identifier)
        tableViewCarList.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        tableViewCarList.dataSource = self
        tableViewCarList.delegate = self
        
        tableViewCarList.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: tableViewCarList.frame.size.width, height: 1))
        tableViewCarList.separatorColor = UIColor.gray
        
        btnMap.layer.cornerRadius = 5
        btnFilter.layer.cornerRadius = 5
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onTapBack))
        btnBack.isUserInteractionEnabled = true
        btnBack.addGestureRecognizer(tapGesture)
    }
    
    @objc func onTapBack() {
        self.dismiss(animated: true, completion: nil)
    }
    
}

extension SearchViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CarItemTableViewCell.identifier, for: indexPath) as! CarItemTableViewCell
        return cell
    }
}

extension SearchViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: BookingDetailsViewController.identifier) as! BookingDetailsViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
    }
    
}
