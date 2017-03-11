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

import Prelude
import Data.ArrayBuffer.Types (ArrayView, DataView, Float32Array, Float64Array, Int16Array, Int32Array, Int8Array, Uint16Array, Uint32Array, Uint8Array, Uint8ClampedArray)
import Data.Maybe (Maybe(..))

foreign import asInt8Array :: Array Int -> Int8Array

foreign import asUint8Array :: Array Int -> Uint8Array

foreign import asUint8ClampedArray :: Array Int -> Uint8ClampedArray

foreign import asInt16Array :: Array Int -> Int16Array

foreign import asUint16Array :: Array Int -> Uint16Array

foreign import asInt32Array :: Array Int -> Int32Array

foreign import asUint32Array :: Array Int -> Uint32Array

foreign import asFloat32Array :: Array Number -> Float32Array

foreign import asFloat64Array :: Array Number -> Float64Array


-- | Create typed int8 array viewing the buffer mapped by the `DataView`
foreign import dwAsInt8Array :: DataView -> Int8Array

-- | Create typed int16 array viewing the buffer mapped by the `DataView`
foreign import dwAsInt16Array :: DataView -> Int16Array

-- | Create typed int32 array viewing the buffer mapped by the `DataView`
foreign import dwAsInt32Array :: DataView -> Int32Array

-- | Create typed uint8 array viewing the buffer mapped by the `DataView`
foreign import dwAsUint8Array :: DataView -> Uint8Array

-- | Create typed uint16 array viewing the buffer mapped by the `DataView`
foreign import dwAsUint16Array :: DataView -> Uint16Array

-- | Create typed uint32 array viewing the buffer mapped by the `DataView`
foreign import dwAsUint32Array :: DataView -> Uint32Array

-- | Create typed uint8 clamped array viewing the buffer mapped by the `DataView`
foreign import dwAsUint8ClampedArray :: DataView -> Uint8ClampedArray

-- | Create typed float32 array viewing the buffer mapped by the `DataView`
foreign import dwAsFloat32Array :: DataView -> Float32Array

-- | Create typed float64 array viewing the buffer mapped by the `DataView`
foreign import dwAsFloat64Array :: DataView -> Float64Array

foreign import newInt8Array :: Int -> Int8Array

foreign import newUint8Array :: Int -> Uint8Array

foreign import newUint8ClampedArray :: Int -> Uint8ClampedArray

foreign import newInt16Array :: Int -> Int16Array

foreign import newUint16Array :: Int -> Uint16Array

foreign import newInt32Array :: Int -> Int32Array

foreign import newUint32Array :: Int -> Uint32Array

foreign import newFloat32Array :: Int -> Float32Array

foreign import newFloat64Array :: Int -> Float64Array


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
