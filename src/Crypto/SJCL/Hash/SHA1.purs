module Crypto.SJCL.Hash.SHA1 (blockSize, SHA1State, new, reset, update, finalize, hash) where

import Crypto.SJCL.Types (BitArray)

import Prelude (Unit)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, runEffectFn1, runEffectFn2)


-- | Block size, in bits
blockSize :: Int
blockSize = 512

foreign import data SHA1State :: Type

foreign import newImpl :: Effect SHA1State

new :: Effect SHA1State
new = newImpl

foreign import resetImpl :: EffectFn1 SHA1State Unit

reset :: SHA1State -> Effect Unit
reset = runEffectFn1 resetImpl

foreign import updateImpl :: EffectFn2 SHA1State BitArray Unit

update :: SHA1State -> BitArray -> Effect Unit
update = runEffectFn2 updateImpl

foreign import finalizeImpl :: EffectFn1 SHA1State BitArray

finalize :: SHA1State -> Effect BitArray
finalize = runEffectFn1 finalizeImpl

foreign import hash :: BitArray -> BitArray
