package unit.issues.misc.issue12259;

class Entity {
	function new() {}

	var foo(get, never):Bool;

	function get_foo():Bool
		return true;
}
