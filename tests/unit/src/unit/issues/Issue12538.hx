package unit.issues;

private enum E1 {
	A;
}

private enum E2 {
	B;
}

private enum E3 {
	C(str:String);
}

class Issue12538 extends Test {
	function test() {
		var map = new haxe.ds.ObjectMap();
		var a : Dynamic = A;
		var b : Dynamic = B;
		var c1 : Dynamic = C("1");
		var c2 : Dynamic = C("2");
		map.set(a, 1);
		eq(1, map.get(a));
		eq(null, map.get(b));
		map.set(c1, 2);
		eq(1, map.get(a));
		eq(null, map.get(b));
		eq(2, map.get(c1));
		eq(null, map.get(c2));
	}
}
