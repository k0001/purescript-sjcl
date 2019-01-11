"use strict";

var sjcl = require('sjcl');

var sha1 = sjcl.hash.sha1;

exports.newImpl = function newImpl () {
    return new sha1();
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

exports.hash = sha1.hash;
