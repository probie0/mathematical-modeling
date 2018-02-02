clear;clc;
camera = webcam();
camera.Resolution = '320x240';
while(true)
    frame = camera.snapshot();
    faceDetector = vision.CascadeObjectDetector();
    bbox = step(faceDetector,frame);
    frame = insertObjectAnnotation(frame, 'rectangle',bbox,'Face');
    image(frame); 
    drawnow;
end
% ÷∂Ø÷¥––
camera.delete();
