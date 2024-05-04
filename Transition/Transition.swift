//
//  Transition.swift
//  SkillBoxDisk
//
//  Created by Alex on 28.08.2023.
//

import UIKit

protocol Transition: AnyObject {
    func open(_ viewController: UIViewController, from: UIViewController, completion: (() -> Void)?)
    func close(_ viewController: UIViewController, completion: (() -> Void)?)
}
