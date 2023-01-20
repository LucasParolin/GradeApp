//
//  ListStudentsViewController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 17/01/23.
//

import UIKit

class ListStudentsViewController: UIViewController {
    
    typealias CustomView = StudentListScreenView
    var customView = CustomView()
    
    var abc = ["Lucas Parolin", "Marianna Diniz", "Maria Aida", "Kayky Bighouse", "Bruno Otávio", "Kaue Ludovico"]
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.tableView.delegate = self
        customView.tableView.dataSource = self
    }
}
extension ListStudentsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return abc.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customView.cellId, for: indexPath) as! StudentTableViewCell

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.item)
        print(indexPath.row)
        print(indexPath.section)
    }
}

