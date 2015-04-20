def score(dice)

  i = 0
  score = 0
  count1 = 0
  count2 = 0
  count3 = 0
  count4 = 0
  count5 = 0
  count6 = 0

  5.times do
    when dice[i] = "1"
      count1 +=
    when dice[i] = "2"
      count2 +=
    when dice[i] = "3"
      count3 +=
    when dice[i] = "4"
      count4 +=
    when dice[i] = "5"
      count5 +=
    when dice[i] = "6"
      count6 +=
    end
    i +=
  end

  if count1 >= 3
    score = score + 1000
    count1 = count1 - 3
  end

  if count2 >= 3
    score = score + 200
  end

  if count3 >= 3
    score = score + 300
  end

  if count4 >= 3
    score = score + 400
  end

  if count5 >= 3
    score = score + 500
    count5 = count5 - 3
  end

  if count 6 >= 3
    score = score + 600
  end

    sub_score_1 = 100 * count1
    sub_score_5 = 50 * count5
    score = score + sub_score_1 + sub_score_5

end