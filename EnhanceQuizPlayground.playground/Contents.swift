    import GameKit
    
    let trivia: [[String : String]] = [
        ["Question": "Only female koalas can whistle", "Answer": "False"],
        ["Question": "Blue whales are technically whales", "Answer": "True"],
        ["Question": "Camels are cannibalistic", "Answer": "False"],
        ["Question": "All ducks are birds", "Answer": "True"]
    ]

    
    struct TriviaQuestion {
        let question = "Only female koalas can whistle"
        let answer = false
    }
    struct FactProvider {
        let facts = [
            "Ants stretch when they wake up in the morning.",
            "Ostriches can run faster than horses.",
            "Olympic gold medals are actually made mostly of silver.",
            "You are born with 300 bones; by the time you are an adult you will have 206.",
            "It takes about 8 minutes for light from the Sun to reach Earth.",
            "Some bamboo plants can grow almost a meter in just one day.",
            "The state of Florida is bigger than England.",
            "Some penguins can leap 2-3 meters out of the water.",
            "On average, it takes 66 days to form a new habit.",
            "Mammoths still walked the Earth when the Great Pyramid was being built."
        ]
        
        func randomFact() -> String {
            let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
            return facts[randomNumber]
        }
    }
