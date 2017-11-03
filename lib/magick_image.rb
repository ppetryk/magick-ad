# encoding: utf-8

puts Time.now.strftime("[%H:%M:%S.%L] Magick-Ad started")

image_input_path = File.expand_path('images/input.jpg', File.dirname(__FILE__))
image_output_path = File.expand_path('images/output.jpg', File.dirname(__FILE__))
image = Magic::Image.read(image_input_path).first
canvas = Magick::Draw.new
canvas.gravity = Magick::CenterGravity
canvas.font = 'Julee-Regular'
canvas.fill = 'white'
canvas.pointsize = 36
canvas.anotate(image, 0, 0, 0, 0, 'Zurich')
image.write(image_output_path)

system("display #{image_output_path} &")
puts Time.now.strftime("[%H:%M:%S.%L] Magick-Ad finished")
