module Crypto.SJCL.BigNum
  (
  ) where



foreign import data BigNumClass :: Type

foreign import bignum :: BigNumClass


foreign import data BigNumState :: Type

foreign import newImpl :: EffectFn1 BigNumClass BigNumState

foreign import copyImpl :: EffectFn1 BigNumState BigNumState

foreign import equalsImpl :: Fn2 BigNumState BigNumState Boolean



type Coord = T2 Number Number


foreign import pseudoMersennePrimeImpl :: Fn2 Number (Array Coord) BigNumClass

foreign import p127 :: BigNumClass
foreign import p22519 :: BigNumClass
foreign import p192k :: BigNumClass
foreign import p224k :: BigNumClass
foreign import p256k :: BigNumClass
foreign import p192 :: BigNumClass
foreign import p224 :: BigNumClass
foreign import p256 :: BigNumClass
foreign import p384 :: BigNumClass
foreign import p512 :: BigNumClass


type Paranoia = Int

foreign import randomImpl :: EffectFn2 BigNumState Paranoia BigNumState
