//
//  OnboardingPages.swift
//  SkillBoxDisk
//
//  Created by Alex on 28.08.2023.
//
import UIKit


class OnboadrdingPages: UIPageViewController {
   
    var viewModel: PageViewModelProtocol?
    var newUser = UserDefaults.standard.bool(forKey: "newUser")
    
    var pages = [UIViewController]()
      
      let skipButton = UIButton()
      let nextButton = UIButton()
      let pageControl = UIPageControl()
      let initialPage = 0

    var pageControlBottomAnchor: NSLayoutConstraint?
    var skipButtonTopAnchor: NSLayoutConstraint?
    var nextButtonTopAnchor: NSLayoutConstraint?
    
    
    
    init(viewModel: PageViewModelProtocol) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal)
    }
    
//    init(viewModel: PageViewModelProtocol) {
//        super.init(nibName: nil, bundle: nil)
//        self.viewModel = viewModel
//    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
      override func viewDidLoad() {
          super.viewDidLoad()
        
          
          setup()
          style()
          layout()
      }
    
    func setup() {
            dataSource = self
            delegate = self
            
            pageControl.addTarget(self, action: #selector(pageControlTapped(_:)), for: .valueChanged)

            let page1 = OnBoardingViewController(imageName: "folder1",
                                                 titleText: NSLocalizedString("Теперь все ваши документы в одном местe", comment: ""))
            let page2 = OnBoardingViewController(imageName: "folder2",
                                                 titleText: NSLocalizedString("Доступ к файлам без интернета", comment:""))
            let page3 = OnBoardingViewController(imageName: "folder3",
                                                 titleText: "Делитесь вашими фаилами с друзьями".localizedText())
            
            pages.append(page1)
            pages.append(page2)
            pages.append(page3)
          
            
            setViewControllers([pages[initialPage]], direction: .forward, animated: true, completion: nil)
        }

    
    
    func style() {
        
          pageControl.currentPageIndicatorTintColor = .black
          pageControl.pageIndicatorTintColor = .systemGray2
          pageControl.numberOfPages = pages.count
          pageControl.currentPage = initialPage

         
          skipButton.setTitleColor(.systemBlue, for: .normal)
          skipButton.setTitle("Назад".localizedText(), for: .normal)
          skipButton.addTarget(self, action: #selector(skipTapped(_:)), for: .primaryActionTriggered)

        
          nextButton.setTitleColor(.systemBlue, for: .normal)
          nextButton.setTitle("Далее".localizedText(), for: .normal)
          nextButton.addTarget(self, action: #selector(nextTapped(_:)), for: .primaryActionTriggered)
      }
    
    func layout() {
        
        [pageControl, skipButton, nextButton].forEach { subview in
            subview.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(subview)
            
        }
        
        pageControl.snp.makeConstraints { make in
            make.width.equalTo(150)
            make.height.equalTo(30)
            make.centerX.equalTo(view.snp.centerX)
            make.bottom.equalTo(view.snp.bottom).inset(50)
        }
        
        skipButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).multipliedBy(2)
            make.leading.equalTo(view.snp.leading).inset(20)
        }
        
        nextButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).multipliedBy(2)
            make.trailing.equalTo(view.snp.trailing).inset(20)
        }
        
        
    }
    
    
    
    @objc func pageControlTapped(_ sender: UIPageControl) {
          setViewControllers([pages[sender.currentPage]], direction: .forward, animated: true, completion: nil)
          animateControlsIfNeeded()
      }

      @objc func skipTapped(_ sender: UIButton) {
          let lastPage = pages.count - 1
          pageControl.currentPage = lastPage
          
          goToSpecificPage(index: lastPage, ofViewControllers: pages)
          animateControlsIfNeeded()
      }
      
    @objc func nextTapped(_ sender: UIButton) {
        if pageControl.currentPage < pages.count - 1 {
        pageControl.currentPage += 1
        goToNextPage()
        animateControlsIfNeeded()
           } else {
               UserDefaults.standard.set(false, forKey: "newUser")
               viewModel?.openLogin()
        }
    }
}

extension OnboadrdingPages: UIPageViewControllerDataSource{
    
       func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {

           guard let currentIndex = pages.firstIndex(of: viewController) else { return nil }
           
           if currentIndex == 0 {
               return pages.last               // wrap last
           } else {
               return pages[currentIndex - 1]  // go previous
           }
       }
           
       func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
           
           guard let currentIndex = pages.firstIndex(of: viewController) else { return nil }

           if currentIndex < pages.count - 1 {
               return pages[currentIndex + 1]  // go next
           } else {
               return pages.first              // wrap first
           }
       }
}

extension OnboadrdingPages: UIPageViewControllerDelegate{
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
          
          guard let viewControllers = pageViewController.viewControllers else { return }
          guard let currentIndex = pages.firstIndex(of: viewControllers[0]) else { return }
          
          pageControl.currentPage = currentIndex
          animateControlsIfNeeded()
      }
      
      private func animateControlsIfNeeded() {
          let lastPage = pageControl.currentPage == pages.count - 1
          
          if lastPage {
              hideControls()
          } else {
              showControls()
          }

          UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.5, delay: 0, options: [.curveEaseOut], animations: {
              self.view.layoutIfNeeded()
          }, completion: nil)
      }
    
    private func hideControls() {
         pageControlBottomAnchor?.constant = -80
         skipButtonTopAnchor?.constant = -80
         nextButtonTopAnchor?.constant = -80
     }

     private func showControls() {
        pageControlBottomAnchor?.constant = 16
         skipButtonTopAnchor?.constant = 16
         nextButtonTopAnchor?.constant = 16
     }
    
}
