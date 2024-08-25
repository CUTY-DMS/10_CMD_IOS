import UIKit
import SnapKit
import Then

class NoticeContentsViewController: UIViewController {
    
    let noticeText = UILabel().then {
        $0.text = "공지"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 15, weight: .bold)
    }
    let noticeTitle = UILabel().then{
        $0.text = "우정관 2학기 호실 배정 안내"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 23, weight: .bold)
    }
    let noticeDate = UILabel().then{
        $0.text = "2024/07/12"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 10, weight: .regular)
    }
    let Line = UIImageView().then {
        $0.image = UIImage(named: "Line")
    }
    let noticeContents = UILabel().then {
        $0.text = "내용 내용 내용 내용 내용 내용 내요 내용 ㄴ요내요내ㅛ 내요 ㄴ애ㅛㄴ 애ㅛㄴ앤욘애뇽ㄴ애ㅛㄴㅇㅇ"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 13, weight: .light)
    }
    let underBar = UIImageView().then {
        $0.image = UIImage(named: "underBar")
    }
    let scheduleButton = UIButton().then {
        $0.setImage(UIImage(named: "schedule"), for: .normal)
    }
    let studentButton = UIButton().then {
        $0.setImage(UIImage(named: "student"), for: .normal)
    }
    let notificationButton = UIButton().then {
        $0.setImage(UIImage(named: "notification"), for: .normal)
    }
    let myPageButton = UIButton().then {
        $0.setImage(UIImage(named: "myPage"), for: .normal)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
        
        view.backgroundColor = .white
    }
    
    func layout() {
        [
            noticeText,
            noticeTitle,
            noticeDate,
            Line,
            noticeContents,
            underBar,
            scheduleButton,
            studentButton,
            notificationButton,
            myPageButton
        ].forEach { view.addSubview($0) }
        noticeText.snp.makeConstraints {
            $0.top.equalToSuperview().inset(28)
            $0.left.equalToSuperview().inset(157)
            $0.right.equalToSuperview().inset(157)
            $0.height.equalTo(18)
            $0.width.equalTo(79)
        }
        noticeTitle.snp.makeConstraints {
            $0.top.equalTo(noticeText.snp.bottom).offset(98)
            $0.left.equalToSuperview().inset(25)
            $0.right.equalToSuperview().inset(99)
            $0.height.equalTo(28)
            $0.width.equalTo(269)
        }
        noticeDate.snp.makeConstraints {
            $0.top.equalTo(noticeTitle.snp.bottom).offset(7)
            $0.left.equalToSuperview().inset(33)
            $0.right.equalToSuperview().inset(306)
            $0.height.equalTo(12)
            $0.width.equalTo(54)
        }
        Line.snp.makeConstraints {
            $0.top.equalTo(noticeDate.snp.bottom).offset(16)
            $0.left.equalToSuperview().inset(0)
            $0.right.equalToSuperview().inset(0)
            $0.height.equalTo(1)
            $0.width.equalTo(393)
        }
        noticeContents.snp.makeConstraints {
            $0.top.equalTo(Line.snp.bottom).offset(21)
            $0.left.equalToSuperview().inset(25)
            $0.right.equalToSuperview().inset(27)
            $0.height.equalTo(86)
            $0.width.equalTo(341)
        }
            underBar.snp.makeConstraints {
                $0.top.equalTo(noticeContents.snp.bottom).offset(462)
                $0.left.equalToSuperview().inset(0)
                $0.right.equalToSuperview().inset(0)
                $0.height.equalTo(80)
                $0.width.equalTo(393)
            }
            scheduleButton.snp.makeConstraints {
                $0.top.equalTo(underBar.snp.top).offset(18)
                $0.left.equalToSuperview().inset(45)
                $0.right.equalToSuperview().inset(308)
                $0.height.equalTo(40)
                $0.width.equalTo(40)
            }
            studentButton.snp.makeConstraints {
                $0.top.equalTo(underBar.snp.top).offset(22)
                $0.left.equalToSuperview().inset(128)
                $0.right.equalToSuperview().inset(214)
                $0.height.equalTo(32)
                $0.width.equalTo(51)
            }
            notificationButton.snp.makeConstraints {
                $0.top.equalTo(underBar.snp.top).offset(14)
                $0.left.equalToSuperview().inset(222)
                $0.right.equalToSuperview().inset(308)
                $0.height.equalTo(43)
                $0.width.equalTo(44)
            }
            myPageButton.snp.makeConstraints {
                $0.top.equalTo(underBar.snp.top).offset(18)
                $0.left.equalToSuperview().inset(308)
                $0.right.equalToSuperview().inset(45)
                $0.height.equalTo(36)
                $0.width.equalTo(40)
            }
        }
    }
