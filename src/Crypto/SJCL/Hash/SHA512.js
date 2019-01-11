"use strict";

var sjcl = require('sjcl');

var sha512 = sjcl.hash.sha512;

exports.newImpl = function newImpl () {
    return new sha512();
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

exports.hash = sha512.hash;
