function varargout = projecta(varargin)
% PROJECTA MATLAB code for projecta.fig
%      PROJECTA, by itself, creates a new PROJECTA or raises the existing
%      singleton*.
%
%      H = PROJECTA returns the handle to a new PROJECTA or the handle to
%      the existing singleton*.
%
%      PROJECTA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECTA.M with the given input arguments.
%
%      PROJECTA('Property','Value',...) creates a new PROJECTA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before projecta_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to projecta_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help projecta

% Last Modified by GUIDE v2.5 02-Jun-2013 23:14:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @projecta_OpeningFcn, ...
                   'gui_OutputFcn',  @projecta_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before projecta is made visible.
function projecta_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to projecta (see VARARGIN)

% Choose default command line output for projecta
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes projecta wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = projecta_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in n000.
function n000_Callback(hObject, eventdata, handles)
% hObject    handle to n000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
if isempty(a)
b=strcat(a,'');
set(handles.text1,'string',b);

else    
b=strcat(a,'000');
set(handles.text1,'string',b);
end

% --- Executes on button press in n0.
function n0_Callback(~, ~, handles)
% hObject    handle to n0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
if isempty(a)
b=strcat(a,'');
set(handles.text1,'string',b);

else    
b=strcat(a,'0');
set(handles.text1,'string',b);
end

% --- Executes on button press in ndot.
function ndot_Callback(hObject, eventdata, handles)
% hObject    handle to ndot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
c=str2double(get(handles.taghallob1,'string'));
c=c+1;
set(handles.taghallob1,'string',c);
if isempty(a)
b=strcat(a,'0.');
set(handles.text1,'string',b);
elseif c>1
   b=strcat(a,'');
set(handles.text1,'string',b); 
else
b=strcat(a,'.');
set(handles.text1,'string',b);
end

% --- Executes on button press in nequal.
function nequal_Callback(hObject, eventdata, handles)
% hObject    handle to nequal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d=str2double(get(handles.taghallob2,'string'));
for i=1:1:d
    d=d-1;
    set(handles.taghallob2,'string',d);
  a=get(handles.text1,'string');
b=strcat(a,')');
set(handles.text1,'string',b);
end 
a=get(handles.text1,'string');
d=str2num(a);
c=num2str(d);
b=strcat(a,'=');
set(handles.text1,'string',b);
set(handles.text3,'string',b);
set(handles.text2,'string',c);
set(handles.text1,'string','');
a=get(handles.text2,'string');
m1=get(handles.m1,'string');
m2=get(handles.m2,'string');
m3=get(handles.m3,'string');
m4=get(handles.m4,'string');
m5=get(handles.m5,'string');
if isempty(m1)
m1=a;
elseif isempty(m2)
m2=a;
elseif isempty(m3)
m3=a;
elseif isempty(m4)
m4=a;
elseif isempty(m5)
m5=a;
else
m1=m2;
m2=m3;
m3=m4;
m4=m5;
m5=a;
end
set(handles.m1,'string',m1);
set(handles.m2,'string',m2);
set(handles.m3,'string',m3);
set(handles.m4,'string',m4);
set(handles.m5,'string',m5);
set(handles.taghallob1,'string','0');

% --- Executes on button press in n7.
function n7_Callback(hObject, eventdata, handles)
% hObject    handle to n7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'7');
set(handles.text1,'string',b);


% --- Executes on button press in n8.
function n8_Callback(hObject, eventdata, handles)
% hObject    handle to n8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'8');
set(handles.text1,'string',b);


% --- Executes on button press in n9.
function n9_Callback(hObject, eventdata, handles)
% hObject    handle to n9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'9');
set(handles.text1,'string',b);


% --- Executes on button press in nplus.
function nplus_Callback(hObject, eventdata, handles)
% hObject    handle to nplus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'+');
set(handles.text1,'string',b);
set(handles.taghallob1,'string','0');

% --- Executes on button press in n4.
function n4_Callback(hObject, eventdata, handles)
% hObject    handle to n4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'4');
set(handles.text1,'string',b);


% --- Executes on button press in n5.
function n5_Callback(hObject, eventdata, handles)
% hObject    handle to n5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'5');
set(handles.text1,'string',b);


% --- Executes on button press in n6.
function n6_Callback(hObject, eventdata, handles)
% hObject    handle to n6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'6');
set(handles.text1,'string',b);


% --- Executes on button press in nminus.
function nminus_Callback(hObject, eventdata, handles)
% hObject    handle to nminus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'-');
set(handles.text1,'string',b);
set(handles.taghallob1,'string','0');

% --- Executes on button press in n1.
function n1_Callback(hObject, eventdata, handles)
% hObject    handle to n1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'1');
set(handles.text1,'string',b);


% --- Executes on button press in n2.
function n2_Callback(hObject, eventdata, handles)
% hObject    handle to n2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'2');
set(handles.text1,'string',b);


% --- Executes on button press in n3.
function n3_Callback(hObject, eventdata, handles)
% hObject    handle to n3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'3');
set(handles.text1,'string',b);



% --- Executes on button press in nconv.
function nconv_Callback(hObject, eventdata, handles)
% hObject    handle to nconv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'*');
set(handles.text1,'string',b);
set(handles.taghallob1,'string','0');

% --- Executes on button press in nbaz.
function nbaz_Callback(hObject, eventdata, handles)
% hObject    handle to nbaz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
a=get(handles.text1,'string');
b=strcat(a,'(');
set(handles.text1,'string',b);
set(handles.taghallob2,'string',d)
set(handles.taghallob1,'string','0');
% --- Executes on button press in nbaste.
function nbaste_Callback(hObject, eventdata, handles)
% hObject    handle to nbaste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d=str2double(get(handles.taghallob2,'string'));
a=get(handles.text1,'string');
if d==0
    b=strcat(a,'');
elseif d>0
b=strcat(a,')');
d=d-1;
else
    b=strcat(a,'');
end
set(handles.text1,'string',b);
set(handles.taghallob2,'string',d)
set(handles.taghallob1,'string','0');


% --- Executes on button press in ncomma.
function ncomma_Callback(~, eventdata, handles)
% hObject    handle to ncomma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,',');
set(handles.text1,'string',b);
set(handles.taghallob1,'string','0');

% --- Executes on button press in ndiv.
function ndiv_Callback(hObject, eventdata, handles)
% hObject    handle to ndiv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'/');
set(handles.text1,'string',b);
set(handles.taghallob1,'string','0');

% --- Executes on button press in npow.
function npow_Callback(hObject, eventdata, handles)
% hObject    handle to npow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'^');
set(handles.text1,'string',b);
set(handles.taghallob1,'string','0');

% --- Executes on button press in nsqrt.
function nsqrt_Callback(hObject, eventdata, handles)
% hObject    handle to nsqrt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'sqrt(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)
set(handles.taghallob1,'string','');
set(handles.taghallob1,'string','0');

% --- Executes on button press in njazr.
function njazr_Callback(hObject, eventdata, handles)
% hObject    handle to njazr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'^(1/');
set(handles.text1,'string',b);
set(handles.taghallob1,'string','0');
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)
% --- Executes on button press in nfactorial.
function nfactorial_Callback(hObject, eventdata, handles)
% hObject    handle to nfactorial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'factorial(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)
set(handles.taghallob1,'string','0');

% --- Executes on button press in narcsin.
function narcsin_Callback(hObject, eventdata, handles)
% hObject    handle to narcsin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'asin(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
set(handles.taghallob1,'string','0');
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in narccos.
function narccos_Callback(hObject, eventdata, handles)
% hObject    handle to narccos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d=str2double(get(handles.taghallob2,'string'));
a=get(handles.text1,'string');
b=strcat(a,'acos(');
set(handles.text1,'string',b);
d=d+1;
set(handles.taghallob2,'string',d)
set(handles.taghallob1,'string','0');

% --- Executes on button press in narctan.
function narctan_Callback(hObject, eventdata, handles)
% hObject    handle to narctan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'atan(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)
set(handles.taghallob1,'string','0');

% --- Executes on button press in narccot.
function narccot_Callback(hObject, eventdata, handles)
% hObject    handle to narccot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'acot(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in nc.
function nc_Callback(hObject, eventdata, handles)
% hObject    handle to nc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text1,'string','')
set(handles.taghallob1,'string','0')
set(handles.taghallob2,'string','0')


% --- Executes on button press in nsin.
function nsin_Callback(hObject, eventdata, handles)
% hObject    handle to nsin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'sin(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in ncos.
function ncos_Callback(hObject, eventdata, handles)
% hObject    handle to ncos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'cos(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in ntan.
function ntan_Callback(hObject, eventdata, handles)
% hObject    handle to ntan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'tan(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in ncot.
function ncot_Callback(hObject, eventdata, handles)
% hObject    handle to ncot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'cot(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in nsinh.
function nsinh_Callback(hObject, eventdata, handles)
% hObject    handle to nsinh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'sinh(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in ncosh.
function ncosh_Callback(hObject, eventdata, handles)
% hObject    handle to ncosh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'cosh(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in ntanh.
function ntanh_Callback(hObject, eventdata, handles)
% hObject    handle to ntanh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'tanh(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in ncoth.
function ncoth_Callback(hObject, eventdata, handles)
% hObject    handle to ncoth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'coth(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in nfloor.
function nfloor_Callback(hObject, eventdata, handles)
% hObject    handle to nfloor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'floor(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in nans.
function nans_Callback(hObject, eventdata, handles)
% hObject    handle to nans (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text2,'string');
b=get(handles.text1,'string');
c=strcat(b,a);
set(handles.text1,'string',c);

% --- Executes on button press in ne.
function ne_Callback(hObject, eventdata, handles)
% hObject    handle to ne (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'2.7183');
set(handles.text1,'string',b);

% --- Executes on button press in npi.
function npi_Callback(hObject, eventdata, handles)
% hObject    handle to npi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'pi');
set(handles.text1,'string',b);


% --- Executes on button press in nceil.
function nceil_Callback(hObject, eventdata, handles)
% hObject    handle to nceil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'ceil(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in nfix.
function nfix_Callback(hObject, eventdata, handles)
% hObject    handle to nfix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'fix(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in nround.
function nround_Callback(hObject, eventdata, handles)
% hObject    handle to nround (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'round(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in nabs.
function nabs_Callback(hObject, eventdata, handles)
% hObject    handle to nabs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'abs(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in nangle.
function nangle_Callback(hObject, eventdata, handles)
% hObject    handle to nangle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'angle(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in nimage.
function nimage_Callback(hObject, eventdata, handles)
% hObject    handle to nimage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'imag(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in nreal.
function nreal_Callback(hObject, eventdata, handles)
% hObject    handle to nreal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'real(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in nrem.
function nrem_Callback(hObject, eventdata, handles)
% hObject    handle to nrem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'rem(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in nmod.
function nmod_Callback(hObject, eventdata, handles)
% hObject    handle to nmod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'mod(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in nsign.
function nsign_Callback(hObject, eventdata, handles)
% hObject    handle to nsign (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'sign(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in ngcd.
function ngcd_Callback(hObject, eventdata, handles)
% hObject    handle to ngcd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'gcd(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in nlcm.
function nlcm_Callback(hObject, eventdata, handles)
% hObject    handle to nlcm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'lcm(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in nfactor.
function nfactor_Callback(hObject, eventdata, handles)
% hObject    handle to nfactor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'factor(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)

% --- Executes on button press in nprime.
function nprime_Callback(hObject, eventdata, handles)
% hObject    handle to nprime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'isprime(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)


% --- Executes on button press in ni.
function ni_Callback(hObject, eventdata, handles)
% hObject    handle to ni (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'i');
set(handles.text1,'string',b);


% --- Executes on button press in nlog10.
function nlog10_Callback(hObject, eventdata, handles)
% hObject    handle to nlog10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'log10(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)
set(handles.taghallob1,'string','');
set(handles.taghallob1,'string','0');


% --- Executes on button press in nlog2.
function nlog2_Callback(hObject, eventdata, handles)
% hObject    handle to nlog2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'log2(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)
set(handles.taghallob1,'string','');
set(handles.taghallob1,'string','0');


% --- Executes on button press in nln.
function nln_Callback(hObject, eventdata, handles)
% hObject    handle to nln (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'log(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)
set(handles.taghallob1,'string','');
set(handles.taghallob1,'string','0');


% --- Executes on button press in nroots.
function nroots_Callback(hObject, eventdata, handles)
% hObject    handle to nroots (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'roots(');
set(handles.text1,'string',b);


% --------------------------------------------------------------------
function file_Callback(hObject, eventdata, handles)
% hObject    handle to file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function color_Callback(hObject, eventdata, handles)
% hObject    handle to color (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_14_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function tabdil_Callback(hObject, eventdata, handles)
% hObject    handle to tabdil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tabdilezavie

% --------------------------------------------------------------------
function red_Callback(hObject, eventdata, handles)
% hObject    handle to red (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'color','r');

% --------------------------------------------------------------------
function green_Callback(hObject, eventdata, handles)
% hObject    handle to green (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'color','g');

% --------------------------------------------------------------------
function blue_Callback(hObject, eventdata, handles)
% hObject    handle to blue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'color','b');

% --------------------------------------------------------------------
function yellow_Callback(hObject, eventdata, handles)
% hObject    handle to yellow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'color','y');

% --------------------------------------------------------------------
function firoozei_Callback(hObject, eventdata, handles)
% hObject    handle to firoozei (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'color','c');

% --------------------------------------------------------------------
function arghavani_Callback(hObject, eventdata, handles)
% hObject    handle to arghavani (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'color','m');

% --------------------------------------------------------------------
function default1_Callback(hObject, eventdata, handles)
% hObject    handle to default1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'color','w');

% --------------------------------------------------------------------
function open_Callback(hObject, eventdata, handles)
% hObject    handle to open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
file = uigetfile('*.fig');
if ~isequal(file, 0)
    open(file);
end

% --------------------------------------------------------------------
function close_Callback(hObject, eventdata, handles)
% hObject    handle to close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close

% --- Executes on button press in nce.
function nce_Callback(hObject, eventdata, handles)
% hObject    handle to nce (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text2,'string','');
set(handles.text1,'string','');
set(handles.taghallob1,'string','0')
set(handles.taghallob2,'string','0')

% --- Executes on button press in nmemory.
function nmemory_Callback(hObject, eventdata, handles)
% hObject    handle to nmemory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.m1,'string','');
set(handles.m2,'string','');
set(handles.m3,'string','');
set(handles.m4,'string','');
set(handles.m5,'string','');


% --- Executes on button press in m1.
function m1_Callback(hObject, eventdata, handles)
% hObject    handle to m1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=get(handles.m1,'string');
c=strcat(a,b);
set(handles.text1,'string',c);


% --- Executes on button press in m2.
function m2_Callback(hObject, eventdata, handles)
% hObject    handle to m2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=get(handles.m2,'string');
c=strcat(a,b);
set(handles.text1,'string',c);


% --- Executes on button press in m3.
function m3_Callback(hObject, eventdata, handles)
% hObject    handle to m3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=get(handles.m3,'string');
c=strcat(a,b);
set(handles.text1,'string',c);


% --- Executes on button press in m4.
function m4_Callback(hObject, eventdata, handles)
% hObject    handle to m4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=get(handles.m4,'string');
c=strcat(a,b);
set(handles.text1,'string',c);


% --- Executes on button press in m5.
function m5_Callback(hObject, eventdata, handles)
% hObject    handle to m5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=get(handles.m5,'string');
c=strcat(a,b);
set(handles.text1,'string',c);


% --- Executes on button press in nint.
function nint_Callback(hObject, eventdata, handles)
% hObject    handle to nint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 a=get(handles.text1,'string');
b=strcat(a,'polyint([');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)
set(handles.taghallob1,'string','');
set(handles.taghallob1,'string','0');

% --- Executes on button press in nder.
function nder_Callback(hObject, eventdata, handles)
% hObject    handle to nder (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 a=get(handles.text1,'string');
b=strcat(a,'polyder(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d)
set(handles.taghallob1,'string','');
set(handles.taghallob1,'string','0');

% --- Executes on button press in nbaz2.
function nbaz2_Callback(hObject, eventdata, handles)
% hObject    handle to nbaz2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'[');
set(handles.text1,'string',b);

% --- Executes on button press in nbaste2.
function nbaste2_Callback(hObject, eventdata, handles)
% hObject    handle to nbaste2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'])');
set(handles.text1,'string',b);

% --- Executes on button press in npoly.
function npoly_Callback(hObject, eventdata, handles)
% hObject    handle to npoly (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'poly([');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d);

% --- Executes on button press in nspace.
function npolyval_Callback(hObject, eventdata, handles)
% hObject    handle to nspace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'polyval([');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d);

% --- Executes on button press in pushbutton85.
function pushbutton85_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton85 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in pushbutton87.
function pushbutton87_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton87 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton88.
function pushbutton88_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton88 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton89.
function pushbutton89_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton89 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in pushbutton90.
function pushbutton90_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in nsvae.
function nsvae_Callback(hObject, eventdata, handles)
% hObject    handle to nsvae (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.ntext,'string');
set(handles.ntext,'string',a);
set(handles.ntext,'style','text');
set(handles.ntext,'backgroundcolor','c');

% --- Executes on button press in nchange.
function nchange_Callback(hObject, eventdata, handles)
% hObject    handle to nchange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ntext,'style','edit');
set(handles.ntext,'backgroundcolor','w');

% --- Executes on button press in nadd.
function nadd_Callback(hObject, eventdata, handles)
% hObject    handle to nadd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=get(handles.ntext,'string');
c=strcat(a,b);
set(handles.text1,'string',c);

% --- Executes on button press in nclean.
function nclean_Callback(hObject, eventdata, handles)
% hObject    handle to nclean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ntext,'string','');


% --- Executes on button press in nget.
function nget_Callback(hObject, eventdata, handles)
% hObject    handle to nget (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=get(handles.ntext,'string');
c=strcat(b,a);
set(handles.ntext,'string',c);


% --- Executes on button press in nroot.
function nroot_Callback(hObject, eventdata, handles)
% hObject    handle to nroot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'roots(');
set(handles.text1,'string',b);


% --- Executes on button press in pushbutton97.
function pushbutton97_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton97 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton98.
function pushbutton98_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton98 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in nprimes.
function nprimes_Callback(hObject, eventdata, handles)
% hObject    handle to nprimes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.text1,'string');
b=strcat(a,'primes(');
set(handles.text1,'string',b);
d=str2double(get(handles.taghallob2,'string'));
d=d+1;
set(handles.taghallob2,'string',d);


% --- Executes on button press in nstop.
function nstop_Callback(hObject, eventdata, handles)
% hObject    handle to nstop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
toc;
set(handles.text1,'string',toc);

% --- Executes on button press in nstart.
function nstart_Callback(hObject, eventdata, handles)
% hObject    handle to nstart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tic
