//
//  ViewController.swift
//  SampleCodeLayout
//
//  Created by 岩本康孝 on 2022/09/24.
//

import UIKit

class ViewController: UIViewController {

    private var label: UILabel = {
        let label = UILabel()
        label.text = "Code Layout"
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("button", for: .normal)
        button.sizeToFit()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()


    override func viewDidLoad() {
        super.viewDidLoad()

        addSubView()
        setAutoLayout()
    }

    private func addSubView() {
        self.view.addSubview(label)
        self.view.addSubview(button)
    }

    private func setAutoLayout() {
        setLabelAutoLayout()
        setButtonAutoLayout()
    }

    private func setLabelAutoLayout() {
        label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }

    private func setButtonAutoLayout() {
        button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        button.leadingAnchor.constraint(equalTo: label.leadingAnchor, constant: 100).isActive = true
    }
}

