//
//  ViewController.swift
//  Workout-Game-ProgramaticUI
//
//  Created by Servet Can Gürsel on 1.06.2023.
//

import UIKit

class FirstScreen: UIViewController {
    
    let cardImageView = UIImageView()
    let stopButton = WGButton(backgroundColor: .systemRed, title: "Stop!", systemImageName: "stop.circle")
    let restartButton = WGButton(backgroundColor: .systemGreen, title: "Restart",systemImageName: "arrow.clockwise")
    let rulesButton = WGButton(backgroundColor: .systemBlue, title: "Rules", systemImageName: "list.clipboard")
    
    
    
    var deck: [UIImage] = Deck.allValues

    
    var timer: Timer!
    override func viewDidLoad() {
        super.viewDidLoad()


        view.backgroundColor = .systemBackground
        configureUI()
        // Do any additional setup after loading the view.
    }
    func configureUI() {
        configureCardImageView()
        configureStopButton()
        configureRestartButton()
        configureRulesButton()
        startTimer()
    }
    
    func configureCardImageView() {
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "AS")
        
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
            
        ])
        
    }
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.15, target: self, selector: #selector(showRandomCard), userInfo: nil, repeats: true)
    }

    func configureStopButton(){
        view.addSubview(stopButton)
        
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
        ])
        
        
        stopButton.addTarget(self, action: #selector(stopTimer), for: .touchUpInside)
    }
    func configureRestartButton(){
        view.addSubview(restartButton)
        NSLayoutConstraint.activate([
            restartButton.widthAnchor.constraint(equalToConstant: 115),
            restartButton.heightAnchor.constraint(equalToConstant: 50),
            restartButton.leadingAnchor.constraint(equalTo:  stopButton.leadingAnchor),
            restartButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
        ])
        
        restartButton.addTarget(self, action: #selector(restartTimer), for: .touchUpInside)
    }
    func configureRulesButton(){
        view.addSubview(rulesButton)
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo:  stopButton.trailingAnchor),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
        ])
        
        
        rulesButton.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside)
        
     
    }
    
    
    @objc func presentRulesVC(){
        present(RulesVC(), animated: true)
        
    }
    @objc func stopTimer(){
        timer.invalidate()
    }
    @objc func showRandomCard(){
        cardImageView.image = deck.randomElement()
    }
    @objc func restartTimer(){
        timer.invalidate()
        startTimer()
    }
    


}

