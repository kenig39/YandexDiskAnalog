//
//  ExtentionsUI.swift
//  SkillBoxDisk
//
//  Created by Alex on 28.08.2023.
//
import UIKit

extension UIViewController {
    func addStackView(vStack: UIStackView) {
        vStack.axis = .vertical
        vStack.spacing = 8.0
        vStack.frame =  CGRect(x: 0, y: 0, width: 300, height: 350)
        vStack.distribution  = .equalCentering
        vStack.alignment = .fill
        vStack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(vStack)
        vStack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vStack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
}
    extension UIButton {
        convenience init(title: String, target: Any, selector: Selector) {
            self.init(frame: .zero)
            translatesAutoresizingMaskIntoConstraints = false
            setTitle(title, for: .normal)
            setTitleColor(.systemBlue, for: .normal)
            addTarget(target, action: selector, for: .touchUpInside)
        }
}

extension UITextField {
    class func attributedTextField(frame: CGRect, placeHolder: String) -> UITextField {
            let textField = UITextField(frame: frame)
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.layer.cornerRadius = 25
            textField.layer.borderColor = UIColor(cgColor: CGColor(red: 34, green: 140, blue: 204, alpha: 1)).cgColor
            textField.layer.borderWidth = 2.0
            textField.layer.masksToBounds = true
            textField.placeholder = placeHolder
            /* Paddings */
            textField.leftView = UIView(frame: CGRectMake(0, 0, 25, 0))
            textField.leftViewMode = UITextField.ViewMode.always
            textField.rightView = UIView(frame: CGRectMake(0, 0, 25, 0))
            textField.rightViewMode = UITextField.ViewMode.always
    
            return textField
        }
    }

extension UIView {
    func addSubviews(view: [UIView]) {
        for i in view {
            addSubview(i)
        }
    }
    
}

extension UIPageViewController{
    
    func goToNextPage(animated: Bool = true, completion: ((Bool) -> Void)? = nil) {
          guard let currentPage = viewControllers?[0] else { return }
          guard let nextPage = dataSource?.pageViewController(self, viewControllerAfter: currentPage) else { return }
          
          setViewControllers([nextPage], direction: .forward, animated: animated, completion: completion)
      }
      
      func goToPreviousPage(animated: Bool = true, completion: ((Bool) -> Void)? = nil) {
          guard let currentPage = viewControllers?[0] else { return }
          guard let prevPage = dataSource?.pageViewController(self, viewControllerBefore: currentPage) else { return }
          
          setViewControllers([prevPage], direction: .forward, animated: animated, completion: completion)
      }
      
      func goToSpecificPage(index: Int, ofViewControllers pages: [UIViewController]) {
          setViewControllers([pages[index]], direction: .forward, animated: true, completion: nil)
      }
    
}

