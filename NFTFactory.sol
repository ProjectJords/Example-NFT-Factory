// SPDX-License-Identifier: MIT

import "https://github.com/ProjectJords/NFT-/blob/main/NFTTemplate.sol";

contract NFTFactory {

    NFTTemplate private _createdNfts;

    function createNFT(
        string memory name_, 
        string memory symbol_, 
        uint tokenId, 
        string memory _tokenURI
        ) external {

            NFTTemplate _nftTemplate = new NFTTemplate(name_, symbol_, tokenId, _tokenURI);
            _createdNfts.push(_nftTemplate);
    }

    //gas inefficient example implementation
}