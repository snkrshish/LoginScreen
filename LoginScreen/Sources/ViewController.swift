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

    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 10
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()

    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot your password?", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        return button
    }()

    private lazy var twitterButton: UIButton = {
        let button = UIButton()
        let image = UIImage(named: "twitter")
        button.setTitle("Twitter", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.setImage(image, for: .normal)
        return button
    }()

    private lazy var facebookButton: UIButton = {
        let button = UIButton()
        let image = UIImage(named: "facebook")
        button.setTitle("Facebook", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemCyan
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.titleLabel?.textAlignment = .left
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.titleLabel?.textAlignment = .left
        button.setImage(image, for: .normal)
        return button
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
            $0.edges.equalTo(view).inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
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
        loginButton.snp.makeConstraints {
            $0.top.equalTo(passwordTextField).offset(90)
            $0.leading.equalTo(view).offset(150)
            $0.trailing.equalTo(view).offset(-150)
        }
        forgotPasswordButton.snp.makeConstraints {
            $0.top.equalTo(loginButton).offset(40)
            $0.leading.equalTo(view).offset(100)
            $0.trailing.equalTo(view).offset(-100)
        }
        twitterButton.snp.makeConstraints {
            $0.bottom.equalTo(view).offset(-100)
            $0.leading.equalTo(view).offset(20)
            $0.trailing.equalTo(view.snp.centerX).offset(-20)
            $0.height.lessThanOrEqualTo(40)
            $0.height.greaterThanOrEqualTo(40)

        }
        twitterButton.imageView?.snp.makeConstraints {
            $0.trailing.equalTo(twitterButton.titleLabel?.snp.leading ?? 0).offset(-20)
        }

        facebookButton.snp.makeConstraints {
            $0.bottom.equalTo(view).offset(-100)
            $0.trailing.equalTo(view).offset(-20)
            $0.leading.equalTo(view.snp.centerX).offset(20)
            $0.height.lessThanOrEqualTo(40)
            $0.height.greaterThanOrEqualTo(40)
        }
        facebookButton.imageView?.snp.makeConstraints {
            $0.trailing.equalTo(facebookButton.titleLabel?.snp.leading ?? 0).offset(-20)
        }
    }

    private func setupHierarchy() {
        view.addSubview(imageView)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(forgotPasswordButton)
        view.addSubview(facebookButton)
        view.addSubview(twitterButton)
    }

    //MARK: - Action
}

