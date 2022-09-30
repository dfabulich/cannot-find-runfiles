def _impl(ctx):
    ctx.action(
        inputs = [ctx.executable._whatevah],
        outputs = [ctx.outputs.text],
        command = "{} {}".format(ctx.executable._whatevah.path, ctx.outputs.text.path),
    )

example = rule(
    implementation = _impl,
    attrs = {
        "_whatevah": attr.label(executable=True, allow_files=True, default=Label("//build_tools:whatevah"))
    },
    outputs = {
        "text": "%{name}.txt",
    }
)