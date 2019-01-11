module Crypto.SJCL.Hash.RIPEMD160 (RIPEMD160State, new, reset, update, finalize, hash) where

import Crypto.SJCL.Types (BitArray)

import Prelude (Unit)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, runEffectFn1, runEffectFn2)


foreign import data RIPEMD160State :: Type

foreign import newImpl :: Effect RIPEMD160State

new :: Effect RIPEMD160State
new = newImpl

foreign import resetImpl :: EffectFn1 RIPEMD160State Unit

reset :: RIPEMD160State -> Effect Unit
reset = runEffectFn1 resetImpl

foreign import updateImpl :: EffectFn2 RIPEMD160State BitArray Unit

update :: RIPEMD160State -> BitArray -> Effect Unit
update = runEffectFn2 updateImpl

foreign import finalizeImpl :: EffectFn1 RIPEMD160State BitArray

finalize :: RIPEMD160State -> Effect BitArray
finalize = runEffectFn1 finalizeImpl

foreign import hash :: BitArray -> BitArray
