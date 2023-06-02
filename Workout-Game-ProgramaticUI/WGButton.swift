//
//  WGButton.swift
//  Workout-Game-ProgramaticUI
//
//  Created by Servet Can Gürsel on 1.06.2023.
//

import UIKit

class WGButton: UIButton {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String, systemImageName: String){
        super.init(frame: .zero)
        
        configuration = .filled()
        configuration?.title = title
        configuration?.baseBackgroundColor = backgroundColor
        
        
        configuration?.image = UIImage(systemName: systemImageName)
        configuration?.imagePlacement = .leading
        configuration?.imagePadding = 5
        
        translatesAutoresizingMaskIntoConstraints = false
        

    }
    


}
