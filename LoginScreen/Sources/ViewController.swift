import UIKit
import SnapKit

class ViewController: UIViewController {
    //MARK: - Outlets

    private lazy var imageView: UIImageView = {
        let imageView = UIImage(named: "plane")
        let image = UIImageView(image: imageView)
        return image
    }()

    private lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.clipsToBounds = true
        textField.borderStyle = .roundedRect
        textField.placeholder = "Введите логин или e-mail"
        textField.font = .systemFont(ofSize: 14)
        textField.textAlignment = .left
        textField.backgroundColor = .white
        return textField
    }()

    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.clipsToBounds = true
        textField.borderStyle = .roundedRect
        textField.placeholder = "Введите пароль"
        textField.font = .systemFont(ofSize: 14)
        textField.textAlignment = .left
        textField.backgroundColor = .white
        return textField
    }()


    //MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }


    //MARK: - Setup
    private func setupLayout() {
        imageView.snp.makeConstraints{
            $0.top.equalTo(view)
            $0.bottom.equalTo(view)
            $0.leading.equalTo(view)
            $0.trailing.equalTo(view)
        }
        loginTextField.snp.makeConstraints {
            $0.leading.equalTo(view).offset(100)
            $0.trailing.equalTo(view).offset(-100)
            $0.top.equalTo(view).offset(150)
            $0.centerX.equalTo(view)
        }
        passwordTextField.snp.makeConstraints {
            $0.centerX.equalTo(view)
            $0.leading.equalTo(view).offset(100)
            $0.trailing.equalTo(view).offset(-100)
            $0.top.equalTo(loginTextField).offset(70)
        }
    }

    private func setupHierarchy() {
        view.addSubview(imageView)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
    }

    //MARK: - Action
}

