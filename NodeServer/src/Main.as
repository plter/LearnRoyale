package {
    import http.ClientRequest;
    import http.ServerResponse;

    public class Main{

        public function Main():void {
            http.createServer(function(req:ClientRequest, res:ServerResponse):void {
                res.end("Hello World");
            }).listen(8000);
        }
    }
}
