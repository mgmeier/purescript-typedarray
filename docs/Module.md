# Module Documentation

## Module Data.TypedArray

#### `asInt8Array`

``` purescript
asInt8Array :: [Number] -> ArrayBuffer Int8
```

#### `asUint8Array`

``` purescript
asUint8Array :: [Number] -> ArrayBuffer Uint8
```


#### `asUint8ClampedArray`

``` purescript
asUint8ClampedArray :: [Number] -> ArrayBuffer Uint8ClampedArray
```


#### `asInt16Array`

``` purescript
asInt16Array :: [Number] -> ArrayBuffer Int16
```


#### `asUint16Array`

``` purescript
asUint16Array :: [Number] -> ArrayBuffer Uint16
```


#### `asInt32Array`

``` purescript
asInt32Array :: [Number] -> ArrayBuffer Int32
```


#### `asUint32Array`

``` purescript
asUint32Array :: [Number] -> ArrayBuffer Uint32
```


#### `asFloat32Array`

``` purescript
asFloat32Array :: [Number] -> ArrayBuffer Float32
```


#### `asFloat64Array`

``` purescript
asFloat64Array :: [Number] -> ArrayBuffer Float64
```


#### `asArray`

``` purescript
asArray :: forall a. ArrayBuffer a -> [Number]
```


#### `length`

``` purescript
length :: forall a. ArrayBuffer a -> Number
```


#### `byteLength`

``` purescript
byteLength :: forall a. ArrayBuffer a -> Number
```


#### `insertAt`

``` purescript
insertAt :: forall a. Number -> a -> ArrayBuffer a -> ArrayBuffer a
```


#### `(!!)`

``` purescript
(!!) :: forall a. ArrayBuffer a -> Number -> Maybe Number
```


#### `unsafeIndex`

``` purescript
unsafeIndex :: forall a. ArrayBuffer a -> Number -> Number
```



## Module Data.TypedArray.Types

#### `ArrayBuffer`

``` purescript
data ArrayBuffer :: * -> *
```

a representation of TypedArrays with a phantom type

#### `Int8`

``` purescript
data Int8
```

#### `Uint8`

``` purescript
data Uint8
```


#### `Uint8Clamped`

``` purescript
data Uint8Clamped
```


#### `Int16`

``` purescript
data Int16
```


#### `Uint16`

``` purescript
data Uint16
```


#### `Int32`

``` purescript
data Int32
```


#### `Uint32`

``` purescript
data Uint32
```


#### `Float32`

``` purescript
data Float32
```


#### `Float64`

``` purescript
data Float64
```


#### `Int8Array`

``` purescript
type Int8Array = ArrayBuffer Int8
```

#### `Uint8Array`

``` purescript
type Uint8Array = ArrayBuffer Uint8
```


#### `Uint8ClampedArray`

``` purescript
type Uint8ClampedArray = ArrayBuffer Uint8Clamped
```


#### `Int16Array`

``` purescript
type Int16Array = ArrayBuffer Int16
```


#### `Uint16Array`

``` purescript
type Uint16Array = ArrayBuffer Uint16
```


#### `Int32Array`

``` purescript
type Int32Array = ArrayBuffer Int32
```


#### `Uint32Array`

``` purescript
type Uint32Array = ArrayBuffer Uint32
```


#### `Float32Array`

``` purescript
type Float32Array = ArrayBuffer Float32
```


#### `Float64Array`

``` purescript
type Float64Array = ArrayBuffer Float64
```