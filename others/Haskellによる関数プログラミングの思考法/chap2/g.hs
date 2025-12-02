import Text.Printf (printf)

data Date = Date {year :: Int, month :: Int, day :: Int}

showDate :: Date -> String
showDate (Date y m d) = printf "%s %s, %d" (dayName d) (monthName m) y
  where
    dayName :: Int -> String
    dayName 1 = "First"
    dayName 2 = "Second"
    dayName 3 = "Third"
    dayName 4 = "Fourth"
    dayName 5 = "Fifth"
    dayName 6 = "Sixth"
    dayName 7 = "Seventh"
    dayName 8 = "Eighth"
    dayName 9 = "Ninth"
    dayName 10 = "Tenth"
    dayName 11 = "Eleventh"
    dayName 12 = "Twelfth"
    dayName 13 = "Thirteenth"
    dayName 14 = "Fourteenth"
    dayName 15 = "Fifteenth"
    dayName 16 = "Sixteenth"
    dayName 17 = "Seventeenth"
    dayName 18 = "Eighteenth"
    dayName 19 = "Nineteenth"
    dayName 20 = "Twentieth"
    dayName 21 = "Twenty-first"
    dayName 22 = "Twenty-second"
    dayName 23 = "Twenty-third"
    dayName 24 = "Twenty-fourth"
    dayName 25 = "Twenty-fifth"
    dayName 26 = "Twenty-sixth"
    dayName 27 = "Twenty-seventh"
    dayName 28 = "Twenty-eighth"
    dayName 29 = "Twenty-ninth"
    dayName 30 = "Thirtieth"
    dayName 31 = "Thirty-first"
    dayName _ = error "Invalid day"

    monthName :: Int -> String
    monthName 1 = "January"
    monthName 2 = "February"
    monthName 3 = "March"
    monthName 4 = "April"
    monthName 5 = "May"
    monthName 6 = "June"
    monthName 7 = "July"
    monthName 8 = "August"
    monthName 9 = "September"
    monthName 10 = "October"
    monthName 11 = "November"
    monthName 12 = "December"
    monthName _ = error "Invalid month"

main :: IO ()
main = do
    let date = Date 2023 3 15
    putStrLn $ showDate date