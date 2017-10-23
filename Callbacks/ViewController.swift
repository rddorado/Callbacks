//
//  ViewController.swift
//  Callbacks
//
//  Created by Ronaldo II Dorado on 23/10/17.
//  Copyright © 2017 Ronaldo II Dorado. All rights reserved.
//

import UIKit
import SnapKit


protocol AdapterViewPort: class {
    func updateView(with model: String)
}

class Adapter {
    weak var delegate:AdapterViewPort?
    
    init(delegate: AdapterViewPort) {
        self.delegate = delegate
    }
    
    func handleButtonTap(value: String) {
        let newValue = incrementByOne(input: value)
        delegate?.updateView(with: newValue)
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
    lazy var adapter = Adapter(delegate: self as AdapterViewPort)
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func buttonTap() {
        adapter.handleButtonTap(value: textlabel.text ?? "0")
    }
}


extension ViewController: AdapterViewPort {
    func updateView(with model: String) {
        textlabel.text = model
    }
}
