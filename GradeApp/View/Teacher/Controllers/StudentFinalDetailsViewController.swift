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
    
    func getData(name: String, firstGrade: String, secondGrade: String, thirdGrade: String, fourthGrade: String, subject: String, average: Float) {
        customView.student.text = name
        customView.subject.text = subject
        customView.firstGrade.text = firstGrade
        customView.secondGrade.text = secondGrade
        customView.thirdGrade.text = thirdGrade
        customView.fourthGrade.text = fourthGrade
        customView.avarageGrade.text = "Média do aluno: \(average)"
    }
}
