clear; clc
imaqhwinfo;
imaqhwinfo('winvideo');
dev_info = imaqhwinfo('winvideo',1);
vid = videoinput('winvideo',1,'YUY2_320x240');
% preview(vid);

% Set video input object properties for this application.
% vid.TriggerRepeat = 100;
vid.FrameGrabInterval = 5;
vid.FramesPerTrigger = inf;
vid.ReturnedColorSpace = 'rgb';
% Set value of a video source object property.
% vid_src = getselectedsource(vid);
% vid_src.Tag = 'motion detection setup';

% Create a figure window.


% Start acquiring frames.
start(vid)

figure; 
while(true)
    while(vid.FramesAvailable == 0)
    end
    data = getdata(vid,1); 
    frame = data(:,:,:,1);
    faceDetector = vision.CascadeObjectDetector();
    bbox = step(faceDetector,frame);
    frame = insertObjectAnnotation(frame, 'rectangle',bbox,'Face');
    imshow(frame);
    drawnow     % update figure window
end
stop(vid);
