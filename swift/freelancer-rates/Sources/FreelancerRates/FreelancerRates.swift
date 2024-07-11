func dailyRateFrom(hourlyRate: Int) -> Double {
    return Double(hourlyRate) * 8.0
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    return (22.0*dailyRateFrom(hourlyRate: hourlyRate)*(1-discount*0.01)).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    return (budget/(dailyRateFrom(hourlyRate: hourlyRate)*(1-discount*0.01))).rounded(.down)
}
