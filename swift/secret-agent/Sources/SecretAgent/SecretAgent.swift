func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    
    let protection: (String) -> String =  { pwd in
        return pwd == password ? secret : "Sorry. No hidden secrets here."
    }
    return protection
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
    return (f(room), f(f(room)), f(f(f(room))))
}
