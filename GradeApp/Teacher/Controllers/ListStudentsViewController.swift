//
//  ListStudentsViewController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 17/01/23.
//

import UIKit

class ListStudentsViewController: UIViewController {
    
    let listStudentCustomView = ListStudentScreenView()
    
    override func loadView() {
        view = listStudentCustomView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
