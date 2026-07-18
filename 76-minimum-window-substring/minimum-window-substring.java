class Solution {
    public String minWindow(String s, String t) {
        int left = 0, right = 0, sIndex = -1, count = t.length(), minLen = Integer.MAX_VALUE;

        int[] hash = new int[256];

        for(char ch : t.toCharArray()){
            hash[ch]++;
        }

        while(right < s.length()){
            if(hash[s.charAt(right)] > 0){
                count--;
            }

            hash[s.charAt(right)]--;

            while(count == 0){
                if(right - left + 1 < minLen){
                    minLen = right - left + 1;
                    sIndex = left;
                }

                hash[s.charAt(left)]++;

                if(hash[s.charAt(left)] > 0) count++;

                left++;
            }
            right++;
        }

        return sIndex == -1 ? "" : s.substring(sIndex, sIndex + minLen);
    }
}