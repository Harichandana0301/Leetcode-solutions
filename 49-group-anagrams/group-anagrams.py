
from collections import defaultdict
class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        res = defaultdict(list)

        for word in strs:
            count = [0] * 26

            for char in word:
                count[ord(char) - ord('a')] += 1
                
            res[tuple(count)].append(word) 

        return list(res.values())


    #  def groupAnagrams(self, strs):
    #     anagrams = defaultdict(list)
        
    #     for word in strs:
    #         sorted_word = tuple(sorted(word))  # Sort characters to create a key
    #         anagrams[sorted_word].append(word)
        
    #     return list(anagrams.values())
        