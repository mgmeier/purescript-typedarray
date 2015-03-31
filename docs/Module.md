# Module Documentation

## Module Data.TypedArray


#### `asInt8Array`

``` purescript
asInt8Array :: [Number] -> Int8Array
```

#### `asUint8Array`

``` purescript
asUint8Array :: [Number] -> Uint8Array
```


#### `asUint8ClampedArray`

``` purescript
asUint8ClampedArray :: [Number] -> Uint8ClampedArray
```


#### `asInt16Array`

``` purescript
asInt16Array :: [Number] -> Int16Array
```


#### `asUint16Array`

``` purescript
asUint16Array :: [Number] -> Uint16Array
```


#### `asInt32Array`

``` purescript
asInt32Array :: [Number] -> Int32Array
```


#### `asUint32Array`

``` purescript
asUint32Array :: [Number] -> Uint32Array
```


#### `asFloat32Array`

``` purescript
asFloat32Array :: [Number] -> Float32Array
```


#### `asFloat64Array`

``` purescript
asFloat64Array :: [Number] -> Float64Array
```


#### `asArray`

``` purescript
asArray :: forall a. ArrayView a -> [Number]
```


#### `length`

``` purescript
length :: forall a. ArrayView a -> Number
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
(!!) :: forall a. ArrayView a -> Number -> Maybe Number
```


#### `unsafeIndex`

``` purescript
unsafeIndex :: forall a. ArrayView a -> Number -> Number
```