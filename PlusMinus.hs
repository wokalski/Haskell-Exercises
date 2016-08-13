fraction func array = show $ (fromIntegral $ func array) / n
  where
    n = fromIntegral $ length array
    
negative = length . filter (< 0)
positive = length . filter (> 0)
zeros = length . filter (== 0)
