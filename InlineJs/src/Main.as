package
{

    public class Main{
        public function start():void
        {

            COMPILE::JS{
                var a:HTMLVideoElement = document.createElement("video") as HTMLVideoElement;
                a.width = 400;
                a.height = 300;
                a.autoplay = true;
                document.body.appendChild(a);

                
            }
        }
    }
}