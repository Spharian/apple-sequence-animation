require "open-uri"

dir = "./images"

Dir.mkdir(dir) unless File.exists?(dir)

for i in 0..86 do
  link = "https://www.apple.com/105/media/us/macbook-pro-14-and-16/2021/a1c5d17e-d8e4-4fa8-b70a-bc61bd266412/anim/hero-specs//large/large_00#{i.to_s.rjust(2, '0')}.jpg"

  puts link

  URI.open(link) do |image|
    File.open(File.join(dir, "#{i}.jpg"), "wb") do |file|
      file.write(image.read)
    end
  end
end
