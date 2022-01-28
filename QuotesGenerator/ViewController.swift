//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by SeongHoKim on 2022/01/26.
//
import UIKit 

class ViewController: UIViewController {
    // 메모리 호출전에 불러와서 실행하기
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var quotesLabel: UILabel! // 오늘의 명언
    @IBOutlet weak var nameLabel: UILabel! // 오늘의 명언이름
    @IBOutlet weak var quotesLabelB: UILabel! // 내일의 명언
    @IBOutlet weak var nameLabelB: UILabel! // 내일의 명언이름

    // 오늘의 명언생성 Button
    @IBAction func quotesButton(_ sender: Any) {
        // 랜덤으로 명언생성
        let random = Int(arc4random_uniform(5)) // 0~4까지의 명언난수를 발생시킴
        let quote = quotes[random] // random으로 오늘의 명언 배열의 요소에 접근
        self.quotesLabel.text = quote.contents // 오늘의 명언 배열의 요소에 접근한 명언들을 표시
        self.nameLabel.text = quote.name // 오늘의 명언 배열의 요소에 접근한 이름들을 표시
    }
    
    // 오늘의 명언 List(Quote)
    let quotes = [
        Quote(contents: "사랑은 거부할수 없이 열망하게 되는 거부할수 없는 열망이다", name: "로버트 프로스트"),
        Quote(contents: "서로에게 모든것을 줄때 평등한 거래가 된다. 각자가 모든것을 얻게 된다", name: "로이스 맥마스터 부욜"),
        Quote(contents: "누군가를 사랑한다는것은 자신을 그와 동일시 하는 것이다", name: "아리스토텔레스"),
        Quote(contents: "내 자신에 대한 자신감을 잃으면, 온세상이 나의적이 된다", name: "랄프왈도 에머슨"),
        Quote(contents: "다른 사람들이 할수 있거나 할일을 하지 말고, 다른 이들이 할수 없고 하지 않을 일들을 하라", name: "아멜리아 에어하트")
    ]
    
    // 내일의 명언생성 Button
    @IBAction func quotesButtonB(_ sender: UIButton) {
        // 랜덤으로 명언생성
        let randomB = Int(arc4random_uniform(5)) // 0~4까지의 명언난수를 발생
        let quoteB = quotesB[randomB] // randomB로 내일의 명언 배열의 요소에 접근
        self.quotesLabelB.text = quoteB.contents // 내일의 명언 배열의 요소에 접근한 명언들을 표시
        self.nameLabelB.text = quoteB.name // 내일의 명언 배열의 요소에 접근한 이름들을 표시
    }
    
    // 내일의 명언 List(QuoteB)
    let quotesB = [
        QuoteB(contents: "성공은 대개 그를 좇을 겨를도 없이 바쁜 사람에게 온다", name: "헨리 데이비드 소로우"),
        QuoteB(contents: "모든것을 관찰하세요 소통을 잘 하세요 그림을 그리고, 또 그리고, 또 그리세요", name: "프랭크 토마스"),
        QuoteB(contents: "관찰하는데 있어서는 준비된 자에게만 기회가 온다", name: "루이 파스퇴르"),
        QuoteB(contents: "걷기는 잊혀진 기술이 아니다 누구라도 어쨌든 차고까지는 걸어가야 한다", name: "에반 에사르"),
        QuoteB(contents: "당신의 노력을 존중하라, 당신 자신을 존중하라, 자존감은 자제력을 낳는다, 이 둘을 모두 겸비하면, 진정한 힘을 갖게 된다", name: "클린트 이스트우드")
    ]
}

