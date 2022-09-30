load('//build_tools:example.bzl', 'example')

example(
    name='foo',
)

genrule(
    name='bar',
    tools=['//build_tools:whatevah'],
    outs=['bar.txt'],
    cmd="$(location //build_tools:whatevah) $@"
)