module Crypto.SJCL.Codec.Bytes
  ( fromBits
  , toBits
  ) where

import Crypto.SJCL.Types (BitArray, Word)


foreign import fromBits :: BitArray -> Array Word
foreign import toBits :: Array Word -> BitArray
