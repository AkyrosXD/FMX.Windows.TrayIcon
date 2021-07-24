# FMX.Windows.TrayIcon
 Windows system tray icon class for FMX
 
## Usage

### Define your tray icon variable
```Pascal
var
 TrayIcon: TTrayIcon
 // make sure that you add FMX.Windows.TrayIcon to your "uses"
 ```
 ### Define your tray icon variable
```Pascal
TrayIcon := TTrayIcon.Create(Self);
// Owner should be your FMX window and the value should not be nil
 ```
 ### Adding event functions (check out the example project for more details)
 ```Pascal
 // when the icon is clicked
 TrayIcon.SetOnClick(On_Click_Function);
 
// when the icon is double-clicked
TrayIcon.SetOnDoubleClick(On_Click_Function);
 ```
 ### Adding actions to the context menu
 ```Pascal
 // add a toggle
 // first parameter: text
 // second parameter: the function that will get called when the toggle gets checked
 // third parameter: the function that will get called when the toggle gets unchecked
 // fourth parameter: default value of the toggle
 TrayIcon.AddMenuToggle('Your Toggle', On_Toogle_Enabled, On_Toggle_Disabled_Function, True);
 
 // add a regular button
 TrayIcon.AddMenuAction('Test Action', On_Action_Clicked);
 ```
 ### Displaying the icon
 ```Pascal
 TrayIcon.Show;
 ```
 ### Hiding the icon
  ```Pascal
 TrayIcon.Hide;
 ```
