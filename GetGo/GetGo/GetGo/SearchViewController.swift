//
//  SearchViewController.swift
//  GetGo
//
//  Created by Ye Ko on 02/07/2021.
//

import UIKit

class SearchViewController: UIViewController {
    
    static let identifier = "SearchViewController"

    @IBOutlet weak var tableViewCarList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewCarList.register(UINib(nibName: CarItemTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: CarItemTableViewCell.identifier)
        tableViewCarList.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: -12, right: 0)
        
        tableViewCarList.automaticallyAdjustsScrollIndicatorInsets = false
        
        let carSearchHeaderView = Bundle.main.loadNibNamed(CarSearchHearderTableViewCell.identifier, owner: self, options: nil)?.first as! CarSearchHearderTableViewCell
        carSearchHeaderView.delegate = self
        tableViewCarList.tableHeaderView = carSearchHeaderView
        
        tableViewCarList.dataSource = self
        tableViewCarList.delegate = self
        
        tableViewCarList.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: tableViewCarList.frame.size.width, height: 1))
        tableViewCarList.separatorColor = UIColor.gray
        
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
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let carFilterHeaderView = Bundle.main.loadNibNamed(CarFilterHeaderTableViewCell.identifier, owner: self, options: nil)?.first as! CarFilterHeaderTableViewCell
        return carFilterHeaderView
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
    }
    
}

extension SearchViewController: CarSearchHeardItemDelegate {
    func onBack() {
        self.dismiss(animated: true, completion: nil)
    }
}
