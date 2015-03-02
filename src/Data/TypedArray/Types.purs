
module Data.TypedArray.Types where

-- | a representation of TypedArrays with a phantom type
foreign import data ArrayBuffer :: * -> *

-- * the phantom types without constructor
data Int8
data Uint8
data Uint8Clamped
data Int16
data Uint16
data Int32
data Uint32
data Float32
data Float64

-- * the typed array types
type Int8Array = ArrayBuffer Int8
type Uint8Array = ArrayBuffer Uint8
type Uint8ClampedArray = ArrayBuffer Uint8Clamped
type Int16Array = ArrayBuffer Int16
type Uint16Array = ArrayBuffer Uint16
type Int32Array = ArrayBuffer Int32
type Uint32Array = ArrayBuffer Uint32
type Float32Array = ArrayBuffer Float32
type Float64Array = ArrayBuffer Float64 
