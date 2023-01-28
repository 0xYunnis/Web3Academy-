//SPDX-License-Identifier: MIT
//powered by ziyaojia Dev.college.
/*在本节课中你将学习如何在solidity中使用结构体数组和映射，随后完成一个数字与姓名查找的简单合约
 */
pragma solidity ^0.8.1;
contract aa{
uint256 FavoriteNumber;

People[] public Pep;/*People声明一个变量 Pep，该变量是一个数组：1: 1，bob
2,hook
3,inn
数组数量动态分配。
*/
struct People{//结构体：比如int,bool,这里自定义了一个叫做People的结构体
    uint256 FavoriteNumber;
    string name;
}
//数据类型：calldata:不可修改的临时变量；memory可修改的临时变量；storage：可修改的永久变量。
function addper(string memory _name,uint256 _favo)public{
    People memory news = People({FavoriteNumber: _favo, name: _name});//创建people类型的结构体news在这个结构体中，FavoriteNumber等于_favo,name=_name
    Pep.push(news);
    nametoFavoriteNumber[_name]=_favo;//将下文的mapping加入进该函。
}
//ps:只在数组，结构体，映射后加数据类型，string后也需要加因为string本质上是bytes数组
mapping(string => uint256) public nametoFavoriteNumber;//ps：nametoFavoriteNumber在此处不是操作，是mapping变量，需要在上面的函数中操作
//mapping指映射，指将该结构中的name映射到FavoriteNumber中，方便查找。
} 
