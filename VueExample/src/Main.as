package {

    import org.apache.royale.utils.Language;

    public class Main {

        public static const IMPORTED_CLASSES:Array = [Language];

        [Embed(source = "vue.global.prod.js", mimeType = "text/plain")]
        private static var VueSourceCode:String;

        [Embed(source = "MainView.html", mimeType = "text/plain")]
        private static var MainViewTpl:String;

        public function start():void {
            var s:HTMLScriptElement = document.createElement("script") as HTMLScriptElement;
            s.innerText = VueSourceCode;
            document.body.appendChild(s);

            init();
        }

        private function init():void {
            var root:HTMLDivElement = document.createElement("div") as HTMLDivElement;
            document.body.appendChild(root);
            window['Vue']['createApp']({"template": MainViewTpl})['mount'](root);
        }
    }
}
