//
//  MainViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 03.02.2025.
//
private enum ScreensImages {
    static let  home = UIImage(systemName:"house")!
    static let  bathroom = UIImage(systemName:"bathtub")!
    static let  furniture = UIImage(systemName:"table.furniture")!
    static let  flowers = UIImage(systemName: "camera.macro")!
}

import UIKit

protocol TabBarViewProtocol: UIViewController {
    
}
protocol MainDisplayLogic: UIViewController {
    var interactor: MainBusinessLogic? { get set }
    var router: MainRoutingLogic? { get set }
}

class MainViewController: UITabBarController, MainDisplayLogic {
    var interactor: MainBusinessLogic?
    var router: MainRoutingLogic?
    
    lazy var subViews: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        view.backgroundColor = .white
        setupView()
        self.selectedIndex = 3
        self.tabBar.barTintColor = .white
        self.tabBar.backgroundColor = .white
        self.tabBar.tintColor = .black
    }
}

// MARK: - Display Logic Functions
extension MainViewController {

}

// MARK: - Set UI Functions
extension MainViewController {
    
    func setTabBar() {
        guard let views = router?.getTabScreens() else { return }
        let flowers = setScreenTabBarItem(title: "Flowers", image: ScreensImages.flowers, vc: views[.flowers])
        let home = setScreenTabBarItem(title: "Home", image: ScreensImages.home, vc: views[.home])
        let furniture = setScreenTabBarItem(title: "Furniture", image: ScreensImages.furniture, vc: views[.furniture])
        let bathroom = setScreenTabBarItem(title: "Bathroom", image: ScreensImages.bathroom, vc: views[.bathroom])
        subViews = [flowers,bathroom,furniture,home]
        self.setViewControllers(subViews, animated: true)
    }
 
    private func setScreenTabBarItem(title: String,image: UIImage, vc: UIViewController?)-> UIViewController {
        guard let vc else { return UIViewController() }
        vc.tabBarItem.title = title
        vc.tabBarItem.image = image
        return vc
    }
    
    private func setupView() {
        setTabBar()
    }
 
}
extension MainViewController : UITabBarControllerDelegate {
    
}
