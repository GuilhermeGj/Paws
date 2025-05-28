import UIKit

class StartViewController: UIViewController {
    let baseView: StartView = StartView()
    var viewModel: StartViewModelProtocol
    
    
    init(viewModel: StartViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    override func loadView() {
        super.loadView()
        
        self.view = baseView
        
    }
    
    override func viewDidLoad() {
    }
}
