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
