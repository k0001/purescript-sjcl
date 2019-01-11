"use strict";

var sjcl = require('sjcl');

var ripemd160 = sjcl.hash.ripemd160;

exports.newImpl = function newImpl () {
    return new ripemd160();
};

exports.resetImpl = function resetImpl (h) {
    h.reset();
};

exports.updateImpl = function updateImpl (h,x) {
    h.update(x);
};

exports.finalizeImpl = function finalizeImpl (h) {
    return h.finalize();
};

exports.hash = ripemd160.hash;
