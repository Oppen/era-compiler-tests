//! { "cases": [ {
//!     "name": "default",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "234234234234235345",
//!                 "54678987654356789765467"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "54679221888591024000812"
//!     ]
//! }, {
//!     "name": "overflow",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "23423423345345345123123123123123123345545344353453453478387258235834234235345",
//!                 "94234122112121212124231231231231231233244155453453453478387258235834234235345"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1865456220150361823783369345666446725519515141266342917316932463755338830754"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    function main(uint256 a, uint256 b) public pure returns(uint256) {
        unchecked {
            return a + b;
        }
    }
}