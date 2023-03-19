def copy(from, to)
  src = File.open(from)
  begin
    dst = File.open(to, "w")
    data = src.read
    dst.write(data)
    dst.close
  ensure
    src.close
  end
end

copy(ARGV[0], ARGV[1]) # ruby ensure.rb ex1.rb ex2.rb と実行するとex1.rbが第一引数,ex2.rbが第二引数に入る
