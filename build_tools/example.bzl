def _impl(ctx):
    ctx.actions.run(
        inputs = [ctx.executable._whatevah],
        outputs = [ctx.outputs.text],
        arguments = [ctx.outputs.text.path],
        executable = ctx.executable._whatevah,
    )

example = rule(
    implementation = _impl,
    attrs = {
        "_whatevah": attr.label(executable=True, allow_files=True, default=Label("//build_tools:whatevah"), cfg="exec")
    },
    outputs = {
        "text": "%{name}.txt",
    }
)