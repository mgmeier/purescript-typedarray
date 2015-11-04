## Module Data.DataView

#### `asDataView`

``` purescript
asDataView :: ArrayBuffer -> DataView
```

DataView on the whole `ArrayBuffer`.

#### `slice`

``` purescript
slice :: ByteOffset -> ByteLength -> ArrayBuffer -> Maybe DataView
```

View mapping a region of the `ArrayBuffer`.

#### `sliceImpl`

``` purescript
sliceImpl :: Fn5 (DataView -> Maybe DataView) (Maybe DataView) ByteOffset ByteLength ArrayBuffer (Maybe DataView)
```

#### `toArrayBuffer`

``` purescript
toArrayBuffer :: DataView -> ArrayBuffer
```

`ArrayBuffer` being mapped by the view.

#### `byteOffset`

``` purescript
byteOffset :: DataView -> ByteOffset
```

Represents the offset of this view from the start of its `ArrayBuffer`.

#### `byteLength`

``` purescript
byteLength :: DataView -> ByteLength
```

Represents the length of this view.

#### `getFloat32`

``` purescript
getFloat32 :: DataView -> ByteOffset -> Boolean -> Maybe Number
```

#### `getUInt16`

``` purescript
getUInt16 :: DataView -> ByteOffset -> Boolean -> Maybe Number
```

#### `getFloat32Unsafe`

``` purescript
getFloat32Unsafe :: Fn3 DataView ByteOffset Boolean Number
```

Fetch float32 value at a certain index in a `DataView`.

#### `getUInt16Unsafe`

``` purescript
getUInt16Unsafe :: Fn3 DataView ByteOffset Boolean Number
```

Fetch float32 value at a certain index in a `DataView`.


