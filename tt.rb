$info="我是被定义的全局变量，是最顶层的变量，我的Fans最多哈哈"
def info
  tinfo="我是被定义在方法中的局部变量"
  puts tinfo
  puts $info
end

module ModulInfo
  _info="我是被定义的模块中德局部变量"
  puts _info
  puts $info
end

class Test
  info="我是在类中定义的局部变量"
  puts info
  puts $info
end

info
puts $info
