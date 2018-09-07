// The EquityToken token and the tokensale contracts
// Copyright (C) 2018 LannisterDevelopment
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/BurnableToken.sol";
import "openzeppelin-solidity/contracts/token/ERC20/CappedToken.sol";
import "openzeppelin-solidity/contracts/token/ERC20/PausableToken.sol";

contract EquityToken is PausableToken, CappedToken, BurnableToken {
    string public name = "EquityToken";
    string public symbol = "EQTY";
    uint8 public decimals = 18;

    // Capped at 50,000,000 tokens
    uint256 constant TOTAL_CAP = 50000000 * (10 ** uint256(decimals));

    constructor() public CappedToken(TOTAL_CAP) {
    }
}