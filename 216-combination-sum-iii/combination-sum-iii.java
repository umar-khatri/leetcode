class Solution {
    public void func(int index, int target, int k, List<List<Integer>> ans, List<Integer> ds){
        if(ds.size() == k){
            if(target == 0){
                ans.add(new ArrayList<>(ds));
            }
            return;
        }

        for(int i = index; i<10; i++){
            ds.add(i);
            func(i + 1, target - i, k, ans, ds);
            ds.remove(ds.size()-1);
        }
    }
    public List<List<Integer>> combinationSum3(int k, int n) {
        List<List<Integer>> ans = new ArrayList<>();
        List<Integer> ds = new ArrayList<>();
        func(1, n, k, ans, ds);
        return ans;
    }
}