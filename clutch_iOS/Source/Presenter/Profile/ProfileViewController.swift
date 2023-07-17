//
//  ProfileViewController.swift
//  clutch_iOS
//
//  Created by 현종혁 on 2023/07/17.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    // MARK: - UI ProPerties
    // UINavigationBar 선언("< 회원 정보 확인")
    let navigationBar = UINavigationBar()
    
    // 인스턴스에 InputScreen() 할당
    let nameInput = InputScreen()
    let mailInput = InputScreen()
    let phoneNumberInput = InputScreen()
    
    func setData() {
        nameInput.titleLabel.text = "이름"
        nameInput.textField.text = "조혜원" // -> 입력값으로 처리
        
        mailInput.titleLabel.text = "이메일"
//        mailInput.textField.text = "clutch@kakao.com" // -> 입력값으로 처리
        
        phoneNumberInput.titleLabel.text = "휴대폰 번호"
//        phoneNumberInput.textField.text = "010-1234-5678" // -> 입력값으로 처리
        
        
        phoneNumberInput.textField.attributedPlaceholder = NSAttributedString(string: "ddd", attributes: [NSAttributedString.Key.foregroundColor: UIColor.Clutch.textDarkGrey])
    }
        
    // MARK: - Define Method
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setData()
        setView()
        Constraint()
    }
        
    //MARK: - Set Ui
    func setView() {
        [navigationBar, nameInput.titleLabel, nameInput.textField, nameInput.underLine, mailInput.titleLabel, mailInput.textField, mailInput.underLine, phoneNumberInput.titleLabel, phoneNumberInput.textField, phoneNumberInput.underLine].forEach { view in
            self.view.addSubview(view)
        }

        navigationBarSet()
        
    }
    
    func navigationBarSet() {
        let navigationItem = UINavigationItem()
        navigationItem.title = "문의하기"
        let iamge = UIImage(systemName: "chevron.backward")
        let backButton = UIBarButtonItem(image:iamge, style: .plain, target: self, action: #selector(backButtonTapped))
        navigationItem.leftBarButtonItem = backButton
        navigationBar.setItems([navigationItem], animated: false)
        navigationBar.barTintColor = .Clutch.mainWhite // 배경색 변경
        navigationBar.shadowImage = UIImage() // 테두리 없애기
    }
    
    @objc func backButtonTapped() {
        present(MypageViewController(), animated: true)
    }
    
    func Constraint() {
        navigationBar.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.width.equalToSuperview()
            make.top.equalToSuperview().offset(65)
            make.leading.equalToSuperview()
        }
        
        nameInput.titleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.top.equalToSuperview().offset(169)
        }
        
        nameInput.textField.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.top.equalToSuperview().offset(196)
        }
        
        nameInput.underLine.snp.makeConstraints{ make in
            make.width.equalTo(360)
            make.height.equalTo(2)
            make.top.equalToSuperview().offset(226)
            make.centerX.equalToSuperview()
        }
        
        mailInput.titleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.top.equalToSuperview().offset(268)
        }
        
        mailInput.textField.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.top.equalToSuperview().offset(297)
        }
        
        mailInput.underLine.snp.makeConstraints{ make in
            make.width.equalTo(360)
            make.height.equalTo(2)
            make.top.equalToSuperview().offset(327)
            make.centerX.equalToSuperview()
        }
        
        phoneNumberInput.titleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.top.equalToSuperview().offset(369)
        }
        
        phoneNumberInput.textField.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.top.equalToSuperview().offset(402)
        }
        
        phoneNumberInput.underLine.snp.makeConstraints{ make in
            make.width.equalTo(360)
            make.height.equalTo(2)
            make.top.equalToSuperview().offset(432)
            make.centerX.equalToSuperview()
        }
        
    }
    
}
