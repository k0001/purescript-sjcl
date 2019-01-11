module Crypto.SJCL.Hash.SHA512 (blockSize, SHA512State, new, reset, update, finalize, hash) where

import Crypto.SJCL.Types (BitArray)

import Prelude (Unit)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, runEffectFn1, runEffectFn2)


-- | Block size, in bits
blockSize :: Int
blockSize = 1024

foreign import data SHA512State :: Type

foreign import newImpl :: Effect SHA512State

new :: Effect SHA512State
new = newImpl

foreign import resetImpl :: EffectFn1 SHA512State Unit

reset :: SHA512State -> Effect Unit
reset = runEffectFn1 resetImpl

foreign import updateImpl :: EffectFn2 SHA512State BitArray Unit

update :: SHA512State -> BitArray -> Effect Unit
update = runEffectFn2 updateImpl

foreign import finalizeImpl :: EffectFn1 SHA512State BitArray

finalize :: SHA512State -> Effect BitArray
finalize = runEffectFn1 finalizeImpl

foreign import hash :: BitArray -> BitArray
