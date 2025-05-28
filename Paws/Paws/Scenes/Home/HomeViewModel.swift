protocol HomeViewModelProtocol {
    var model: HomeModel { get }
}

protocol HomeNavigationDelegate: AnyObject {
    
}

class HomeViewModel {
    weak var delegate: HomeNavigationDelegate?
    
    
    init (delegate: HomeNavigationDelegate? = nil) {
        self.delegate = delegate
    }
}

extension HomeViewModel: HomeViewModelProtocol {
    var model: HomeModel {
        HomeModel(title: "Bom dia flor do dia")
    }
}
