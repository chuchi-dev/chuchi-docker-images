fn build() {
	let build = cmd([
		"docker", "build", "-t", "fire-docker-image", "fire-docker-image"
	]);
	build.execute();
}

// run interactive
fn run_it() {
	let run = cmd([
		"docker", "run", "--rm", "-it", "fire-docker-image"
	]);
	run.execute();
}