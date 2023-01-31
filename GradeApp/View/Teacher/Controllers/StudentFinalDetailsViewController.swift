//
//  StudentGradesFinalDetailsController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 26/01/23.
//

import UIKit

class StudentFinalDetailsController: UIViewController {
    
    let customView = StudentFinalDetailScreenView()
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func getData(data: AverageDetails) {
        customView.studentData = data
    }
}
