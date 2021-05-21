package {
    import org.apache.royale.display.UIGraphicsBase;
    import org.apache.royale.display.Graphics;

    public class Main extends UIGraphicsBase {
        public function Main() {
            document.body.appendChild(element);
        }

        public function start():void {
            width = 400;
            height = 300;

            var g:Graphics = Graphics.getInstanceFor(this);

            g.lineStyle(2, 0xffff0000, 1);
            g.beginFill(0xffffff00);
            g.moveTo(100, 100);
            g.lineTo(100, 200);

            g.drawRect(50, 50, 200, 100);
            g.endFill();
        }
    }
}
