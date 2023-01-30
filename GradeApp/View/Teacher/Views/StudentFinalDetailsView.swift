//
//  StudentGradesFinalDetailsView.swift
//  GradeApp
//
//  Created by Lucas Parolin on 26/01/23.
//

import UIKit

class StudentFinalDetailScreenView: UIView {

    lazy var background: UIView = {
        let background = UIView()
        background.backgroundColor = UIColor(red: 0.42, green: 0.51, blue: 0.62, alpha: 1.00)
        return background
    }()
    
    lazy var backgroundContainer: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        view.layer.borderWidth = 2
        return view
    }()
    
    lazy var student: UILabel = {
        let label = UILabel()
        label.text = "Estudante (substituir)"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textAlignment = .center
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        label.layer.borderWidth = 2
        label.backgroundColor = .white
        return label
    }()
    
    lazy var subject: UILabel = {
        let label = UILabel()
        label.text = "Matéria (substituir)"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
//        label.textAlignment = .center
        return label
    }()
    
    lazy var firstGrade: UILabel = {
        let label = UILabel()
        label.text = "Primeira nota (substituir)"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
//        label.textAlignment = .center
        return label
    }()
    
    lazy var secondGrade: UILabel = {
        let label = UILabel()
        label.text = "Segunda nota (substituir)"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
//        label.textAlignment = .center
        return label
    }()
    
    lazy var thirdGrade: UILabel = {
        let label = UILabel()
        label.text = "Terceira nota (substituir)"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    lazy var fourthGrade: UILabel = {
        let label = UILabel()
        label.text = "Quarta nota (substituir)"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    lazy var avarageGrade: UILabel = {
        let label = UILabel()
        label.text = "Média (substituir)"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews(){
        addSubview(background)
        addSubview(backgroundContainer)
        addSubview(student)
        addSubview(subject)
        addSubview(firstGrade)
        addSubview(secondGrade)
        addSubview(thirdGrade)
        addSubview(fourthGrade)
        addSubview(avarageGrade)
        addConstraints()
    }
    
    func addConstraints(){
        
        background.anchor(
            top: self.topAnchor,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 0, right: 0),
            size: .init(width: 0, height: 0))
        
        backgroundContainer.anchor(
            top: subject.topAnchor,
            leading: subject.leadingAnchor,
            bottom: avarageGrade.bottomAnchor,
            trailing: subject.trailingAnchor,
            padding: .init(top: -20, left: -20, bottom: -20, right: -20),
            size: .init(width: 0, height: 0))
        
        student.anchor(
            top: background.topAnchor,
            leading: background.leadingAnchor,
            bottom: nil,
            trailing: background.trailingAnchor,
            padding: .init(top: 40, left: 40, bottom: 0, right: 40),
            size: .init(width: 250, height: 50))
        student.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        subject.anchor(
            top: student.bottomAnchor,
            leading: background.leadingAnchor,
            bottom: nil,
            trailing: background.trailingAnchor,
            padding: .init(top: 60, left: 40, bottom: 0, right: 40),
            size: .init(width: 300, height: 45))
        subject.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        firstGrade.anchor(
            top: subject.bottomAnchor,
            leading: subject.leadingAnchor,
            bottom: nil,
            trailing: subject.trailingAnchor,
            padding: .init(top: 40, left: 0, bottom: 0, right: 0),
            size: .init(width: 300, height: 45))
        firstGrade.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        secondGrade.anchor(
            top: firstGrade.bottomAnchor,
            leading: subject.leadingAnchor,
            bottom: nil,
            trailing: subject.trailingAnchor,
            padding: .init(top: 40, left: 0, bottom: 0, right: 0),
            size: .init(width: 300, height: 45))
        secondGrade.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        thirdGrade.anchor(
            top: secondGrade.bottomAnchor,
            leading: subject.leadingAnchor,
            bottom: nil,
            trailing: subject.trailingAnchor,
            padding: .init(top: 40, left: 0, bottom: 0, right: 0),
            size: .init(width: 300, height: 45))
        thirdGrade.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        fourthGrade.anchor(
            top: thirdGrade.bottomAnchor,
            leading: subject.leadingAnchor,
            bottom: nil,
            trailing: subject.trailingAnchor,
            padding: .init(top: 40, left: 0, bottom: 0, right: 0),
            size: .init(width: 300, height: 45))
        fourthGrade.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        avarageGrade.anchor(
            top: fourthGrade.bottomAnchor,
            leading: subject.leadingAnchor,
            bottom: nil,
            trailing: subject.trailingAnchor,
            padding: .init(top: 40, left: 0, bottom: 0, right: 0),
            size: .init(width: 300, height: 45))
        avarageGrade.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
}
