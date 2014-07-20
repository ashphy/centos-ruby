versions = %w(
  2.1.0
  2.1.1
  2.1.2
)

versions_with_patch = %w(
  1.8.7-p302
  1.8.7-p334
  1.8.7-p352
  1.8.7-p357
  1.8.7-p358
  1.8.7-p370
  1.8.7-p371
  1.8.7-p374
  1.8.7-p375
)

def build(template, version)
  puts "[CENTOS6-RUBY] ruby build #{version}"
  dockerfile = File.read("#{template}/Dockerfile")
  dockerfile.gsub!('#{version}', version)
  File.open('Dockerfile','w') do |file|
    file.puts dockerfile
  end
  system('docker', 'build', '--rm', '-t', "ashphy/centos6-ruby:#{version}", '.')
  if $? == 0
    puts 'build success'
  else
    puts 'build fail'
    exit 1
  end
end

versions.each { |v| build('2.1', v) }
versions_with_patch.each { |v| build('1.8.7', v) }
