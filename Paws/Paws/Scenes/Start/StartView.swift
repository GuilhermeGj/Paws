import UIKit

class StartView: UIView {
    let continueButton: UIButton = {
        let button: UIButton = UIButton()
        button.backgroundColor = .systemGreen
        button.titleLabel?.text = "Continuar"
        button.titleLabel?.textColor = .white
        button.layer.cornerRadius = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let startLabel: UILabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        backgroundColor = UIColor(patternImage: Asset.lauchScreenImage.image)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initialize() {
        addSubview(continueButton)
        installContraints()
    }
    
    func installContraints() {
        
        NSLayoutConstraint.activate([
            continueButton.heightAnchor.constraint(equalToConstant: 48),
            continueButton.widthAnchor.constraint(equalToConstant: 220),
            continueButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            continueButton.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
}
