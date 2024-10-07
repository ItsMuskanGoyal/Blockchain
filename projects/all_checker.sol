pragma solidity ^0.8.26;

contract AllChecker {

    function isPrime(uint256 number) public pure returns (bool) {
        if (number < 2) {
            return false;
        }
        for (uint256 i = 2; i * i <= number; i++) {
            if (number % i == 0) {
                return false;
            }
        }
        return true;
    }

    function fibonacci(uint256 n) public pure returns (uint256) {
        if (n == 0) {
            return 0;
        } else if (n == 1) {
            return 1;
        } else {
            uint256 a = 0;
            uint256 b = 1;
            uint256 result;
            for (uint256 i = 2; i <= n; i++) {
                result = a + b;
                a = b;
                b = result;
            }
            return result;
        }
    }

    function factorial(uint256 number) public pure returns (uint256) {
        if (number == 0 || number == 1) {
            return 1;
        }
        uint256 result = 1;
        for (uint256 i = 2; i <= number; i++) {
            result *= i;
        }
        return result;
    }
}
