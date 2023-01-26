//
//  StudentsRepositoryMock.swift
//  GradeApp
//
//  Created by Lucas Parolin on 23/01/23.
//

import Foundation

class StudentRepositoryMock {
    static let shared = StudentRepositoryMock()
    
    func getStudent(completion: @escaping ([Students]) -> ())  {
        completion([
            Students(name: "Lucas Parolin"),
            Students(name: "Maria Aida"),
            Students(name: "Marianna Diniz"),
            Students(name: "Kayky Bighouse"),
            Students(name: "Bruno Otávio"),
            Students(name: "Kaue Ludovico"),
        ])
    }
}
