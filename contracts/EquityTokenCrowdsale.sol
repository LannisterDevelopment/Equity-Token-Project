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

import "openzeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/distribution/RefundableCrowdsale.sol";
import "openzeppelin-solidity/contracts/lifecycle/Pausable.sol";
import "openzeppelin-solidity/contracts/math/SafeMath.sol";
import "./EquityToken.sol";

/**
 * @title CempCrowdsale
 * @dev The CryptoEmporium token public sale contract.
 */
contract EquityTokenCrowdsale is CappedCrowdsale, RefundableCrowdsale, Pausable {
    using SafeMath for uint256;

    // Soft cap
    // Refund sale if not met
    uint256 public minGoal = 1000 * (10 ** 18);

    constructor(
        address _wallet,
        EquityToken _token,
        uint256 _initialRate,
        uint256 _raiseCap
    ) public CappedCrowdsale(_raiseCap) RefundableCrowdsale(minGoal) Crowdsale(_initialRate, _wallet, _token) {

    }
}