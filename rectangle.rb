c1 = ARGV[0]
c2 = ARGV[1]

tab = []
position = 0
File.foreach(c1) do |line|
    tab[position] = line.chomp.split('').map(&:to_i)
    position += 1
end

tab2 = []
position = 0
File.foreach(c2) do |line|
    tab2[position] = line.chomp.split('').map(&:to_i)
    position += 1
end

def validation (tab, tab2, line, column)
  line2 = 0
  while line2 < tab.count #3
    column2 = 0
    while column2 < tab[line2].count
      if tab[line2][column2] != tab2[line + line2][column + column2]
          return (false)
      end
      column2 +=1
    end
  line2 +=1
  end
  return (true)
end

def localisation(tab, tab2)
    line = 0
    while line < tab2.count
    column = 0
    while column < tab2[line].count
      if tab2[line][column] == tab.first.first
          if (validation(tab, tab2, line, column))
              puts "#{column},#{line}"
              return (true)
          end
      end
      column += 1
  end
  line +=1
  end
  puts " no match"
  return (false)
end

localisation(tab, tab2)
  


