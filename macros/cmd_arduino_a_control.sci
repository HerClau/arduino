// This GUI file is generated by guibuilder version 3.0
//////////
function cmd_arduino_a_control(h,pin_no)
// GUI to control analog signal to be sent to a connected Arduino board
//
// Calling Sequence
//     cmd_arduino_a_control(h,pin_no)
//
// Parameters
//     h : Board pointer, to indicate which board to use to differentiate one board from another
//     pin_no : Digital pin with ~ to sent the signal
//
// Description
//     This GUI provides a convenient way to control the value (0-255) to sent to the given pin number on Arduino. 
//  
// Examples
//    h = open_serial(1,9,115200) 
//    cmd_arduino_a_control(h,9,100)
//    close_serial(h)
// 
// See also
//    cmd_analog_out_volt
//    cmd_analog_out
//
// Authors
//     Bruno JOFRET, Tan C.L. 
//    

    //    str = string(val);
    //
    handles.h = h;
    handles.pin_no = pin_no;
    f=figure('figure_position',[128,41],'figure_size',[300,300],'auto_resize','on','background',[33],'figure_name','Arduino Digital Control',"visible", "off",...
    "dockable", "off", ...
    "infobar_visible", "off", ...
    "toolbar_visible", "off", ...
    "menubar_visible", "off", ...
    "default_axes", "off");

    handles.pbStop=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.3159509,0.16,0.3619632,0.2],'Relief','default','SliderStep',[0.01,0.1],'String','Stop','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pbStop','Callback','pbStop_callback()')
    handles.spResult=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[36],'FontUnits','points','FontWeight','bold','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[255],'Min',[0],'Position',[0.3190184,0.565,0.3527607,0.19],'Relief','default','SliderStep',[1,10],'String',"0",'Style','spinner','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','spResult','Callback','spResult_callback(handles)')


   f.visible = "on";

    handles = resume(handles);
    //set(txtResult,'string',str);
 
endfunction
//////////
// Callbacks are defined as below. Please do not delete the comments as it will be used in coming version
function spResult_callback(handles)
//    pbResult = findobj("tag', "pbResult");
    
//        val 
        cmd_analog_out(handles.h,handles.pin_no,handles.spResult.value)
       // disp(handles.spResult.value);

endfunction    //////////

function pbStop_callback()
    //Write your callback for  pbStop  here
    close();
    //    abort;


endfunction



