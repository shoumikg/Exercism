func bonusPoints(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    return powerUpActive && touchingEagle
  fatalError("Please implement the bonusPoints(powerUpActive:touchingEagle:) function")
}

func score(touchingPowerUp: Bool, touchingSeed: Bool) -> Bool {
    return touchingSeed || touchingPowerUp
  fatalError("Please implement the score(touchingPowerUp:touchingSeed:) function")
}

func lose(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    return touchingEagle && !powerUpActive
  fatalError("Please implement the lose(powerUpActive:touchingEagle:) function")
}

func win(hasPickedUpAllSeeds: Bool, powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    return hasPickedUpAllSeeds && !lose(powerUpActive: powerUpActive, touchingEagle: touchingEagle)
  fatalError("Please implement the win(hasPickedUpAllSeeds:powerUpActive:touchingEagle:) function")
}
