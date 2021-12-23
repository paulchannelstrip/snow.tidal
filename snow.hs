--
--  Author:  Paul Channel Strip
--  Date:    December 13th, 2021
--  About:   Snow generator for Tidal Cycles (or any interactive programming session).
--

:{

snow_ = do let ct        = Data.List.concat . Data.List.transpose
               flakes   :: [[Char]]
               flakes    = ct $ [["x","*","***","❄","☼","x","***","❄","x","*"], (take 10 $ repeat ".")]
               randlen r = System.Random.newStdGen >>= (\x -> return $ System.Random.randomRs (0, r) x)
               spaces l  = (\x -> zipWith (take) x (repeat . repeat $ ' ')) <$> (take l <$> randlen 24)
           s <- spaces 27 
           a <- return . Data.List.concat . ct $ [s, flakes]
           putStr a

snow = sequence_ . replicate 20 $ snow_ >> putStrLn ""

:}
