//
//  Route.swift
//  SkillBoxDisk
//
//  Created by Alex on 28.08.2023.
//

import UIKit

protocol Closable: AnyObject {
    /// Закрываем корневой контроллера у роутора с использованием перехода
    func close()

    /// Закрываем корневой контроллера у роутора с использованием перехода
    func close(completion: (() -> Void)?)
}

protocol Dismissable: AnyObject {
    /// Закрываем модальный корневой контроллер
    func dismiss()

    /// Закрываем модальный корневой контроллер
    func dismiss(completion: (() -> Void)?)
}

protocol Routable: AnyObject {
    /// Навигация с использование перехода (Transition)
    func route(to viewController: UIViewController, as transition: Transition)

    /// Навигация с использование перехода (Transition)
    func route(to viewController: UIViewController, as transition: Transition, completion: (() -> Void)?)
}

protocol Router: Routable {
    /// Корневой контроллер
    var root: UIViewController? { get set }
}


