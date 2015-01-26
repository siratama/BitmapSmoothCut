package;

import flash_extension.csinterface.CSInterfaceUtil;
import jQuery.JQuery;
import js.Browser;

class ExtensionIndex
{
	private var csInterfaceUtil:CSInterfaceUtil;
	private var JSFL = "BitmapSmoothCut.jsfl";

	public static function main(){
		new ExtensionIndex();
	}
	public function new(){
		Browser.window.addEventListener("load", initialize);
	}
	private function initialize(event)
	{
		csInterfaceUtil = CSInterfaceUtil.create();

		var runButtonElement = new JQuery("#run");
		runButtonElement.mousedown(function(event){
			runJsfl(JSFL);
		});
	}
	private function runJsfl(jsfl:String)
	{
		csInterfaceUtil.runJsflScript(
			csInterfaceUtil.getExtensionUri() + "/" + jsfl
		);
	}
}

