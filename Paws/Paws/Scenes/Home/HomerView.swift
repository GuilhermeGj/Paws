import UIKit

class HomeView: UIView {
    let startLabel: UILabel = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        backgroundColor = .white
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initialize() {
        addSubview(startLabel)
        startLabel.translatesAutoresizingMaskIntoConstraints = false
        installContraints()
    }
    
    func installContraints() {
        NSLayoutConstraint.activate([
            startLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            startLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
