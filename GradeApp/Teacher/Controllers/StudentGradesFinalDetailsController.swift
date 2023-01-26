//
//  StudentGradesFinalDetailsController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 26/01/23.
//

import UIKit

class StudentGradesFinalDetailsController: UIViewController {
    
    let studentGradesFinalDetailsViewCustom = StudentGradesFinalDetailsView()
    let averageGradeDetailsTableViewCellCustom = AverageGradeDetailsTableViewCell()
    
    override func loadView() {
        view = studentGradesFinalDetailsViewCustom
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func getData(name: String, firstGrade: String, secondGrade: String, thirdGrade: String, fourthGrade: String, subject: String, average: Float) {
        studentGradesFinalDetailsViewCustom.student.text = name
        studentGradesFinalDetailsViewCustom.subject.text = subject
        studentGradesFinalDetailsViewCustom.firstGrade.text = firstGrade
        studentGradesFinalDetailsViewCustom.secondGrade.text = secondGrade
        studentGradesFinalDetailsViewCustom.thirdGrade.text = thirdGrade
        studentGradesFinalDetailsViewCustom.fourthGrade.text = fourthGrade
        studentGradesFinalDetailsViewCustom.avarageGrade.text = "Média do aluno: \(average)"
    }
}
