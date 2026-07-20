package cases.issues;

class Issue12995 extends TestCase {
	function test(_) {
		vfs.putContent("Main.hx", getTemplate("issues/Issue12995/Main.hx"));
		var args = ["-main", "Main"];

		runHaxe(args);
		assertErrorMessage("Class<Foo> has no field bar");

		runHaxeJson(args, DisplayMethods.Diagnostics, {file: new FsPath("Main.hx")});

		// The diagnostics request must not cache the erroring module (#12995)
		runHaxe(args);
		assertErrorMessage("Class<Foo> has no field bar");
	}
}
