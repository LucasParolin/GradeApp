//
//  ViewController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 13/01/23.
//

import UIKit

class SeeMyGradesController: UIViewController {
    
    let seeMyGradesViewCustom = SeeMyGrades()
    
    override func loadView() {
        view = seeMyGradesViewCustom
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc func homeViewController() {
        
    }
}

