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

    public static function formatStatus(text:String, userName:String, hashColor:String, fontSize:int = 14, mentionColor:String=""):TextFlow {

        var mentionPattern:RegExp = /@(\w+)/g;

        var hashPattern:RegExp = /#(\w+)/g;

        var formatedMesage:String = "<span fontFamily='Georgia' fontSize='" + fontSize + "' color='" + hashColor + "'>" + userName + ":</span> ";
        //var formatedKisobran:String = "<span fontFamily='Georgia' fontSize='" + fontSize + "' color='" + hashColor + "'>#"+main.SEARCH_KEAYWORD+"</span>";
        var mentionFormated:String = "<span fontFamily='Georgia' fontSize='" + fontSize + "' color='" + mentionColor + "'> @$1 </span>";
        var rtFormated:String = "<span fontFamily='Georgia' fontSize='" + fontSize + "' color='" + mentionColor + "'>RT @</span>";
        var hashFormated:String = "<span fontFamily='Georgia' fontSize='" + fontSize + "' color='" + hashColor + "'> #$1 </span>";


        text = text.replace(hashPattern,hashFormated);
        text = text.replace(mentionPattern,mentionFormated);

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
