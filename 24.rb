<<-DOC
Lexicographic permutations
Problem 24
Published on 16 August 2002 at 06:00 pm [Server Time]

A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3
and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The
lexicographic permutations of 0, 1 and 2 are:

012   021   102   120   201   210

What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

ANS: 2783915460

Really really ugly code, need to use raise to get out of recursion
DOC

$cnt = 0

def lexical_permutation array, old_array, nth
  if array.length == 1
    $cnt += 1
    if $cnt == nth
      raise (old_array + Array(array)).join("")
    end
  else
    array.each do |x|
      new_array = array.dup
      new_array.delete x
      lexical_permutation new_array, old_array + Array(x), nth
    end
  end
end

lexical_permutation [0,1,2,3,4,5,6,7,8,9], [], 1_000_000
p $all[5]