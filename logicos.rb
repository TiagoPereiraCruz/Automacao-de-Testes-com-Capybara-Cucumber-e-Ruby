v1 = 1
v2 = 2
v3 = 3
v4 = 4

if(v3 < v2) && (v3 < v4)
    puts 'condição atendida pelos dois casos'
else
    puts 'condição falsa'
end

if(v3 < v2) || (v3 < v4)
    puts 'condição atendida por um dos casos'
else
    puts 'condição falsa'
end

if !(v1 < v2)
    puts 'negacão atendida'
else
    puts 'negacão não atendida'
end