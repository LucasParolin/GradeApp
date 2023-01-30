//
//  TeacherInicialScreenController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 16/01/23.
//

import UIKit

class TeacherInicialViewController: UIViewController {
    
    let customView = TeacherInicialScreenView()
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.calculateAvarageGrade.addTarget(self, action: #selector(navigateToCalculateAvarageGrade), for: .touchUpInside)
        customView.seeAvarageStudentsGrades.addTarget(self, action: #selector(navigateToSeeAverageGrades), for: .touchUpInside)
    }
    
    @objc func navigateToCalculateAvarageGrade() {
        let calculateAvarageGradeControllerCustom = CalculateAvarageViewController()
        self.navigationController?.pushViewController(calculateAvarageGradeControllerCustom, animated: true)
    }
    @objc func navigateToSeeAverageGrades(){
        let averageGradeDetailsViewController = AverageDetailsViewController()
        present(averageGradeDetailsViewController, animated: true)
    }
    
    
}
