## Module Data.TypedArray

Binding to Typed Arrays of Javascript (which are only useful for FFI interfaces)
It makes sense to import this module qualified.

#### `asInt8Array`

``` purescript
asInt8Array :: Array Int -> Int8Array
```

#### `asUint8Array`

``` purescript
asUint8Array :: Array Int -> Uint8Array
```

#### `asUint8ClampedArray`

``` purescript
asUint8ClampedArray :: Array Int -> Uint8ClampedArray
```

#### `asInt16Array`

``` purescript
asInt16Array :: Array Int -> Int16Array
```

#### `asUint16Array`

``` purescript
asUint16Array :: Array Int -> Uint16Array
```

#### `asInt32Array`

``` purescript
asInt32Array :: Array Int -> Int32Array
```

#### `asUint32Array`

``` purescript
asUint32Array :: Array Int -> Uint32Array
```

#### `asFloat32Array`

``` purescript
asFloat32Array :: Array Number -> Float32Array
```

#### `asFloat64Array`

``` purescript
asFloat64Array :: Array Number -> Float64Array
```

#### `newInt8Array`

``` purescript
newInt8Array :: Int -> Int8Array
```

#### `newUint8Array`

``` purescript
newUint8Array :: Int -> Uint8Array
```

#### `newUint8ClampedArray`

``` purescript
newUint8ClampedArray :: Int -> Uint8ClampedArray
```

#### `newInt16Array`

``` purescript
newInt16Array :: Int -> Int16Array
```

#### `newUint16Array`

``` purescript
newUint16Array :: Int -> Uint16Array
```

#### `newInt32Array`

``` purescript
newInt32Array :: Int -> Int32Array
```

#### `newUint32Array`

``` purescript
newUint32Array :: Int -> Uint32Array
```

#### `newFloat32Array`

``` purescript
newFloat32Array :: Int -> Float32Array
```

#### `newFloat64Array`

``` purescript
newFloat64Array :: Int -> Float64Array
```

#### `asArray`

``` purescript
asArray :: forall num1 num2. ArrayView num1 -> Array num2
```

#### `length`

``` purescript
length :: forall a. ArrayView a -> Int
```

#### `byteLength`

``` purescript
byteLength :: forall a. ArrayView a -> Number
```

#### `(!!)`

``` purescript
infixl 8 index as !!
```

#### `insertAt`

``` purescript
insertAt :: forall a. Number -> Int -> ArrayView a -> ArrayView a
```

#### `index`

``` purescript
index :: forall a. ArrayView a -> Int -> Maybe Number
```

#### `unsafeIndex`

``` purescript
unsafeIndex :: forall a. ArrayView a -> Int -> Number
```


