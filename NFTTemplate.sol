// SPDX-License-Identifier: MIT

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

pragma solidity ^0.8.1;

contract NFTTemplate is ERC721URIStorage, Ownable {

    constructor(string memory name_, string memory symbol_, uint256 tokenId, string memory _tokenURI) ERC721(name_, symbol_){

        ERC721._mint(msg.sender, tokenId);

        ERC721URIStorage._setTokenURI(tokenId, _tokenURI);
    }

    function burn(uint256 tokenId) public onlyOwner(){
        _burn(tokenId);
    }
    
    //https://gateway.pinata.cloud/ipfs/QmRPBGXiktCuLqSzV8E2Kw6Q97HZAg69R8UsT62z2rGWUX <-- test url

}