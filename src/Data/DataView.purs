-----------------------------------------------------------------------------
--
-- Module      :  Data.DataView
-- Copyright   :  Jürgen Nicklisch-Franken
-- License     :  Apache-2.0
--
-- Maintainer  :  jnf@arcor.de
-- Stability   :
-- Portability :
--
-- | Binding to DataView of Javascript (which are only useful for FFI interfaces)
-- | It makes sense to import this module qualified.
--
-----------------------------------------------------------------------------
module Data.DataView where

import Prelude
import Data.Maybe (Maybe(..))
import Data.Function.Uncurried (Fn3, Fn5, runFn3, runFn5)
import Data.ArrayBuffer.Types (ByteOffset, DataView, ByteLength, ArrayBuffer)

foreign import asDataView :: ArrayBuffer -> DataView

-- | View mapping a region of the `ArrayBuffer`.
slice :: ByteOffset -> ByteLength -> ArrayBuffer -> Maybe DataView
slice = runFn5 sliceImpl Just Nothing

foreign import sliceImpl :: Fn5 (DataView -> Maybe DataView) (Maybe DataView)
                                            ByteOffset ByteLength ArrayBuffer (Maybe DataView)

-- | `ArrayBuffer` being mapped by the view.
foreign import toArrayBuffer :: DataView -> ArrayBuffer

-- | Represents the offset of this view from the start of its `ArrayBuffer`.
foreign import byteOffset :: DataView -> ByteOffset

-- | Represents the length of this view.
foreign import byteLength :: DataView -> ByteLength

getFloat32 :: DataView -> ByteOffset -> Boolean -> Maybe Number
getFloat32 v o ile |  (o + 1) <= byteLength v = Nothing
                   | otherwise                = Just $ runFn3 getFloat32Unsafe v o ile

getUInt16 :: DataView -> ByteOffset -> Boolean -> Maybe Int
getUInt16 v o ile |  (o + 1) <= byteLength v = Nothing
                  | otherwise              = Just $ runFn3 getUInt16Unsafe v o ile

getUInt32 :: DataView -> ByteOffset -> Boolean -> Maybe Int
getUInt32 v o ile |  (o + 1) <= byteLength v = Nothing
                  | otherwise              = Just $ runFn3 getUInt32Unsafe v o ile

-- | Fetch float32 value at a certain index in a `DataView`.
foreign import getFloat32Unsafe :: Fn3 DataView ByteOffset Boolean Number

-- | Fetch Uint16 value at a certain index in a `DataView`.
foreign import getUInt16Unsafe :: Fn3 DataView ByteOffset Boolean Int

-- | Fetch Uint32 value at a certain index in a `DataView`.
foreign import getUInt32Unsafe :: Fn3 DataView ByteOffset Boolean Int
