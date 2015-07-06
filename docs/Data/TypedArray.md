## Module Data.TypedArray

#### `asInt8Array`

``` purescript
asInt8Array :: Array Number -> Int8Array
```

#### `asUint8Array`

``` purescript
asUint8Array :: Array Number -> Uint8Array
```

#### `asUint8ClampedArray`

``` purescript
asUint8ClampedArray :: Array Number -> Uint8ClampedArray
```

#### `asInt16Array`

``` purescript
asInt16Array :: Array Number -> Int16Array
```

#### `asUint16Array`

``` purescript
asUint16Array :: Array Number -> Uint16Array
```

#### `asInt32Array`

``` purescript
asInt32Array :: Array Number -> Int32Array
```

#### `asUint32Array`

``` purescript
asUint32Array :: Array Number -> Uint32Array
```

#### `asFloat32Array`

``` purescript
asFloat32Array :: Array Number -> Float32Array
```

#### `asFloat64Array`

``` purescript
asFloat64Array :: Array Number -> Float64Array
```

#### `asArray`

``` purescript
asArray :: forall a. ArrayView a -> Array Number
```

#### `length`

``` purescript
length :: forall a. ArrayView a -> Int
```

#### `byteLength`

``` purescript
byteLength :: forall a. ArrayView a -> Number
```

#### `insertAt`

``` purescript
insertAt :: forall a. Number -> a -> ArrayView a -> ArrayView a
```

#### `(!!)`

``` purescript
(!!) :: forall a. ArrayView a -> Int -> Maybe Number
```

_left-associative / precedence 8_

#### `unsafeIndex`

``` purescript
unsafeIndex :: forall a. ArrayView a -> Int -> Number
```


