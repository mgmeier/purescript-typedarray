-----------------------------------------------------------------------------
--
-- Module      :  TypedArray
-- Copyright   :  Jürgen Nicklisch-Franken
-- License     :  Apache-2.0
--
-- Maintainer  :  jnf@arcor.de
-- Stability   :
-- Portability :
--
-- | Binding to Typed Arrays of Javascript (which are only useful for FFI interfaces)
-- | It makes sense to import this module qualified.
--
-----------------------------------------------------------------------------

module Data.TypedArray where

import Data.ArrayBuffer.Types
import Data.Maybe
import Prelude

-- * conversion from and to typed arrays
foreign import asInt8Array :: Array Number -> Int8Array

foreign import asUint8Array :: Array Number -> Uint8Array

foreign import asUint8ClampedArray :: Array Number -> Uint8ClampedArray

foreign import asInt16Array :: Array Number -> Int16Array

foreign import asUint16Array :: Array Number -> Uint16Array

foreign import asInt32Array :: Array Number -> Int32Array

foreign import asUint32Array :: Array Number -> Uint32Array

foreign import asFloat32Array :: Array Number -> Float32Array

foreign import asFloat64Array :: Array Number -> Float64Array

foreign import asArray :: forall a. ArrayView a -> Array Number

foreign import length :: forall a. ArrayView a -> Int

foreign import byteLength :: forall a. ArrayView a -> Number

infixl 8 !!

foreign import insertAt :: forall a. Number -> a -> ArrayView a -> ArrayView a

(!!) :: forall a. ArrayView a -> Int -> Maybe Number
(!!) xs n =
  if n < 0 || n >= (length xs)
    then Nothing
    else Just (xs `unsafeIndex` n)

foreign import unsafeIndex :: forall a. ArrayView a -> Int -> Number
