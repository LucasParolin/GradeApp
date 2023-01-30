//
//  ListStudentsViewController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 17/01/23.
//

import UIKit

class ListStudentsViewController: UIViewController {
    
    // Alias -> Apelido
    typealias CustomView = StudentListScreenView
    
    // Variables
    var customView = CustomView()
    var student: Students?
    var students: [Students] = []
    
    // Action Variables
    var getStudent: (Students) -> Void = {_ in}
    
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
        StudentRepositoryMock.shared.getStudent { student in
            self.students = student
        }
    }
}

extension ListStudentsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customView.cellId, for: indexPath) as! StudentTableViewCell
        
        cell.student = students[indexPath.item]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        getStudent(students[indexPath.item])
    }
}

