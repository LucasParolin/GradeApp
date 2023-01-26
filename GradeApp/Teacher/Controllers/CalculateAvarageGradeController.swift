//
//  CalculateAvarageGradeController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 17/01/23.
//

import UIKit

class CalculateAvarageGradeController: UIViewController {
    
    let calculateAvarageGradeViewCustom = CalculateAvarageGradeView()
    let averageGradeDetailsViewControllerCustom = AverageGradeDetailsViewController()
    override func loadView() {
        view = calculateAvarageGradeViewCustom
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateAvarageGradeViewCustom.selectStudent.delegate = self
        calculateAvarageGradeViewCustom.selectSubject.delegate = self
        calculateAvarageGradeViewCustom.calculateAvarageStudentsGrades.addTarget(self, action: #selector(navigateToAverageGradeDetails), for: .touchUpInside)
    }
    
    @objc func navigateToAverageGradeDetails() {
        let averageGradeDetailsViewControllerCustom = AverageGradeDetailsViewController()
        
        let average = AvarageGradeDetails(
            student: "- " + (calculateAvarageGradeViewCustom.selectStudent.text ?? ""),
            subject: "- " + (calculateAvarageGradeViewCustom.selectSubject.text ?? ""),
            averageGrade: "Média de \(calculateAverage())"
        )
        
        AverageGradeDetailsRepositoryMock.shared.addAverage(average: average)
        
        averageGradeDetailsViewControllerCustom.getData(name: calculateAvarageGradeViewCustom.selectStudent.text ?? "", subject: calculateAvarageGradeViewCustom.selectSubject.text ?? "", average: calculateAverage())
        
        averageGradeDetailsViewControllerCustom.close = {
//            self.calculateAvarageGradeViewCustom.selectStudent.text = ""
//            self.calculateAvarageGradeViewCustom.selectSubject.text = ""
//            self.calculateAvarageGradeViewCustom.firstStudentGradeTextField.text = ""
//            self.calculateAvarageGradeViewCustom.secondStudentGradeTextField.text = ""
//            self.calculateAvarageGradeViewCustom.thirdStudentGradeTextField.text = ""
//            self.calculateAvarageGradeViewCustom.fourthStudentGradeTextField.text = ""
            
//            O de baixo faz a mesma coisa que o de cima, porém junta todos os itens em um array pra fazer a            mesma coisa com todos ao mesmo tempo
            [
                self.calculateAvarageGradeViewCustom.selectStudent,
                self.calculateAvarageGradeViewCustom.selectSubject,
                self.calculateAvarageGradeViewCustom.firstStudentGradeTextField,
                self.calculateAvarageGradeViewCustom.secondStudentGradeTextField,
                self.calculateAvarageGradeViewCustom.thirdStudentGradeTextField,
                self.calculateAvarageGradeViewCustom.fourthStudentGradeTextField
            ].forEach({ textField in textField.text = "" })
            
            averageGradeDetailsViewControllerCustom.dismiss(animated: true)
        }
        
        present(averageGradeDetailsViewControllerCustom, animated: true)
    }
    
    
    @objc func myTargetFunction() {
        let listStudentViewController = ListStudentsViewController()
        
        listStudentViewController.getStudent = { student in
            self.calculateAvarageGradeViewCustom.selectStudent.text = student.name
            listStudentViewController.dismiss(animated: true)
        }
        
        present(listStudentViewController, animated: true)
    }
    
    @objc func myTargetFunction2() {
        let listSubjectViewController = ListSubjectViewController()
        
        listSubjectViewController.getSubject = { subject in
            self.calculateAvarageGradeViewCustom.selectSubject.text = subject.subjectName
            listSubjectViewController.dismiss(animated: true)
        }
        
        present(listSubjectViewController, animated: true)
    }
    
    func navigateToNext(){
        let calculatedAvarageGradeViewControllerCustom = ListSubjectViewController()
        self.navigationController?.pushViewController(calculatedAvarageGradeViewControllerCustom, animated: true)
    }
    
    func calculateAverage() -> Float {
        let nota1 = Float(calculateAvarageGradeViewCustom.firstStudentGradeTextField.text ?? "") ?? 0
        let nota2 = Float(calculateAvarageGradeViewCustom.secondStudentGradeTextField.text ?? "") ?? 0
        let nota3 = Float(calculateAvarageGradeViewCustom.thirdStudentGradeTextField.text ?? "") ?? 0
        let nota4 = Float(calculateAvarageGradeViewCustom.fourthStudentGradeTextField.text ?? "") ?? 0
        
        return ((nota1 + nota2) + (nota3 + nota4)) / 4
    }
}

extension CalculateAvarageGradeController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if textField == calculateAvarageGradeViewCustom.selectStudent {
            myTargetFunction()
        } else {
            myTargetFunction2()
        }
    }
}
