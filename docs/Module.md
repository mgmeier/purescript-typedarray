# Module Documentation

## Module Data.TypedArray

### Types

    data ArrayBuffer :: * -> *

    data Float32

    type Float32Array = ArrayBuffer Float32

    data Float64

    type Float64Array = ArrayBuffer Float64

    data Int16

    type Int16Array = ArrayBuffer Int16

    data Int32

    type Int32Array = ArrayBuffer Int32

    data Int8

    type Int8Array = ArrayBuffer Int8

    data Uint16

    type Uint16Array = ArrayBuffer Uint16

    data Uint32

    type Uint32Array = ArrayBuffer Uint32

    data Uint8

    type Uint8Array = ArrayBuffer Uint8

    data Uint8Clamped

    type Uint8ClampedArray = ArrayBuffer Uint8Clamped


### Values

    (!!) :: forall a. ArrayBuffer a -> Number -> Maybe Number

    asArray :: forall a. ArrayBuffer a -> [Number]

    asFloat32Array :: [Number] -> ArrayBuffer Float32

    asFloat64Array :: [Number] -> ArrayBuffer Float64

    asInt16Array :: [Number] -> ArrayBuffer Int16

    asInt32Array :: [Number] -> ArrayBuffer Int32

    asInt8Array :: [Number] -> ArrayBuffer Int8

    asUint16Array :: [Number] -> ArrayBuffer Uint16

    asUint32Array :: [Number] -> ArrayBuffer Uint32

    asUint8Array :: [Number] -> ArrayBuffer Uint8

    asUint8ClampedArray :: [Number] -> ArrayBuffer Uint8ClampedArray

    byteLength :: forall a. ArrayBuffer a -> Number

    insertAt :: forall a. Number -> a -> ArrayBuffer a -> ArrayBuffer a

    length :: forall a. ArrayBuffer a -> Number

    unsafeIndex :: forall a. ArrayBuffer a -> Number -> Number