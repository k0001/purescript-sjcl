module Crypto.SJCL.BigNum
  (
  ) where



foreign import data BigNumClass :: Type

foreign import bignum :: BigNumClass


foreign import data BigNumState :: Type

foreign import newImpl :: EffectFn1 BigNumClass BigNumState

type Coord = T2 Number Number


foreign import pseudoMersennePrimeImpl :: Fn2 Number (Array Coord) BigNumClass

foreign import p127 :: BigNumClass
foreign import p22519 :: BigNumClass


foreign import randomImpl :: EffectFn2 BigNumState 
