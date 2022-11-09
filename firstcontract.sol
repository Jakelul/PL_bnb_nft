// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract firstContract {
    int private number = 1000; // private은 스마트컨트랙트 내에서만 호출이 가능하다.
    uint public uNumber = 100;
    string private name = "h662"; // 쌍따옴표 안에 이름을 넣자
    bool public isLoading = true; // 참인지 거짓인지?

    function callNumber() public view returns(int) { // callNumber 함수는 내부에서 불러올 수 있다.
        return number;
    }

    function addOne() public {
        number = number + 1; // deploy 하면 callNumber에 1이 추가되어있다. 
    }

    function addX(int _addNum) public { //addX로 100을 추가하거나 -200하게되면 callNumber에 int256함수의 숫자가 바뀐다.
        number = number + _addNum;
    }
}
