package {

    import org.apache.royale.net.URLLoader;
    import org.apache.royale.net.URLRequest;
    import org.apache.royale.events.Event;

    public class Main {
        public function Main() {
        }

        public function start():void {
            var l:URLLoader = new URLLoader();
            l.addEventListener(Event.COMPLETE, function(e:Event):void {
                console.log(e.target.data);
            });
            l.load(new URLRequest("/data.txt"));
        }
    }
}
