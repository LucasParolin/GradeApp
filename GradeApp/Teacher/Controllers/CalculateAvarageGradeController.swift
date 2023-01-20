//
//  CalculateAvarageGradeController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 17/01/23.
//

import UIKit

class CalculateAvarageGradeController: UIViewController {
    
    let calculateAvarageGradeViewCustom = CalculateAvarageGradeView()
    
    override func loadView() {
        view = calculateAvarageGradeViewCustom
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateAvarageGradeViewCustom.selectStudent.delegate = self
        
    }
    
    @objc func myTargetFunction() {
        let listStudentViewController = ListStudentsViewController()
        present(listStudentViewController, animated: true)
    }
}

extension CalculateAvarageGradeController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        myTargetFunction()
    }
}
