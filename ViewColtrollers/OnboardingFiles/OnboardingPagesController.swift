//
//  OnboardingPages.swift
//  SkillBoxDisk
//
//  Created by Alex on 28.08.2023.
//
import UIKit

class OnboadrdingPages: UIPageViewController{
    var pages = [UIViewController]()
      
      let skipButton = UIButton()
      let nextButton = UIButton()
      let pageControl = UIPageControl()
      let initialPage = 0

      // animations
      var pageControlBottomAnchor: NSLayoutConstraint?
      var skipButtonTopAnchor: NSLayoutConstraint?
      var nextButtonTopAnchor: NSLayoutConstraint?
      
      override func viewDidLoad() {
          super.viewDidLoad()
        
          
          setup()
          style()
          layout()
      }
    
}
