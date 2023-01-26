//
//  SubjectRepositoryMock.swift
//  GradeApp
//
//  Created by Lucas Parolin on 23/01/23.
//

import Foundation

class SubjectRepositoryMock {
    static let shared = SubjectRepositoryMock()
    
    func getStudent(completion: @escaping ([Subject]) -> ())  {
        completion([
            Subject(subjectName: "Java"),
            Subject(subjectName: "HTML"),
            Subject(subjectName: "Swift"),
            Subject(subjectName: "Kotlin"),
            Subject(subjectName: "Pyton"),
            Subject(subjectName: "CSS"),
            Subject(subjectName: "C#"),
            Subject(subjectName: "JavaScript"),
            Subject(subjectName: "React"),
        ])
    }
}
