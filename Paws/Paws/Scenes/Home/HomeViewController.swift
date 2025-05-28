import UIKit

class HomeViewController: UIViewController {
    let baseView: HomeView = HomeView()
    var viewModel: HomeViewModelProtocol
    
    
    init(viewModel: HomeViewModelProtocol) {
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
        baseView.startLabel.text = viewModel.model.title
    }
}
