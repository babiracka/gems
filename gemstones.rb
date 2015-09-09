require 'set'

[0,1,2]

def gemStones(c)
  gems = []
  firstString = c[0]
  s = firstString.chars
  uniqStr = s.uniq
  count = 1
  for char in uniqStr do
    for i in 1...c.length
      p i
      p char
      p c[i]
      if c[i].include? char
        p 'is included'
        count +=1
      else
        p 'in else!'
      end
      p count
    end
    if count == c.length
      #put character somewhere
      #reset count = 1
      gems.push(char)
    count = 1
    end
  end
  p gems
  return gems
end

a = ["abcdde",
    "baccd",
    "eeabga"]
gemStones(a)
