//
//  ViewController.swift
//  Auto Layout in code
//
//  Created by Николай Никитин on 17.12.2021.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    let labelOne = UILabel()
    labelOne.translatesAutoresizingMaskIntoConstraints = false
    labelOne.backgroundColor = .red
    labelOne.text = "Label One"
    labelOne.sizeToFit()

    let labelTwo = UILabel()
    labelTwo.translatesAutoresizingMaskIntoConstraints = false
    labelTwo.backgroundColor = .yellow
    labelTwo.text = "Label Two"
    labelTwo.sizeToFit()

    let labelThree = UILabel()
    labelThree.translatesAutoresizingMaskIntoConstraints = false
    labelThree.backgroundColor = .green
    labelThree.text = "Label Three"
    labelThree.sizeToFit()

    let labelFour = UILabel()
    labelFour.translatesAutoresizingMaskIntoConstraints = false
    labelFour.backgroundColor = .blue
    labelFour.text = "Label Four"
    labelFour.sizeToFit()

    let labelFive = UILabel()
    labelFive.translatesAutoresizingMaskIntoConstraints = false
    labelFive.backgroundColor = .cyan
    labelFive.text = "Label Five"
    labelFive.sizeToFit()

    view.addSubview(labelOne)
    view.addSubview(labelTwo)
    view.addSubview(labelThree)
    view.addSubview(labelFour)
    view.addSubview(labelFive)

    //    let viewsDictionary = ["labelOne": labelOne, "labelTwo": labelTwo, "labelThree": labelThree, "labelFour": labelFour, "labelFive": labelFive]
    //    for label in viewsDictionary.keys {
    //    view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[\(label)]-|", options: [], metrics: nil, views: viewsDictionary))
    //    }
    //
    //    let metrics = ["labelHight": 88]
    //
    //    view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[labelOne(labelHight@999)]-[labelTwo(labelOne)]-[labelThree(labelOne)]-[labelFour(labelOne)]-[labelFive(labelOne)]-(>=10)-|", options: [], metrics: metrics, views: viewsDictionary))


    var previous: UILabel?

    for label in [labelOne, labelTwo, labelThree, labelFour, labelFive]{
      label.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.5, constant: 50).isActive = true
//      label.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//      label.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
      label.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.2, constant: -10).isActive = true
      label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true

      if let previous = previous {
        label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
      } else {
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
      }
      previous = label
    }
  }








}
