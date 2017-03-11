/* global exports */

// module Data.TypedArray


    "use strict";

    // conversion from and to typed arrays
    exports.asInt8Array = function(array)
        {var res = new Int8Array(array);
         return res;};

    exports.asUint8Array = function (array)
        {var res = new Uint8Array(array);
         return res;};

    exports.asUint8ClampedArray = function (array)
        {var res = new Uint8ClampedArray(array);
         return res;};

    exports.asInt16Array = function (array)
        {var res = new Int16Array (array);
         return res;};

    exports.asUint16Array = function (array)
        {var res = new Uint16Array (array);
         return res;};

    exports.asInt32Array = function (array)
        {var res = new Int32Array (array);
         return res;};

    exports.asUint32Array = function (array)
        {var res = new Uint32Array (array);
         return res;};

    exports.asFloat32Array = function (array)
        {var res = new Float32Array (array);
         return res;};

    exports.asFloat64Array = function (array)
        {var res = new Float64Array (array);
         return res;};

//----------------

    exports.newInt8Array = function(length)
        {var res = new Int8Array(length);
         return res;};

    exports.newUint8Array = function (length)
        {var res = new Uint8Array(length);
         return res;};

    exports.newUint8ClampedArray = function (length)
        {var res = new Uint8ClampedArray(length);
         return res;};

    exports.newInt16Array = function (length)
        {var res = new Int16Array (length);
         return res;};

    exports.newUint16Array = function (length)
        {var res = new Uint16Array (length);
         return res;};

    exports.newInt32Array = function (length)
        {var res = new Int32Array (length);
         return res;};

    exports.newUint32Array = function (length)
        {var res = new Uint32Array (length);
         return res;};

    exports.newFloat32Array = function (length)
        {var res = new Float32Array (length);
         return res;};

    exports.newFloat64Array = function (length)
        {var res = new Float64Array (length);
         return res;};

//----------------------------


    exports.dwAsInt8Array = function(v) {
      return new Int8Array(v.buffer, v.byteOffset, v.byteLength);
    }

    exports.dwAsInt16Array = function(v) {
      return new Int16Array(v.buffer, v.byteOffset, v.byteLength >>> 1);
    }

    exports.dwAsInt32Array = function(v) {
      return new Int32Array(v.buffer, v.byteOffset, v.byteLength >>> 2);
    }

    exports.dwAsUint8Array = function(v) {
      return new Uint8Array(v.buffer, v.byteOffset, v.byteLength);
    }

    exports.dwAsUint16Array = function(v) {
      return new Uint16Array(v.buffer, v.byteOffset, v.byteLength >>> 1);
    }

    exports.dwAsUint32Array = function(v) {
      return new Uint32Array(v.buffer, v.byteOffset, v.byteLength >>> 2);
    }

    exports.dwAsUint8ClampedArray = function(v) {
      return new Uint8ClampedArray(v.buffer, v.byteOffset, v.byteLength);
    }

    exports.dwAsFloat32Array = function(v) {
      return new Float32Array(v.buffer, v.byteOffset, v.byteLength >>> 2);
    }

    exports.dwAsFloat64Array = function(v) {
      return new Float64Array(v.buffer, v.byteOffset, v.byteLength >>> 3);
    }


    exports.asArray = function (arrayBuffer)
        {var res = Array.prototype.slice.call(arrayBuffer);
         return res;};

    exports.length = function (arrayBuffer)
        {return arrayBuffer.length;};

    exports.byteLength = function (arrayBuffer)
        {return arrayBuffer.byteLength;};

    exports.insertAt = function (index) {
        return function (a) {
          return function (l) {
            var l1 = l.slice();
            l1.splice(index, 0, a);
            return l1;
          };
        };
    };

    exports.unsafeIndex = function (xs) {
        return function(n) {
          return xs[n];
        };
    };
