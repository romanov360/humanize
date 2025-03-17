module [humanize]

humanize = |x|
    suffix =
        if x % 100 > 10 and x % 100 < 14 then
            "th"
        else
            when x % 10 is
                1 -> "st"
                2 -> "nd"
                3 -> "rd"
                _ -> "th"
    Str.concat (Num.to_str x) suffix
