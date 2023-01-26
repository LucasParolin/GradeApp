//
//  StudentGradesFinalDetailsController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 26/01/23.
//

import UIKit

class StudentGradesFinalDetailsController: UIViewController {
    
    let studentGradesFinalDetailsViewCustom = StudentGradesFinalDetailsView()
    
    override func loadView() {
        view = studentGradesFinalDetailsViewCustom
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    @objc func navigateToCalculateAvarageGrade() {
//        let calculateAvarageGradeControllerCustom = CalculateAvarageGradeController()
//        self.navigationController?.pushViewController(calculateAvarageGradeControllerCustom, animated: true)
//    }
//    @objc func navigateToSeeAverageGrades(){
//        let averageGradeDetailsViewController = AverageGradeDetailsViewController()
//        present(averageGradeDetailsViewController, animated: true)
//    }
    
    
}
