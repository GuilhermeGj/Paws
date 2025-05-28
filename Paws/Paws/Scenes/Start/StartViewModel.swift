protocol StartViewModelProtocol {
    
}

protocol StartNavigationDelegate: AnyObject {
    
}

class StartViewModel {
    weak var delegate: StartNavigationDelegate?
    
    
    init (delegate: StartNavigationDelegate? = nil) {
        self.delegate = delegate
    }
}

extension StartViewModel: StartViewModelProtocol {

}
