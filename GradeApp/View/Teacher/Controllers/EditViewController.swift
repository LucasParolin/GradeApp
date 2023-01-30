//
//  EditViewController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 30/01/23.
//

import UIKit

class EditViewController: UIViewController {
    var update: (AverageDetails) -> Void = {_ in}
    
    var details: AverageDetails? {
        didSet {
            customView.selectStudent.text = details?.student
            customView.selectSubject.text = details?.subject
            customView.firstStudentGradeTextField.text = details?.firstGrade
            customView.secondStudentGradeTextField.text = details?.secondGrade
            customView.thirdStudentGradeTextField.text = details?.thirdGrade
            customView.fourthStudentGradeTextField.text = details?.fourthGrade
        }
    }
    
    let customView = CalculateAvarageScreenView()
    
    override func loadView() {
        view = customView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.calculateAvarageStudentsGrades.addTarget(self, action: #selector(updateDetails), for: .touchUpInside)}
    
    @objc func updateDetails() {
        if var details = details {
            details.student = customView.selectStudent.text ?? details.student
            details.subject = customView.selectSubject.text ?? details.subject
            details.firstGrade = customView.firstStudentGradeTextField.text ?? details.firstGrade
            details.secondGrade = customView.secondStudentGradeTextField.text ?? details.secondGrade
            details.thirdGrade = customView.thirdStudentGradeTextField.text ?? details.thirdGrade
            details.fourthGrade = customView.fourthStudentGradeTextField.text ?? details.fourthGrade
            
            update(details)
        }
    }
}
