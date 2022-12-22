// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// interface
interface IERC20{
    
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns(bool);

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

contract ERC20 is IERC20 {
    mapping(address => uint256) private balance;
    mapping(address => mapping(address => uint256)) private allowance;

    uint256 private totalSupply;
    string private name;
    string private symbol;

    constructor(string memory name,string memory symbol){
        name = name;
        symbol = symbol;
    }

    function name() public view virtual returns (string memory){
        return name;
    }
    
    function symbol() public view virtual returns (string memory){
        return symbol;
    }

    function decimals() public view virtual returns (uint8){
        return 18;
    }

    function totalSupply() public view virtual override returns (uint256){
        return totalSupply;
    }

    function balanceOf(address account) public view virtual override returns (uint256){
        return balance(account);
    }

}