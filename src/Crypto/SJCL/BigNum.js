"use strict";

var sjcl = require('sjcl');
var bn = sjcl.bn;


exports.p127 = bn.prime.p127;
exports.p25519 = bn.prime.p25519;
exports.p192k = bn.prime.p192k;
exports.p224k = bn.prime.p224k;
exports.p256k = bn.prime.p256k;
exports.p192 = bn.prime.p192;
exports.p224 = bn.prime.p224;
exports.p256 = bn.prime.p256;
exports.p384 = bn.prime.p384;
exports.p512 = bn.prime.p512;

exports.randomImpl = bn.random;
