require 'benchmark'
require 'benchmark/memory'
require 'json'

file_data = File.read("test.json")
data = JSON.parse(file_data)

require 'ostruct'
require 'hashie'
require 'hashery'
require 'recursive_open_struct'

open_struct = JSON.parse(file_data, object_class: OpenStruct)
open_cascade = Hashery::OpenCascade[data]
recursive_struct = RecursiveOpenStruct.new(data, recurse_over_arrays: true)
mash = Hashie::Mash.new(data)

puts "### Init\n\n```"

Benchmark.bm do |x|
  x.report("json parse") do
    1000.times { JSON.parse(file_data) }
  end
  x.report("ostruct create") do
    1000.times { JSON.parse(file_data, object_class: OpenStruct) }
  end
  x.report("mash create") do
    1000.times { Hashie::Mash.new(data) }
  end
  x.report("open_cascade create") do
    1000.times { Hashery::OpenCascade[data] }
  end
  x.report("recursive_open_struct create") do
    1000.times { RecursiveOpenStruct.new(data, recurse_over_arrays: true) }
  end
end

puts ""

Benchmark.memory do |x|
  x.report("json parse") do
    1000.times { JSON.parse(file_data) }
  end
  x.report("ostruct create") do
    1000.times { JSON.parse(file_data, object_class: OpenStruct) }
  end
  x.report("mash create") do
    1000.times { Hashie::Mash.new(data) }
  end
  x.report("open_cascade create") do
    1000.times { Hashery::OpenCascade[data] }
  end
  x.report("recursive_open_struct create") do
    1000.times { RecursiveOpenStruct.new(data, recurse_over_arrays: true) }
  end
end

puts "```\n\n### lookups\n\n```"

Benchmark.bm do |x|
  x.report("ostruct lookup") do
    5000.times do
      open_struct.data[0].name.firstname
      open_struct.data[0].friends[0].name
    end
  end
  x.report("mash lookup") do
    5000.times do
      mash.data[0].name.firstname
      mash.data[0].friends[0].name
    end
  end
  x.report("open_cascade lookup") do
    5000.times do
      open_cascade.data[0].name.firstname
      open_cascade.data[0].friends[0].name
    end
  end
  x.report("recursive_open_struct lookup") do
    5000.times do
      recursive_struct.data[0].name.firstname
      recursive_struct.data[0].friends[0].name
    end
  end
end

puts ""

Benchmark.memory do |x|
  x.report("ostruct lookup") do
    5000.times do
      open_struct.data[0].name.firstname
      open_struct.data[0].friends[0].name
    end
  end
  x.report("mash lookup") do
    5000.times do
      mash.data[0].name.firstname
      mash.data[0].friends[0].name
    end
  end
  x.report("open_cascade lookup") do
    5000.times do
      open_cascade.data[0].name.firstname
      open_cascade.data[0].friends[0].name
    end
  end
  x.report("recursive_open_struct lookup") do
    5000.times do
      recursive_struct.data[0].name.firstname
      recursive_struct.data[0].friends[0].name
    end
  end
end

puts "```\n\n### `to_hash`\n\n```"

Benchmark.bm do |x|
  x.report("ostruct to_hash") do
    1000.times do
      open_struct.to_hash
    end
  end
  x.report("mash to_hash") do
    1000.times do
      mash.to_hash
    end
  end
  x.report("open_cascade to_hash") do
    1000.times do
      open_cascade.to_hash
    end
  end
  x.report("recursive_open_struct to_hash") do
    1000.times do
      recursive_struct.to_hash
    end
  end
end

Benchmark.memory do |x|
  x.report("ostruct to_hash") do
    1000.times do
      open_struct.to_hash
    end
  end
  x.report("mash to_hash") do
    1000.times do
      mash.to_hash
    end
  end
  x.report("open_cascade to_hash") do
    1000.times do
      open_cascade.to_hash
    end
  end
  x.report("recursive_open_struct to_hash") do
    1000.times do
      recursive_struct.to_hash
    end
  end
end

puts "```"
