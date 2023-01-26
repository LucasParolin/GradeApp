//
//  StudentInicialScreenController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 13/01/23.
//

import UIKit

class StudentInicialScreenController: UIViewController {
    
    let studentInicialScreenCustom = StudentInicialScreen()
    
    override func loadView() {
        view = studentInicialScreenCustom
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentInicialScreenCustom.seeGrades.addTarget(self, action: #selector(navigateToSeeAverageGrades), for: .touchUpInside)
    }
    
    @objc func navigateToSeeAverageGrades(){
        let averageGradeDetailsViewControllerCustom = AverageGradeDetailsViewController()
        averageGradeDetailsViewControllerCustom.isUser()
        present(averageGradeDetailsViewControllerCustom, animated: true)
    }
    
}

