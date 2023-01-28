//SPDX-License-Identifier: MIT
//powered by Ziyao Jia Dev.college
/*
LESSONS 1
在这节课中，你将学到solidity的性质，变量与部分规则
*/
pragma solidity ^0.8.1;//dapp版本为0.8.1且兼容其他版本
//声明一个合约，相当于一个模块
contract SimpleStorage {
     bool bet = true;//布尔函数进行对错运算
     uint64 public s = 1;//正数int类型 后跟数字表示分配的内存，最大256,不写默认256
     int256 d = -1;//常规int类型 后跟数字表示分配的内存，最大256,不写默认256\
     uint256 FavoriteNumber;
     int sd;//声明变量时不写数值默认为0，在这个例子中就是sd=0
     string a = "helloworld";//字符类型，不可自定义内存
     bytes32 fac = "cat";//是string的母类，但使用bytes时默认将字符转化为十六进制
function store(uint64 _s) public {
    s = _s;
//表示符号public:公开 private：仅对本合约有效 internal：仅对本合约和继承合约有效
}
function ret() public view returns(uint64){//加上view以后就不需要gas费用因为只是读取状态，之读取某个数据，不修改
    return s;
}
function bac() public pure returns(uint256){//加上pure的函数也无法修改，也无法读取全局变量
    return(1+1);
}
}
//ps:无法修改函数函数，在使用view和pure时需要声明返回的类型如：returns（uint64)表示在该function中只返回64字节的uint类型数字
//ps2:如果你在修改了区块链状态的函数中调用带有view或pure的函数，该操作同样消耗手续费（gas)
//综上，只有对区块链状态进行修改的时候才消耗手续费（gas），只读view（可读取公共函数）pure（不可读取公共函数）


