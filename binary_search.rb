def bsearch(nums, target)
  # require 'byebug'
  # byebug
  return nil if nums.empty?
  probe_index = nums.length / 2
  case target <=> nums[probe_index]
  when -1
    bsearch nums[0...probe_index], target
  when 0
    probe_index
  when 1
    new_index = bsearch nums[probe_index..-1], target
    probe_index + new_index
  end
end
