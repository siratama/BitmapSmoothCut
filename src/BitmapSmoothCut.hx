package;

import jsfl.CompressionType;
import jsfl.BitmapItem;
import jsfl.ItemType;
import jsfl.Lib;
import jsfl.Lib.fl;

class BitmapSmoothCut
{
	public static function main(){
		new BitmapSmoothCut();
	}
	public function new()
	{
		if(Lib.fl.getDocumentDOM() == null) return;
		Lib.fl.trace("---");

		var library = Lib.fl.getDocumentDOM().library;
		var items = library.getSelectedItems();
		var itemsLength = items.length;

		if(itemsLength == 0)
		{
			Lib.fl.trace("Select item in library.");
			return;
		}

		for(i in 0...itemsLength)
		{
			var item = items[i];
			if(item.itemType != ItemType.BITMAP) continue;

			Lib.fl.trace(item.name);
			var bitmapItem = cast(item, BitmapItem);
			bitmapItem.allowSmoothing = false;
			bitmapItem.compressionType = CompressionType.LOSSLESS;
		}
		Lib.fl.trace("done");
	}
}
