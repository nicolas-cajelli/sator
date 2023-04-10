
SELECT first.word first, second.word second, third.word third, fourth.word fourth, fifth.word fifth
  FROM words as third
  LEFT JOIN words as first ON LENGTH(first.word) = 5 AND SUBSTRING(first.word, 3, 1) = SUBSTRING(third.word, 1, 1)
  LEFT JOIN words as second ON LENGTH(second.word) = 5 AND SUBSTRING(second.word, 3, 1) = SUBSTRING(third.word, 2, 1)
  LEFT JOIN words as fourth ON fourth.word = REVERSE(second.word)
  LEFT JOIN words as fifth ON fifth.word = REVERSE(first.word)
  WHERE 
    LENGTH(third.word) = 5 AND third.word = REVERSE(third.word)
    AND fourth.word IS NOT NULL
    AND fifth.word IS NOT NULL
  LIMIT 10;
