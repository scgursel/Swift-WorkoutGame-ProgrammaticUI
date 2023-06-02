//
//  RulesVC.swift
//  Workout-Game-ProgramaticUI
//
//  Created by Servet Can Gürsel on 1.06.2023.
//

import UIKit

class RulesVC: UIViewController {
    
    let titleLabel      = UILabel()
    let rulesLabel      = UILabel()
    let exerciseLabel   = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTitleLable()
        configureRulesTable()
        configureExerciseTable()

    }
    
    func configureTitleLable(){
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        
        ])
        
    }
    func configureRulesTable(){
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        
        rulesLabel.text = "The value of each card represents the number of exercise you do.\n\nJ = 11, Q=12, K=13, A=14"
        rulesLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        rulesLabel.textAlignment = .center
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 45),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        
        ])
        
    }
    func configureExerciseTable(){
        
        view.addSubview(exerciseLabel)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciseLabel.text = "♠️ = Push-ups\n\n♥️= Sit-ups\n\n♦️ = Jumping Jacks\n\n♣️ = Burpees\n\n"
        exerciseLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        exerciseLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 55),
            exerciseLabel.widthAnchor.constraint(equalToConstant: 200),
            exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
    



}
