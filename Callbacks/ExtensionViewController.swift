//
//  ExtensionViewController.swift
//  Callbacks
//
//  Created by Ronaldo II Dorado on 23/10/17.
//  Copyright © 2017 Ronaldo II Dorado. All rights reserved.
//

import Foundation

extension ViewController {
    func setupView() {
        view.addSubview(button)
        view.addSubview(textlabel)
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-150)
        }
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Increment", for: .normal)
        button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        textlabel.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(button.snp.bottom).offset(50)
        }
        textlabel.text = "1"
        textlabel.textAlignment = .center
    }
}
