/**
 * Created by ${PRODUCT_NAME}.
 * User: glava
 * Date: 18.11.11.
 * Time: 12.01
 * To change this template use File | Settings | File Templates.
 */
package wall {
import flashx.textLayout.elements.TextFlow;

import spark.utils.TextFlowUtil;

public class TextFormater {

    public static function formatStatus(text:String, userName:String, hashColor:String, fontSize:int = 14):TextFlow {
        var formatedMesage:String = "<span fontFamily='Georgia' fontSize='" + fontSize + "' color='" + hashColor + "'>" + userName + ":</span> ";
        var formatedKisobran:String = "<span fontFamily='Georgia' fontSize='" + fontSize + "' color='" + hashColor + "'>#"+main.SEARCH_KEAYWORD+"</span>";

        text = text.replace("#"+main.SEARCH_KEAYWORD, formatedKisobran);

        formatedMesage = formatedMesage + text;

        var flow:TextFlow = TextFlowUtil.importFromString(formatedMesage);
        return flow;
    }

    public static function toHex(item:uint):String {
        var hex:String = Number(item).toString(16);
        var s:String = "#" + ("00000" + hex.toUpperCase()).substr(-6);
        return s;
    }
}
}
