//
//  controlViewController.swift
//  pokerKing21
//
//  Created by Randy on 2017/9/26.
//  Copyright © 2017年 Randy. All rights reserved.
//

import UIKit
import GameplayKit



class controlViewController: UIViewController {
    
    @IBOutlet weak var userPlay: UIButton!
    @IBOutlet weak var userNext: UIButton!
    @IBOutlet weak var userPass: UIButton!
    @IBOutlet weak var userReplay: UIButton!
    
    @IBOutlet weak var aiPlace01: UIImageView!
    @IBOutlet weak var aiPlace02: UIImageView!
    @IBOutlet weak var aiPlace03: UIImageView!
    @IBOutlet weak var aiPlace04: UIImageView!
    @IBOutlet weak var aiPlace05: UIImageView!
    
    @IBOutlet weak var playerPlace01: UIImageView!
    @IBOutlet weak var playerPlace02: UIImageView!
    @IBOutlet weak var playerPlace03: UIImageView!
    @IBOutlet weak var playerPlace04: UIImageView!
    @IBOutlet weak var playerPlace05: UIImageView!
    
    @IBOutlet weak var labPlayResult: UILabel!
    
    var aiScore = 0
    var playerScore = 0
    var aiFirstArrayNumber = 0
    var aiImagePlaceUsed = 0
    var playerPlaceUsed = 0
    var aiGetAceCount = 0
    var playerGetAceCount = 0
    
    var cardArray = [porkerType]()
    var aiTalkArray = [aiTalk]()
    var randonNumber : GKShuffledDistribution?
    var randonNumber_Talk : GKShuffledDistribution?
    
    @IBOutlet weak var image_ai_01_back: UIImageView!
    @IBOutlet weak var image_ai_02_back: UIImageView!
    @IBOutlet weak var image_ai_03_back: UIImageView!
    @IBOutlet weak var image_ai_04_back: UIImageView!
    @IBOutlet weak var image_ai_05_back: UIImageView!
    @IBOutlet weak var image_player_01_back: UIImageView!
    @IBOutlet weak var image_player_02_back: UIImageView!
    @IBOutlet weak var image_player_03_back: UIImageView!
    @IBOutlet weak var image_player_04_back: UIImageView!
    @IBOutlet weak var image_player_05_back: UIImageView!
   // @IBOutlet weak var lab_aiTalk: UILabel!
    @IBOutlet weak var lab_aiTalk: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        userNext.isUserInteractionEnabled = false
        userNext.alpha = 0.5
        userPass.isUserInteractionEnabled = false
        userPass.alpha = 0.5
        userReplay.isUserInteractionEnabled = false
        userReplay.alpha = 0.5
        
        image_ai_01_back.alpha = 0
        image_ai_02_back.alpha = 0
        image_ai_03_back.alpha = 0
        image_ai_04_back.alpha = 0
        image_ai_05_back.alpha = 0
        
        image_player_01_back.alpha = 0
        image_player_02_back.alpha = 0
        image_player_03_back.alpha = 0
        image_player_04_back.alpha = 0
        image_player_05_back.alpha = 0
        
        //porkerType(porkerNumber: <#T##Int#>, image: <#T##String#>, porkerFlower: <#T##String#>)
      
        aiTalkArray = [aiTalk(word: "下好離手喔"),
        aiTalk(word: "贏要衝，輸要縮"),
        aiTalk(word: "要不要回家找媽媽"),
        aiTalk(word: "孩子，夜深了"),
        aiTalk(word: "要用瑞士本票了嗎"),
        aiTalk(word: "我佈局佈了五年之久")]
        randonNumber_Talk = GKShuffledDistribution(lowestValue: 0, highestValue: aiTalkArray.count - 1)
        cardArray = [porkerType(porkerNumber: 1, image: "14", porkerFlower: 4),
                     porkerType(porkerNumber: 2, image: "15", porkerFlower: 4),
                     porkerType(porkerNumber: 3, image: "3", porkerFlower: 4),
                     porkerType(porkerNumber: 4, image: "4", porkerFlower: 4),
                     porkerType(porkerNumber: 5, image: "5", porkerFlower: 4),
                     porkerType(porkerNumber: 6, image: "6", porkerFlower: 4),
                     porkerType(porkerNumber: 7, image: "7", porkerFlower: 4),
                     porkerType(porkerNumber: 8, image: "8", porkerFlower: 4),
                     porkerType(porkerNumber: 9, image: "9", porkerFlower: 4),
                     porkerType(porkerNumber: 10, image: "10", porkerFlower: 4),
                     porkerType(porkerNumber: 10, image: "11", porkerFlower: 4),
                     porkerType(porkerNumber: 10, image: "12", porkerFlower: 4),
                     porkerType(porkerNumber: 10, image: "13", porkerFlower: 4),
                     porkerType(porkerNumber: 1, image: "27", porkerFlower: 3),
                     porkerType(porkerNumber: 2, image: "28", porkerFlower: 3),
                     porkerType(porkerNumber: 3, image: "16", porkerFlower: 3),
                     porkerType(porkerNumber: 4, image: "17", porkerFlower: 3),
                     porkerType(porkerNumber: 5, image: "18", porkerFlower: 3),
                     porkerType(porkerNumber: 6, image: "19", porkerFlower: 3),
                     porkerType(porkerNumber: 7, image: "20", porkerFlower: 3),
                     porkerType(porkerNumber: 8, image: "21", porkerFlower: 3),
                     porkerType(porkerNumber: 9, image: "22", porkerFlower: 3),
                     porkerType(porkerNumber: 10, image: "23", porkerFlower: 3),
                     porkerType(porkerNumber: 10, image: "24", porkerFlower: 3),
                     porkerType(porkerNumber: 10, image: "25", porkerFlower: 3),
                     porkerType(porkerNumber: 10, image: "26", porkerFlower: 3),
                     porkerType(porkerNumber: 1, image: "53", porkerFlower: 2),
                     porkerType(porkerNumber: 2, image: "54", porkerFlower: 2),
                     porkerType(porkerNumber: 3, image: "42", porkerFlower: 2),
                     porkerType(porkerNumber: 4, image: "43", porkerFlower: 2),
                     porkerType(porkerNumber: 5, image: "44", porkerFlower: 2),
                     porkerType(porkerNumber: 6, image: "45", porkerFlower: 2),
                     porkerType(porkerNumber: 7, image: "46", porkerFlower: 2),
                     porkerType(porkerNumber: 8, image: "47", porkerFlower: 2),
                     porkerType(porkerNumber: 9, image: "48", porkerFlower: 2),
                     porkerType(porkerNumber: 10, image: "49", porkerFlower: 2),
                     porkerType(porkerNumber: 10, image: "50", porkerFlower: 2),
                     porkerType(porkerNumber: 10, image: "51", porkerFlower: 2),
                     porkerType(porkerNumber: 10, image: "52", porkerFlower: 2),
                     porkerType(porkerNumber: 1, image: "40", porkerFlower: 1),
                     porkerType(porkerNumber: 2, image: "41", porkerFlower: 1),
                     porkerType(porkerNumber: 3, image: "29", porkerFlower: 1),
                     porkerType(porkerNumber: 4, image: "30", porkerFlower: 1),
                     porkerType(porkerNumber: 5, image: "31", porkerFlower: 1),
                     porkerType(porkerNumber: 6, image: "32", porkerFlower: 1),
                     porkerType(porkerNumber: 7, image: "33", porkerFlower: 1),
                     porkerType(porkerNumber: 8, image: "34", porkerFlower: 1),
                     porkerType(porkerNumber: 9, image: "35", porkerFlower: 1),
                     porkerType(porkerNumber: 10, image: "36", porkerFlower: 1),
                     porkerType(porkerNumber: 10, image: "37", porkerFlower: 1),
                     porkerType(porkerNumber: 10, image: "38", porkerFlower: 1),
                     porkerType(porkerNumber: 10, image: "39", porkerFlower: 1)]
        
        randonNumber = GKShuffledDistribution(lowestValue: 0, highestValue: cardArray.count-1)
        
        labPlayResult.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func userStartPlay(_ sender: Any) {
        userNext.isUserInteractionEnabled = true
        userNext.alpha = 1
        userPass.isUserInteractionEnabled = true
        userPass.alpha = 1
        userReplay.isUserInteractionEnabled = true
        userReplay.alpha = 1
        
        userPlay.isUserInteractionEnabled = false
        userPlay.alpha = 0
        
        start()
    }
    
    func start() {
        for i in 0...3 {
            var tempNumber = randonNumber?.nextInt()
            var temp2 = cardArray[tempNumber!]
            
            
            if i == 0{
                aiPlace01.image = UIImage(named: "porkerBack")
                aiScore = aiScore + temp2.porkerNumber
                aiFirstArrayNumber = aiScore
                if aiScore == 1{
                    aiGetAceCount = aiGetAceCount + 1
                }
                aiImagePlaceUsed = aiImagePlaceUsed + 1
            }
            else if i == 1{
                //image_ai_02_back.alpha = 1
                //usleep(1000000)
                playerPlace01.image = UIImage(named: temp2.image)
                playerScore = playerScore + temp2.porkerNumber
                playerPlaceUsed =   playerPlaceUsed + 1
                if temp2.porkerNumber == 1{
                    playerGetAceCount = playerGetAceCount + 1
                }
                image_ai_02_back.alpha = 0
            }
            else if i == 2{
                aiPlace02.image = UIImage(named: temp2.image)
                aiScore = aiScore + temp2.porkerNumber
                aiImagePlaceUsed = aiImagePlaceUsed + 1
                if temp2.porkerNumber == 1{
                    aiGetAceCount = aiGetAceCount + 1
                }
            }
            else if i == 3{
                playerPlace02.image = UIImage(named: temp2.image)
                playerScore = playerScore + temp2.porkerNumber
                playerPlaceUsed =   playerPlaceUsed + 1
                if temp2.porkerNumber == 1{
                    playerGetAceCount = playerGetAceCount + 1
                }
            }
        }
    }
    
   
    
    @IBAction func playerNext(_ sender: Any) {
        var tempNumber = randonNumber_Talk?.nextInt()
        lab_aiTalk.text = aiTalkArray[tempNumber!].word
        
        if playerPlaceUsed == 5 && playerPlaceUsed < 22{
            labPlayResult.text = "YOU WIN"
            
            userNext.isUserInteractionEnabled = false
            userNext.alpha = 0.5
            userPass.isUserInteractionEnabled = false
            userPass.alpha = 0.5
        }
        else{
            var tempNumber = randonNumber?.nextInt()
            var temp2 = cardArray[tempNumber!]
            if playerPlaceUsed == 2{
              
                //usleep(1000000)
                playerPlace03.image = UIImage(named: temp2.image)
                playerScore = playerScore + temp2.porkerNumber
                playerPlaceUsed = playerPlaceUsed + 1
            }
            else if playerPlaceUsed == 3{
                playerPlace04.image = UIImage(named: temp2.image)
                playerScore = playerScore + temp2.porkerNumber
                playerPlaceUsed = playerPlaceUsed + 1
            }
            else if playerPlaceUsed == 4{
                playerPlace05.image = UIImage(named: temp2.image)
                playerScore = playerScore + temp2.porkerNumber
                playerPlaceUsed = playerPlaceUsed + 1
            }
        }
        
        if playerScore > 21{
            labPlayResult.text = "AI WIN"
            
            userNext.isUserInteractionEnabled = false
            userNext.alpha = 0.5
            userPass.isUserInteractionEnabled = false
            userPass.alpha = 0.5
        }
        if playerScore == 21{
            labPlayResult.text = "YOU WIN"
            
            userNext.isUserInteractionEnabled = false
            userNext.alpha = 0.5
            userPass.isUserInteractionEnabled = false
            userPass.alpha = 0.5
        }
        
    }
    
    @IBAction func btnUserPass(_ sender: Any) {
        userNext.isUserInteractionEnabled = false
        userNext.alpha = 0.5
        userPass.isUserInteractionEnabled = false
        userPass.alpha = 0.5
        
        var tempNumber = randonNumber_Talk?.nextInt()
        lab_aiTalk.text = aiTalkArray[tempNumber!].word
        //計算player有沒有ace 有的話開始換算
       
        while true{
            if playerScore < 13 && playerGetAceCount > 0 {
                playerGetAceCount = playerGetAceCount - 1
                playerScore = playerScore - 1 + 10
            }
            else{
                break
            }
        }
        
        var tempsaiScore = 0
        var tempaiGetAceCount = 0
        var temp3 = cardArray[aiFirstArrayNumber]
        while true {
            tempsaiScore = aiScore
            tempaiGetAceCount = aiGetAceCount
            
            if aiScore < 22 && aiImagePlaceUsed == 5{
                labPlayResult.text = "AI WIN"
                aiPlace01.image = UIImage(named: temp3.image)
                break
            }
            else{
                while true{
                    if tempsaiScore < 13 && tempaiGetAceCount > 0{
                        tempaiGetAceCount = tempaiGetAceCount - 1
                        tempsaiScore = tempsaiScore - 1 + 10
                    }
                    else{
                        break
                    }
                }
                var tempNumber = randonNumber?.nextInt()
                var temp2 = cardArray[tempNumber!]
                if tempsaiScore > aiScore && tempsaiScore > 16 && tempsaiScore < 22{
                    aiScore = tempsaiScore
                }
                if aiScore > 16 && aiScore < 22{
                    if aiScore >= playerScore{
                        labPlayResult.text = "AI WIN"
                        aiPlace01.image = UIImage(named: temp3.image)
                        break
                    }
                    else{
                        labPlayResult.text = "YOU WIN"
                        aiPlace01.image = UIImage(named: temp3.image)
                        break
                    }
                }
                else{
                    if aiImagePlaceUsed == 2{
                        aiPlace03.image = UIImage(named: temp2.image)
                        aiScore = aiScore + temp2.porkerNumber
                        aiImagePlaceUsed = aiImagePlaceUsed + 1
                        if temp2.porkerNumber == 1{
                            aiGetAceCount = aiGetAceCount + 1
                        }
                    }
                    else if aiImagePlaceUsed == 3{
                        aiPlace04.image = UIImage(named: temp2.image)
                        aiScore = aiScore + temp2.porkerNumber
                        aiImagePlaceUsed = aiImagePlaceUsed + 1
                        if temp2.porkerNumber == 1{
                            aiGetAceCount = aiGetAceCount + 1
                        }
                    }
                    else if aiImagePlaceUsed == 4{
                        aiPlace05.image = UIImage(named: temp2.image)
                        aiScore = aiScore + temp2.porkerNumber
                        aiImagePlaceUsed = aiImagePlaceUsed + 1
                        if temp2.porkerNumber == 1{
                            aiGetAceCount = aiGetAceCount + 1
                        }
                    }
                    
                    
                    if aiScore == 21{
                        labPlayResult.text = "AI WIN"
                        aiPlace01.image = UIImage(named: temp3.image)
                        break
                    }
                    
                    if aiScore > 21{
                        labPlayResult.text = "YOU WIN"
                        aiPlace01.image = UIImage(named: temp3.image)
                        break
                    }
                }
                
                
                
            }
        }
        
    }
    
    @IBAction func restart(_ sender: Any) {
        labPlayResult.text = ""
        aiScore = 0
        playerScore = 0
        aiPlace01.image = UIImage(named:"")
        aiPlace02.image = UIImage(named:"")
        aiPlace03.image = UIImage(named:"")
        aiPlace04.image = UIImage(named:"")
        aiPlace05.image = UIImage(named:"")
        
        playerPlace01.image = UIImage(named:"")
           playerPlace02.image = UIImage(named:"")
           playerPlace03.image = UIImage(named:"")
           playerPlace04.image = UIImage(named:"")
           playerPlace05.image = UIImage(named:"")
        
        userNext.isUserInteractionEnabled = true
        userNext.alpha = 1
        userPass.isUserInteractionEnabled = true
        userPass.alpha = 1
        userReplay.isUserInteractionEnabled = true
        userReplay.alpha = 1
        
        userPlay.isUserInteractionEnabled = false
        userPlay.alpha = 0
        
        aiImagePlaceUsed = 0
        playerPlaceUsed = 0
        
        aiGetAceCount = 0
        playerGetAceCount = 0
        
        start()
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
