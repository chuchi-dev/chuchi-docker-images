fn help() {
	print([
		"- build <build|release>",
		"- run <build|release>",
		"- push <build|release>"
	]);
}

fn _name_from_tag(tag) {
	return "fire-" + tag;
}

fn build() {
	print("build <build|release>");
}

// tag: build | release
fn build(tag) {
	tag = _name_from_tag(tag);

	let build = cmd([
		"docker", "build", "-t", "soerenmeier/" + tag, tag
	]);
	build.execute();
}

fn run() {
	print("run <build|release>");
}

// run interactive
fn run(tag) {
	tag = _name_from_tag(tag);

	let run = cmd([
		"docker", "run", "--rm", "-it", "soerenmeier/" + tag
	]);
	run.execute();
}

fn push() {
	print("push <build|release>");
}

fn push(tag) {
	tag = _name_from_tag(tag);

	let push = cmd([
		"docker", "push", "soerenmeier/" + tag + ":latest"
	]);
	push.execute();
}