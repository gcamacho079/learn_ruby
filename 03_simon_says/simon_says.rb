#write your code here
def echo(var)
  "#{var}"
end

def shout(var)
  var.upcase!
  "#{var}"
end

def repeat(*args)
  if args.length > 2
    print "The repeat function takes one or two arguments. Try again!"
  else
    var, num = *args
    new_string = ""
    counter = num
    unless num.nil?
      loop do
        new_string += var
        break if counter == 1 # Exits loop after final word is added to string
        counter -= counter
        new_string += " "
      end
      return "#{new_string}"
    else
      "#{var} #{var}"
    end
  end
end
