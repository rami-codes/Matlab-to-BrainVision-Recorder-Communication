# Matlab to BrainVision Recorder Communication
## What you need:
1) BrainVision Recorder or Cognionics and associated hardware 
2) Matlab
3) A 64-bit Windows operating system

## How to use

1) Start BrainVision recorder or Cognionics (optional: click the record button to store the data + markers)
2) Run your Matlab code for your experiment and make a call to _enablePort_
3) Send markers to BrainVision Recorder by calling the _sendMarker_ function
4) Do a happy dance!
