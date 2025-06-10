package unit.issues;

import unit.issues.misc.issue12259.Element;

@:access(unit.issues.misc.issue12259.Element)
class Issue12259 extends unit.Test {
	public function test() {
		eq(true, new Element().foo);
	}
}
