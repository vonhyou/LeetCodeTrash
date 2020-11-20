class Solution {
public:
  int game(vector<int>& g, vector<int>& a) {
    return (g[0] == a[0]) + (g[1] == a[1]) + (g[2] == a[2]);
  }
};