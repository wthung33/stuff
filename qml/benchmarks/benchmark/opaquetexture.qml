import QtQuick 2.0

Benchmark {
    id: root;

    property string description: "Rendering "
                                 + count + " opaque texture"
                                 + (count > 1 ? "s" : "");
    Repeater {
        model: root.count;
        Rectangle {
            x: index
            y: index
            width: root.width
            height: root.height
            color: Qt.hsla((index * .271) % 1.0, 0.5, 0.5);
            z: index
            layer.enabled: true
            layer.effect: ShaderEffect {
                blending: false
            }
        }
    }


}
