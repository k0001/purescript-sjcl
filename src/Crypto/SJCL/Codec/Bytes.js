"use strict";

var sjcl = require('sjcl');

exports.fromBits = sjcl.codec.bytes.fromBits;

exports.toBits = sjcl.codec.bytes.toBits;
