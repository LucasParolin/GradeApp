//
//  CalculateAvarageGradeController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 17/01/23.
//

import UIKit

class CalculateAvarageViewController: UIViewController {
    
    let customView = CalculateAvarageScreenView()
    let listSubjectViewController = ListSubjectViewController()
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.selectStudent.delegate = self
        customView.selectSubject.delegate = self
        customView.calculateAvarageStudentsGrades.addTarget(self, action: #selector(navigateToAverageGradeDetails), for: .touchUpInside)
    }
    
    @objc func navigateToAverageGradeDetails() {
        let averageDetailsViewController = AverageDetailsViewController()
        
        let average = AvarageDetails(
            student: "- " + (customView.selectStudent.text ?? ""),
            subject: "- " + (customView.selectSubject.text ?? ""), firstGrade: customView.firstStudentGradeTextField.text ?? "", secondGrade: customView.secondStudentGradeTextField.text ?? "", thirdGrade: customView.thirdStudentGradeTextField.text ?? "", fourthGrade: customView.fourthStudentGradeTextField.text ?? "",
            averageGrade: "Média de \(calculateAverage())"
        )
        
        AverageDetailsRepositoryMock.shared.addAverage(average: average)
        
        averageDetailsViewController.getData(name: customView.selectStudent.text ?? "", subject: customView.selectSubject.text ?? "", average: calculateAverage())
        
        averageDetailsViewController.close = {[
                self.customView.selectStudent,
                self.customView.selectSubject,
                self.customView.firstStudentGradeTextField,
                self.customView.secondStudentGradeTextField,
                self.customView.thirdStudentGradeTextField,
                self.customView.fourthStudentGradeTextField
            ].forEach({ textField in textField.text = "" })
            
            //forEach vai percorrer todos os itens listados dentro de [] e adiciona valor vazio nos itens
            
            averageDetailsViewController.dismiss(animated: true)
        }
        
        present(averageDetailsViewController, animated: true)
    }
    
    
    @objc func myTargetFunction() {
        let listStudentViewController = ListStudentsViewController()
        
        listStudentViewController.getStudent = { student in  //pegando os dados da listStudentViewController
            self.customView.selectStudent.text = student.name
            listStudentViewController.dismiss(animated: true)
        }
        
        present(listStudentViewController, animated: true)
    }
    
    @objc func myTargetFunction2() {
        listSubjectViewController.getSubject = { subject in  //pegando os dados da ListSubjectViewController
            self.customView.selectSubject.text = subject.subjectName
            self.listSubjectViewController.dismiss(animated: true)
        }
        
        present(listSubjectViewController, animated: true)
    }
    
    func navigateToNext(){  //Navegacao
        self.navigationController?.pushViewController(listSubjectViewController, animated: true)
    }
    
    // Levar para ViewModel
    func calculateAverage() -> Float { //calculo da nota
        let nota1 = Float(customView.firstStudentGradeTextField.text ?? "") ?? 0
        let nota2 = Float(customView.secondStudentGradeTextField.text ?? "") ?? 0
        let nota3 = Float(customView.thirdStudentGradeTextField.text ?? "") ?? 0
        let nota4 = Float(customView.fourthStudentGradeTextField.text ?? "") ?? 0
        
        return ((nota1 + nota2) + (nota3 + nota4)) / 4
    }
}

extension CalculateAvarageViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == customView.selectStudent {
            myTargetFunction()
        } else {
            myTargetFunction2()
        }
    }
}
