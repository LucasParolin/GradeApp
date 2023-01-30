//
//  ListSubjectViewController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 23/01/23.
//

import UIKit

class ListSubjectViewController: UIViewController {
    
    // Alias -> Apelido
    typealias CustomView = SubjectListScreenView
    
    // Variables
    var subject: [Subject] = []
    var customView = CustomView()
    
    // Action Variables
    var getSubject: (Subject) -> Void = {_ in}
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.tableView.delegate = self
        customView.tableView.dataSource = self
        
        populateStudentList()
    }
    
    func populateStudentList() {
        SubjectRepositoryMock.shared.getStudent { subjects in
            self.subject = subjects
        }
    }
}
extension ListSubjectViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subject.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customView.cellId, for: indexPath) as! SubjectTableViewCell
        
        cell.subjects = subject[indexPath.item]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.item)
        print(indexPath.row)
        print(indexPath.section)
        
        getSubject(subject[indexPath.item])

    }
}
