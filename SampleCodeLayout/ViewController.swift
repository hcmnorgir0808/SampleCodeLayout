//
//  ViewController.swift
//  SampleCodeLayout
//
//  Created by 岩本康孝 on 2022/09/24.
//

import UIKit
import SnapKit

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
        label.snp.makeConstraints {
            $0.center.equalTo(self.view)
        }
    }

    private func setButtonAutoLayout() {
        button.snp.makeConstraints {
            $0.top.equalTo(label.snp.bottom).offset(10)
            $0.leading.equalTo(label).offset(10)
        }
    }
}

