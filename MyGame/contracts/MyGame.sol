pragma solidity ^0.4.4;

contract IScoreStore {
  function GetScore(string name) returns (int);
}

contract MyGame {
  function ShowScore(string name) returns (int) {
    IScoreStore scoreStore = IScoreStore(0x4ebaa1a272cba1227014d123753755c9f81e584b);
    return scoreStore.GetScore(name);
  }
}
