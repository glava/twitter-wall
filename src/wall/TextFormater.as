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

    public static function formatStatus(text:String, userName:String, usernameColor:String, hashColor:String, fontSize:int = 14):TextFlow {
        var formatedMesage:String = "<span fontFamily='Georgia' fontSize='" + fontSize + "' color='" + usernameColor + "'>" + userName + ":</span> ";
        var formatedKisobran:String = "<span fontFamily='Georgia' fontSize='" + fontSize + "' color='" + hashColor + "'>#kisobran</span>";

        text = text.replace("#kisobran", formatedKisobran);

        formatedMesage = formatedMesage + text;

        var flow:TextFlow = TextFlowUtil.importFromString(formatedMesage);
        return flow;
    }
}
}
