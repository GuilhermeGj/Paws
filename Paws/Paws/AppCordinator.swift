import UIKit


protocol Coordinator {
    func start()
}

class AppCordinator: Coordinator {
    private let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let viewModel = StartViewModel()
        let viewController = StartViewController(viewModel: viewModel)
        navigationController.pushViewController(viewController, animated: true)
    }
}
