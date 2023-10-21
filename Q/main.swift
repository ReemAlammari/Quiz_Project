//
//  main.swift
//  Q
//
//  Created by Reem Alammari on 04/04/1445 AH.
//
enum  CheckError: Error{
    case wrongEntry
}

 
    let questions = ["1. Is while must be done at least one ? [Yes/No]",
                     "2. Is cout>> can be used to print? [Yes/No]",
                     "3. Is can use for loop in Swift? [Yes/No]",
                     "4. Is value of let can be modifiy? [Yes/No]",
                     "5. Is we can use i++ as counter in swift? [Yes/No]"]
    let answer = ["No", "No" , "Yes" , "No" , "No" ]
    
 

func caculateScore (_ answer : Int)
{
    var counterScore = 0
    for _ in 1...answer - 1 {
        counterScore += 1
    }
    print("      ---------------------------------------------- \n")
    print ("\n ** -> Your Score : [",counterScore , "/ 5 ]" , "\n")
    print("Thank you ...\n")
}

print("************** Quiz In Swift Programming ************** \n")

func Quiz ()throws -> Bool {
    
    var questionsCounter = 0
    var answers = 1
    for i in questions {
        print(i)
        let getAnswer = readLine()
        if getAnswer  == "q" {
            print ("See you next time ...\n")
            break
        }else if getAnswer == answer[questionsCounter]{
            print(" Correct Answer..(: \n")
            answers += 1
        }else if (getAnswer != "Yes" && getAnswer != "No"){
            print("Error... Wrong Entry..\n")
            while ((getAnswer) != answer[questionsCounter]){
                print (questions[questionsCounter])
                let getAnswer2 = readLine()
                if getAnswer2 == answer[questionsCounter]{
                    print(" Correct Answer..(: \n")
                    answers += 1
                    break
                }else {
                    print(" Wrong Answer ...\n")
                    break
                }
            }
            //   throw CheckError.wrongEntry
        }else {
            print(" Wrong Answer ...\n")
        }
        
        
        
        questionsCounter += 1
    }
    caculateScore(answers)
   return true
}
   

do {
    let x = try Quiz()
     
}catch CheckError.wrongEntry {

}
print("*******************************************************\n")
