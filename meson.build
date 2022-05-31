project('curlcpp-pc-test', 'cpp',
  version : '0.1',
  default_options : ['warning_level=3', 'cpp_std=c++14'])

curlcpp_dep = dependency('curlcpp')
executable('curlcpp-pc-test',
           'curlcpp-pc-test.cpp',
           install : true,
           dependencies : curlcpp_dep)
