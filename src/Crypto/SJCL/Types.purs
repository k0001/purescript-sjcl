module Crypto.SJCL.Types
  ( BitArray
  , bitLength
  ) where



newtype BitArray = BitArray (Array Word)

newtype Word = Word Number


foreign import bitLength :: BitArray -> Int

foreign import bitSliceImpl :: Fn3 BitArray Int Int BitArray

foreign import byteswapM :: BitArray -> BitArray

foreign import clampImpl :: Fn2 BitArray Int BitArray

foreign import concatImpl :: Fn2 BitArray BitArray BitArray

foreign import equalImpl :: Fn2 BitArray BitArray Boolean

foreign import extractImpl :: Fn3 BitArray Int Int Word

foreign import getPartial :: Word -> Int

foreign import partialImpl :: Fn2 Int Word Word

foreign import partial_Impl :: Fn2 Int Word Word
