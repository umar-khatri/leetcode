class Solution {

    public void func(int index, int[] arr, List<List<Integer>> ans, List<Integer> ds){
        ans.add(new ArrayList<>(ds));
        for(int i = index; i < arr.length; i++){
            if(i != index && arr[i] == arr[i-1]) continue;

            ds.add(arr[i]);
            func(i + 1, arr, ans, ds);
            ds.remove(ds.size()-1);
        }
    }

    public List<List<Integer>> subsetsWithDup(int[] arr) {
        List<List<Integer>> ans = new ArrayList<>();
        List<Integer> ds = new ArrayList<>();
        Arrays.sort(arr);
        func(0, arr, ans, ds);
        return ans;
    }
}