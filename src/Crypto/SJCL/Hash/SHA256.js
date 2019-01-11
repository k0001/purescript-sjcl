"use strict";

var sjcl = require('sjcl');

var sha256 = sjcl.hash.sha256;

exports.newImpl = function newImpl () {
    return new sha256();
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

exports.hash = sha256.hash;
