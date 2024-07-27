def fibonacci(n)
  return n if n <= 1

  fibonacci(n - 1) + fibonacci(n - 2)
end

def fibs(n)
  arr = []
  i = 0

  while i < n
    if i == 1 || i == 0
      arr.push(i)
      i += 1
    else
      arr.push(arr[i-1] + arr[i-2])
      i += 1
    end
  end

  arr
end

p fibs(20)

def fibs_rec(n)
end

p fibs_rec(7)