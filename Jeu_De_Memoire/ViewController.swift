//====================================
import UIKit
//====================================
class ViewController: UIViewController {
    //------------------------
    
    @IBOutlet weak var imgBravo: UIImageView!
    
    @IBOutlet weak var back_1: UIView!
    @IBOutlet weak var front_1: UIView!
    @IBOutlet weak var back_2: UIView!
    @IBOutlet weak var front_2: UIView!
    @IBOutlet weak var back_3: UIView!
    @IBOutlet weak var front_3: UIView!
    @IBOutlet weak var back_4: UIView!
    @IBOutlet weak var front_4: UIView!
    @IBOutlet weak var back_5: UIView!
    @IBOutlet weak var front_5: UIView!
    @IBOutlet weak var back_6: UIView!
    @IBOutlet weak var front_6: UIView!
    @IBOutlet weak var back_7: UIView!
    @IBOutlet weak var front_7: UIView!
    @IBOutlet weak var back_8: UIView!
    @IBOutlet weak var front_8: UIView!
    @IBOutlet weak var back_9: UIView!
    @IBOutlet weak var front_9: UIView!
    @IBOutlet weak var back_10: UIView!
    @IBOutlet weak var front_10: UIView!
    @IBOutlet weak var back_11: UIView!
    @IBOutlet weak var front_11: UIView!
    @IBOutlet weak var back_12: UIView!
    @IBOutlet weak var front_12: UIView!
    @IBOutlet weak var back_13: UIView!
    @IBOutlet weak var front_13: UIView!
    @IBOutlet weak var back_14: UIView!
    @IBOutlet weak var front_14: UIView!
    @IBOutlet weak var back_15: UIView!
    @IBOutlet weak var front_15: UIView!
    @IBOutlet weak var back_16: UIView!
    @IBOutlet weak var front_16: UIView!
    
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    @IBOutlet weak var imgView4: UIImageView!
    @IBOutlet weak var imgView5: UIImageView!
    @IBOutlet weak var imgView6: UIImageView!
    @IBOutlet weak var imgView7: UIImageView!
    @IBOutlet weak var imgView8: UIImageView!
    @IBOutlet weak var imgView9: UIImageView!
    @IBOutlet weak var imgView10: UIImageView!
    @IBOutlet weak var imgView11: UIImageView!
    @IBOutlet weak var imgView12: UIImageView!
    @IBOutlet weak var imgView13: UIImageView!
    @IBOutlet weak var imgView14: UIImageView!
    @IBOutlet weak var imgView15: UIImageView!
    @IBOutlet weak var imgView16: UIImageView!
    
    @IBOutlet weak var card_1: UIView!
    @IBOutlet weak var card_2: UIView!
    @IBOutlet weak var card_3: UIView!
    @IBOutlet weak var card_4: UIView!
    @IBOutlet weak var card_5: UIView!
    @IBOutlet weak var card_6: UIView!
    @IBOutlet weak var card_7: UIView!
    @IBOutlet weak var card_8: UIView!
    @IBOutlet weak var card_9: UIView!
    @IBOutlet weak var card_10: UIView!
    @IBOutlet weak var card_11: UIView!
    @IBOutlet weak var card_12: UIView!
    @IBOutlet weak var card_13: UIView!
    @IBOutlet weak var card_14: UIView!
    @IBOutlet weak var card_15: UIView!
    @IBOutlet weak var card_16: UIView!
    
    //var cards: [UIView]!
    
    var arrayOfImageViews: [UIImageView]!
    var arrayOfAnimalNames: [String] = ["canard.png",
                                        "canard.png",
                                        "elephant.png",
                                        "elephant.png",
                                        "girafe.png",
                                        "girafe.png",
                                        "hippopotame.png",
                                        "hippopotame.png",
                                        "ours",
                                        "ours",
                                        "porc",
                                        "porc",
                                        "ratons_laveur.png",
                                        "ratons_laveur.png",
                                        "tigre.png",
                                        "tigre.png"]
    var arrayOfRandomAnimalNames = [String]()
    var arrayChosenCards = [String]()
    var arrayChosenViews = [UIView]()
    
    var arrayOfShowingBacks = [UIView]()
    var arrayOfHidingFronts = [UIView]()
    var compteur : Int = 0
    //--------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*cards = [card_1,
                 card_2,
                 card_3,
                 card_4,
                 card_5,
                 card_6,
                 card_7,
                 card_8,
                 card_9,
                 card_10,
                 card_11,
                 card_12,
                 card_13,
                 card_14,
                 card_15,
                 card_16]*/
        
      //  imgBravo.isHidden = true
        
        arrayOfImageViews = [imgView1,
                             imgView2,
                             imgView3,
                             imgView4,
                             imgView5,
                             imgView6,
                             imgView7,
                             imgView8,
                             imgView9,
                             imgView10,
                             imgView11,
                             imgView12,
                             imgView13,
                             imgView14,
                             imgView15,
                             imgView16]
        randomAnimalNames()
        setImagesToCard()
    }
    //------------------------
    @IBAction func showCard(_ sender: UIButton) {
        //print(sender.tag)
        if arrayOfHidingFronts.count == 2 {
            return
        }
        switch sender.tag {
            case 0:
                flipCard(from: front_1, to: back_1)
                arrayChosenCards.append(arrayOfRandomAnimalNames[0])
                arrayChosenViews.append(card_1)
                arrayOfHidingFronts.append(front_1)
                arrayOfShowingBacks.append(back_1)
            case 1:
                flipCard(from: front_2, to: back_2)
                arrayChosenCards.append(arrayOfRandomAnimalNames[1])
                arrayChosenViews.append(card_2)
                arrayOfHidingFronts.append(front_2)
                arrayOfShowingBacks.append(back_2)
            case 2:
                flipCard(from: front_3, to: back_3)
                arrayChosenCards.append(arrayOfRandomAnimalNames[2])
                arrayChosenViews.append(card_3)
                arrayOfHidingFronts.append(front_3)
                arrayOfShowingBacks.append(back_3)
            case 3:
                flipCard(from: front_4, to: back_4)
                arrayChosenCards.append(arrayOfRandomAnimalNames[3])
                arrayChosenViews.append(card_4)
                arrayOfHidingFronts.append(front_4)
                arrayOfShowingBacks.append(back_4)
            case 4:
                flipCard(from: front_5, to: back_5)
                arrayChosenCards.append(arrayOfRandomAnimalNames[4])
                arrayChosenViews.append(card_5)
                arrayOfHidingFronts.append(front_5)
                arrayOfShowingBacks.append(back_5)
            case 5:
                flipCard(from: front_6, to: back_6)
                arrayChosenCards.append(arrayOfRandomAnimalNames[5])
                arrayChosenViews.append(card_6)
                arrayOfHidingFronts.append(front_6)
                arrayOfShowingBacks.append(back_6)
            case 6:
                flipCard(from: front_7, to: back_7)
                arrayChosenCards.append(arrayOfRandomAnimalNames[6])
                arrayChosenViews.append(card_7)
                arrayOfHidingFronts.append(front_7)
                arrayOfShowingBacks.append(back_7)
            case 7:
                flipCard(from: front_8, to: back_8)
                arrayChosenCards.append(arrayOfRandomAnimalNames[7])
                arrayChosenViews.append(card_8)
                arrayOfHidingFronts.append(front_8)
                arrayOfShowingBacks.append(back_8)
            case 8:
                flipCard(from: front_9, to: back_9)
                arrayChosenCards.append(arrayOfRandomAnimalNames[8])
                arrayChosenViews.append(card_9)
                arrayOfHidingFronts.append(front_9)
                arrayOfShowingBacks.append(back_9)
            case 9:
                flipCard(from: front_10, to: back_10)
                arrayChosenCards.append(arrayOfRandomAnimalNames[9])
                arrayChosenViews.append(card_10)
                arrayOfHidingFronts.append(front_10)
                arrayOfShowingBacks.append(back_10)
            case 10:
                flipCard(from: front_11, to: back_11)
                arrayChosenCards.append(arrayOfRandomAnimalNames[10])
                arrayChosenViews.append(card_11)
                arrayOfHidingFronts.append(front_11)
                arrayOfShowingBacks.append(back_11)
            case 11:
                flipCard(from: front_12, to: back_12)
                arrayChosenCards.append(arrayOfRandomAnimalNames[11])
                arrayChosenViews.append(card_12)
                arrayOfHidingFronts.append(front_12)
                arrayOfShowingBacks.append(back_12)
            case 12:
                flipCard(from: front_13, to: back_13)
                arrayChosenCards.append(arrayOfRandomAnimalNames[12])
                arrayChosenViews.append(card_13)
                arrayOfHidingFronts.append(front_13)
                arrayOfShowingBacks.append(back_13)
            case 13:
                flipCard(from: front_14, to: back_14)
                arrayChosenCards.append(arrayOfRandomAnimalNames[13])
                arrayChosenViews.append(card_14)
                arrayOfHidingFronts.append(front_14)
                arrayOfShowingBacks.append(back_14)
            case 14:
                flipCard(from: front_15, to: back_15)
                arrayChosenCards.append(arrayOfRandomAnimalNames[14])
                arrayChosenViews.append(card_15)
                arrayOfHidingFronts.append(front_15)
                arrayOfShowingBacks.append(back_15)
            case 15:
                flipCard(from: front_16, to: back_16)
                arrayChosenCards.append(arrayOfRandomAnimalNames[15])
                arrayChosenViews.append(card_16)
                arrayOfHidingFronts.append(front_16)
                arrayOfShowingBacks.append(back_16)
 
        default:
            break
        }
        verification()
    }
    //------------------------
    func flipCard(from: UIView, to: UIView) { //methode pour faire tt la transition
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: from, duration: 1.0, options: transitionOptions, animations: {
            from.isHidden = true
        })
        
        UIView.transition(with: to, duration: 1.0, options: transitionOptions, animations: {
            to.isHidden = false
        })
    }
    //------------------------
    func setImagesToCard() {
        var number = 0
        for imgView in arrayOfImageViews {
            imgView.image = UIImage(named: arrayOfRandomAnimalNames[number])
            number = number + 1
        }
    }
    //------------------------
    func randomAnimalNames() {
        let numberOfAnimals = arrayOfAnimalNames.count
        
        for _ in 1...numberOfAnimals {
            let randomNumber = Int(arc4random_uniform(UInt32(arrayOfAnimalNames.count)))
            arrayOfRandomAnimalNames.append(arrayOfAnimalNames[randomNumber])
            arrayOfAnimalNames.remove(at: randomNumber)
        }
    }
    //------------------------
    func verification() {
   
        if arrayChosenCards.count == 2 {
            if arrayChosenCards[0] == arrayChosenCards[1] {
                Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector: #selector(hideCards),
                                     userInfo: nil,
                                     repeats: false)
                compteur = compteur + 1
                Timer.scheduledTimer(timeInterval: 2,
                                     target: self,
                                     selector: (#selector(verifier)),
                                     userInfo: nil,
                                     repeats: false)
            }
            else {
                arrayChosenViews = []
            }
            arrayChosenCards = []
        }
        resetCards()
    }
    //------------------------
    func resetCards() {
        if arrayOfShowingBacks.count == 2 {
        Timer.scheduledTimer(timeInterval: 2,
                             target: self,
                             selector: (#selector(reflip)),
                             userInfo: nil,
                             repeats: false)
        }
    }
    //-----------------------
    @objc func verifier() {
        if (compteur ==  1) {
            //imgBravo.isHidden = false
            /*Timer.scheduledTimer(timeInterval: 3,
                                 target: self,
                                 selector: (#selector(bravo)),
                                 userInfo: nil,
                                 repeats: false)*/
            //sleep(8)
            performSegue(withIdentifier: "seg", sender: nil)
        }
    }
    //-----------------------
    @objc func reflip() {
        for index in 0..<arrayOfShowingBacks.count {
            flipCard(from: arrayOfShowingBacks[index], to: arrayOfHidingFronts[index])
        }
        arrayOfHidingFronts = []
        arrayOfShowingBacks = []
    }
    //------------------------
    /*@objc func bravo() {
        imgBravo.isHidden = false
    }*/
    //------------------------
    @objc func hideCards() {
        arrayChosenViews[0].isHidden = true
        arrayChosenViews[1].isHidden = true
        arrayChosenViews = []
    }
    //------------------------
    /*@IBAction func reset(_ sender: UIButton) {
        
        for card in cards {
          
            card.isHidden = false ;
            setImagesToCard()
            arrayOfAnimalNames = ["canard.png",
                                  "canard.png",
                                  "elephant.png",
                                  "elephant.png",
                                  "girafe.png",
                                  "girafe.png",
                                  "hippopotame.png",
                                  "hippopotame.png",
                                  "ours",
                                  "ours",
                                  "porc",
                                  "porc",
                                  "ratons_laveur.png",
                                  "ratons_laveur.png",
                                  "tigre.png",
                                  "tigre.png"]
            arrayOfRandomAnimalNames = []
            randomAnimalNames()
            setImagesToCard()
         }
     }*/
   
}

//performSegue(withIdentifier: "seg", sender: nil)

















