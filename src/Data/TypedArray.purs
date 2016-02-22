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

import Data.ArrayBuffer.Types (ArrayView, Float64Array, Float32Array, Uint32Array, Int32Array, Uint16Array,
                                Int16Array, Uint8ClampedArray, Uint8Array, Int8Array)
import Data.Maybe (Maybe(Just, Nothing))
import Prelude ((>=), (||), (<))

foreign import asInt8Array :: Array Int -> Int8Array

foreign import asUint8Array :: Array Int -> Uint8Array

foreign import asUint8ClampedArray :: Array Int -> Uint8ClampedArray

foreign import asInt16Array :: Array Int -> Int16Array

foreign import asUint16Array :: Array Int -> Uint16Array

foreign import asInt32Array :: Array Int -> Int32Array

foreign import asUint32Array :: Array Int -> Uint32Array

foreign import asFloat32Array :: Array Number -> Float32Array

foreign import asFloat64Array :: Array Number -> Float64Array

foreign import asArray :: forall num1 num2. ArrayView num1 -> Array num2

foreign import length :: forall a. ArrayView a -> Int

foreign import byteLength :: forall a. ArrayView a -> Number

infixl 8 index as !!

foreign import insertAt :: forall a. Number -> Int -> ArrayView a -> ArrayView a

index :: forall a. ArrayView a -> Int -> Maybe Number
index xs n =
  if n < 0 || n >= (length xs)
    then Nothing
    else Just (xs `unsafeIndex` n)

foreign import unsafeIndex :: forall a. ArrayView a -> Int -> Number
