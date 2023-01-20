//
//  InicialScreen.swift
//  GradeApp
//
//  Created by Lucas Parolin on 13/01/23.
//

import UIKit

class SeeMyGrades: UIView{
    
    lazy var background: UIView = {
        let background = UIView()
        background.backgroundColor = UIColor(red: 0.42, green: 0.51, blue: 0.62, alpha: 1.00)
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
        button.setTitleColor(UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.90), for: .normal)
        button.backgroundColor = UIColor(red: 0.18, green: 0.25, blue: 0.35, alpha: 1.00)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.80).cgColor
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
            size: .init(width: 60, height: 60))
        
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
            size: .init(width: 60, height: 60))
        seeGrades.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
}
