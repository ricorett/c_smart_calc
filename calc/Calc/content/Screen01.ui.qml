

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.5
import QtQuick.Controls 6.5
import Calc

Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor
    border.width: 0

    Image {
        id: group
        x: 0
        y: -13
        width: 1522
        height: 1106
        source: "../../../img/Group.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: group1
        x: 50
        y: 290
        source: "../../../img/Group 1.svg"
        fillMode: Image.PreserveAspectFit
    }

    RoundButton {
        id: roundButton
        x: 227
        y: 313
        width: 133
        height: 60
        visible: false
        text: "CE"
    }

    RoundButton {
        id: roundButton1
        x: 76
        y: 313
        width: 133
        height: 60
        visible: false
        text: "mod"
    }

    RoundButton {
        id: roundButton2
        x: 227
        y: 389
        width: 133
        height: 60
        visible: false
        text: "cos"
    }

    RoundButton {
        id: roundButton3
        x: 76
        y: 389
        width: 133
        height: 60
        visible: false
        text: "sin"
    }

    RoundButton {
        id: roundButton4
        x: 227
        y: 465
        width: 133
        height: 60
        visible: false
        text: "acos"
    }

    RoundButton {
        id: roundButton5
        x: 77
        y: 465
        width: 133
        height: 60
        visible: false
        text: "asin"
    }

    RoundButton {
        id: roundButton6
        x: 227
        y: 542
        width: 133
        height: 60
        visible: false
        text: ")"
    }

    RoundButton {
        id: roundButton7
        x: 77
        y: 542
        width: 133
        height: 60
        visible: false
        text: "("
    }

    RoundButton {
        id: roundButton8
        x: 227
        y: 616
        width: 133
        height: 62
        visible: false
        text: "8"
    }

    RoundButton {
        id: roundButton9
        x: 77
        y: 617
        width: 133
        height: 61
        visible: false
        text: "7"
    }

    RoundButton {
        id: roundButton10
        x: 227
        y: 693
        width: 133
        height: 60
        visible: false
        text: "5"
    }

    RoundButton {
        id: roundButton11
        x: 76
        y: 693
        width: 133
        height: 60
        visible: false
        text: "4"
    }

    RoundButton {
        id: roundButton12
        x: 227
        y: 770
        width: 133
        height: 60
        visible: false
        text: "2"
    }

    RoundButton {
        id: roundButton13
        x: 77
        y: 770
        width: 133
        height: 60
        visible: false
        text: "1"
        property int value: 1
    }

    RoundButton {
        id: roundButton14
        x: 227
        y: 846
        width: 133
        height: 60
        visible: false
        text: "zero"
    }

    RoundButton {
        id: roundButton15
        x: 76
        y: 846
        width: 133
        height: 60
        visible: false
        text: "plus_minus"
    }

    RoundButton {
        id: roundButton16
        x: 527
        y: 389
        width: 133
        height: 60
        visible: false
        text: "ln"
    }

    RoundButton {
        id: roundButton17
        x: 377
        y: 389
        width: 133
        height: 60
        visible: false
        text: "tg"
    }

    RoundButton {
        id: roundButton18
        x: 527
        y: 465
        width: 133
        height: 60
        visible: false
        text: "log"
    }

    RoundButton {
        id: roundButton19
        x: 377
        y: 465
        width: 133
        height: 60
        visible: false
        text: "atg"
    }

    RoundButton {
        id: roundButton20
        x: 527
        y: 542
        width: 133
        height: 60
        visible: false
        text: "pow"
    }

    RoundButton {
        id: roundButton21
        x: 377
        y: 542
        width: 133
        height: 60
        visible: false
        text: "sqrt"
    }

    RoundButton {
        id: roundButton22
        x: 527
        y: 616
        width: 133
        height: 62
        visible: false
        text: "div"
    }

    RoundButton {
        id: roundButton23
        x: 376
        y: 616
        width: 135
        height: 62
        visible: false
        text: "9"
    }

    RoundButton {
        id: roundButton24
        x: 527
        y: 693
        width: 133
        height: 60
        visible: false
        text: "mult"
    }

    RoundButton {
        id: roundButton25
        x: 377
        y: 693
        width: 133
        height: 60
        visible: false
        text: "6"
    }

    RoundButton {
        id: roundButton26
        x: 527
        y: 770
        width: 133
        height: 60
        visible: false
        text: "subdiv"
    }

    RoundButton {
        id: roundButton27
        x: 377
        y: 770
        width: 133
        height: 60
        visible: false
        text: "3"
    }

    RoundButton {
        id: roundButton28
        x: 527
        y: 846
        width: 133
        height: 60
        visible: false
        text: "plus"
    }

    RoundButton {
        id: roundButton29
        x: 377
        y: 846
        width: 133
        height: 60
        visible: false
        text: "point"
    }

    RoundButton {
        id: roundButton30
        x: 376
        y: 313
        width: 284
        height: 60
        visible: false
        text: "erase"
        display: AbstractButton.IconOnly
    }

    RoundButton {
        id: roundButton31
        x: 77
        y: 922
        width: 583
        height: 60
        visible: false
        text: "eq"
    }
}
