//
//  StudentLoginController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 16/01/23.
//

import UIKit

class StudentLoginController: UIViewController {
    
    let studentLoginScreenCustom = StudentLoginScreen()
    let inicialScreenCustom = SeeMyGrades()
    override func loadView() {
        view = studentLoginScreenCustom
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentLoginScreenCustom.loginButton.addTarget(self, action: #selector(navigateToSeeMyGrades), for: .touchUpInside)
        
    }
    
    @objc func navigateToSeeMyGrades() {
        
        let seeMyGradesControllerCustom = SeeMyGradesController()
        self.navigationController?.pushViewController(seeMyGradesControllerCustom, animated: true)
        
    }
}
