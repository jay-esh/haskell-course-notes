import Data.Char ( toUpper )
import Text.Read (readMaybe)

somefunc :: IO ()
somefunc = do line <- getLine 
              let line' = reverse line 
              putStrLn line' 

-- the above function can also be written as:

somefunc' :: IO ()
somefunc' = do line <- fmap reverse getLine
               putStrLn line

otherfunc :: IO ()
otherfunc = do line <- fmap (map toUpper . reverse) getLine
               putStrLn line 

maybeBind :: Maybe t -> (t -> Maybe a) -> Maybe a
maybeBind Nothing _ = Nothing 
maybeBind (Just x) f = f x

sumthreenum :: (Read a, Num a) => String -> String -> String -> Maybe a
sumthreenum x y z = readMaybe x `maybeBind` (\k ->
                    readMaybe y `maybeBind` (\l -> 
                    readMaybe z `maybeBind` (\m ->
                    Just (m + k + l))))

readeither :: Read b => String -> Either [Char] b
readeither s = case readMaybe s of 
                    Nothing -> Left ("error with" ++ s)
                    Just a  -> Right a

bindeither :: Either a t -> (t -> Either a b) -> Either a b
bindeither (Left err) _ = Left err
bindeither (Right a) f  = f a

sumthreither :: (Read b, Num b) => String -> String -> String -> Either [Char] b
sumthreither x y z = readeither x `bindeither` (\k ->
                     readeither y `bindeither` (\l ->
                     readeither z `bindeither` (\m ->
                         Right (k + l + m))))

              