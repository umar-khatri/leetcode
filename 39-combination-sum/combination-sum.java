import java.util.*;

class Solution {
    public void func(int index, int target, int[] arr, List<List<Integer>> ans, List<Integer> ds){
            if(index==arr.length){
                if(target==0){
                    ans.add(new ArrayList<>(ds));
                }
                return;
            }

            if(arr[index]<=target){
                ds.add(arr[index]);
                func(index, target -arr[index], arr, ans,ds);
                ds.remove(ds.size()-1);
            }

            func(index + 1, target, arr, ans, ds);
    }
    public List<List<Integer>> combinationSum(int[] arr, int target) {
        List<List<Integer>> ans = new ArrayList<>();
        List<Integer> ds = new ArrayList<>();
        func(0, target, arr, ans, ds);
        return ans;
    }
}