//
//  StudentInicialScreen.swift
//  GradeApp
//
//  Created by Lucas Parolin on 13/01/23.
//

import UIKit

class StudentInicialScreen: UIView{
    
    lazy var background: UIView = {
        let background = UIView()
        background.backgroundColor = .white
        return background
    }()
    
    lazy var imageLogo: UIImageView = {
        let image = UIImageView()
        image.image = UIImage (named: "mortarboard")
        return image
    }()
    
    lazy var seeGrades: UIButton = {
        let button = UIButton()
        button.setTitle("Ver notas", for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 5
        button.backgroundColor = .tintColor
        return button
        
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
        addSubview(imageLogo)
        addSubview(seeGrades)
        addConstrains()
    }
    func addConstrains(){
        
        background.anchor(
            top: self.topAnchor,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 0, right: 0),
            size: .init(width: 0, height: 0))
        
        imageLogo.anchor(
            top: background.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 200, left: 0, bottom: 0, right: 0),
            size: .init(width: 180, height: 180))
        imageLogo.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        seeGrades.anchor(
            top: imageLogo.bottomAnchor,
            leading: background.leadingAnchor,
            bottom: nil,
            trailing: background.trailingAnchor,
            padding: .init(top: 90, left: 60, bottom: 0, right: 60),
            size: .init(width: 0, height: 40))
        seeGrades.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
}


//Multiple_commands_produce'/Users/lucasparolin/Library/Developer/Xcode/DerivedData/GradeApp-gwcextrtvujigpcvzmarlfsuddql/Build/Intermediates.noindex/GradeApp.build/Debug-iphonesimulator/GradeApp.build/Objects-normal/x86_64/StudentInicialScreen.stringsdata'
