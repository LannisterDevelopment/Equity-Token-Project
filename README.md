Welcome to the Equity Token Project.

This project is a collaboration between Lannister Development and MediaShower.

See our press release on [Market Watch here](https://www.marketwatch.com/press-release/lannister-development-and-media-shower-successfully-sign-mou-to-launch-the-equity-token-project-a-platform-for-companies-to-offer-their-equity-via-token-crowdfunding-2018-09-14)

**Overview:**
Lannister Development has partnered with Media Shower to create the first U.S. viable blockchain smart contract token for buying, selling, trading, and otherwise exchanging equity in U.S. based companies.
In order to further this goal, Lannister Development has agreed to produce an initial open-source token generation smart contract which can be shown to interested parties as the basis for future development work.

**Equity Token Specifics:**
	A security is ‘equity’ when ownership of that security gives voting rights about the management and oversight of that asset.  Thus, the Equity Tokens need some form of access to voting rights and viewership over those voting activities.
	Additionally, a company (or entity) needs records of the holders of its equity.  Thus, the Equity Tokens need a system of “whitelisting” wherein owners and purchasers of said tokens must be required to have signed up with the company’s Equity Token Dashboard before transfer of ownership is allowed.
	These pieces are in addition to the base usability and salability of the tokens.  From this we can outline the needs of the project moving forward and identify development points.

**Smart Contract Scope:**
- Ethereum based
- ERC-20 compliant
  - Name: EquityToken (or {company name})
  - Symbol: EQUITY
- Attributes
  - Presale-ready (renamed to “Seed round”)
  - Ownable
  - Refundable
  - Capped
  - Whitelist-able
  - Timed
- Voting
  - Share of voting rights based on token holdings
  - System to propose and view votes
- Whitelist
  - UI/UX for signup/login/management
  - KYC verification
  - AML systems
- Environment
  - Node
  - Truffle Framework (https://truffleframework.com/)
    - Contract compilation
    - Unit testing
  - Open Zeppelin (https://github.com/OpenZeppelin/openzeppelin-solidity/blob/master/contracts/examples/SampleCrowdsale.sol)
    - Library code for most above attributes
  - Ganache (https://truffleframework.com/ganache)
  - Infura (https://infura.io/)
