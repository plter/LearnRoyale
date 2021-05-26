console.debug("Hello World from js");

(async () => {
    let video = document.createElement("video");
    video.width = 400;
    video.height = 300;
    document.body.append(video);
    video.autoplay = true;
    video.muted = true;

    video.srcObject = await navigator.mediaDevices.getUserMedia({ video: true, audio: false });
})();
