//
//  TeacherInicialScreenController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 16/01/23.
//

import UIKit

class TeacherInicialScreenController: UIViewController {
    
    let teacherInicialScreenCustom = TeacherInicialScreen()
    
    override func loadView() {
        view = teacherInicialScreenCustom
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        teacherInicialScreenCustom.calculateAvarageGrade.addTarget(self, action: #selector(navigateToCalculateAvarageGrade), for: .touchUpInside)
        teacherInicialScreenCustom.seeAvarageStudentsGrades.addTarget(self, action: #selector(navigateToSeeAverageGrades), for: .touchUpInside)
    }
    
    @objc func navigateToCalculateAvarageGrade() {
        let calculateAvarageGradeControllerCustom = CalculateAvarageGradeController()
        self.navigationController?.pushViewController(calculateAvarageGradeControllerCustom, animated: true)
    }
    @objc func navigateToSeeAverageGrades(){
        let averageGradeDetailsViewController = AverageGradeDetailsViewController()
        present(averageGradeDetailsViewController, animated: true)
    }
    
    
}
