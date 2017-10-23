//
//  ViewController.swift
//  Callbacks
//
//  Created by Ronaldo II Dorado on 23/10/17.
//  Copyright © 2017 Ronaldo II Dorado. All rights reserved.
//

import UIKit
import SnapKit


class Adapter {
    var buttonTapProcessComplete: ((_ viewModel: String) -> Void)?
    
    func handleButtonTap(value: String) {
        let newValue = incrementByOne(input: value)
       buttonTapProcessComplete?(newValue)
    }

    func incrementByOne(input: String) -> String {
        var inputValue = Int(input) ?? 0
        inputValue = inputValue + 1
        return String(inputValue)
    }
}

class ViewController: UIViewController {
    let button = UIButton()
    let textlabel = UILabel()
    let adapter = Adapter()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupAdapterCallbacks()
    }
    
    func buttonTap() {
        adapter.handleButtonTap(value: textlabel.text ?? "0")
    }
    
    func setupAdapterCallbacks() {
        adapter.buttonTapProcessComplete = { [weak self] viewModel in
            guard let strongSelf = self  else { return }
            strongSelf.textlabel.text = viewModel
        }
    }
}

