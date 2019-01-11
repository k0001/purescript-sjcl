module Crypto.SJCL.Hash.SHA256 (blockSize, SHA256State, new, reset, update, finalize, hash) where

import Crypto.SJCL.Types (BitArray)

import Prelude (Unit)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, runEffectFn1, runEffectFn2)


-- | Block size, in bits
blockSize :: Int
blockSize = 512

foreign import data SHA256State :: Type

foreign import newImpl :: Effect SHA256State

new :: Effect SHA256State
new = newImpl

foreign import resetImpl :: EffectFn1 SHA256State Unit

reset :: SHA256State -> Effect Unit
reset = runEffectFn1 resetImpl

foreign import updateImpl :: EffectFn2 SHA256State BitArray Unit

update :: SHA256State -> BitArray -> Effect Unit
update = runEffectFn2 updateImpl

foreign import finalizeImpl :: EffectFn1 SHA256State BitArray

finalize :: SHA256State -> Effect BitArray
finalize = runEffectFn1 finalizeImpl

foreign import hash :: BitArray -> BitArray
