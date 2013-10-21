-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDK_WINDOW_TYPE_HINT_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = combo_low_level)  or else
				(a_value = desktop_low_level)  or else
				(a_value = dialog_low_level)  or else
				(a_value = dnd_low_level)  or else
				(a_value = dock_low_level)  or else
				(a_value = dropdown_menu_low_level)  or else
				(a_value = menu_low_level)  or else
				(a_value = normal_low_level)  or else
				(a_value = notification_low_level)  or else
				(a_value = popup_menu_low_level)  or else
				(a_value = splashscreen_low_level)  or else
				(a_value = toolbar_low_level)  or else
				(a_value = tooltip_low_level)  or else
				(a_value = utility_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_combo is
		do
			value := combo_low_level
		end

	set_desktop is
		do
			value := desktop_low_level
		end

	set_dialog is
		do
			value := dialog_low_level
		end

	set_dnd is
		do
			value := dnd_low_level
		end

	set_dock is
		do
			value := dock_low_level
		end

	set_dropdown_menu is
		do
			value := dropdown_menu_low_level
		end

	set_menu is
		do
			value := menu_low_level
		end

	set_normal is
		do
			value := normal_low_level
		end

	set_notification is
		do
			value := notification_low_level
		end

	set_popup_menu is
		do
			value := popup_menu_low_level
		end

	set_splashscreen is
		do
			value := splashscreen_low_level
		end

	set_toolbar is
		do
			value := toolbar_low_level
		end

	set_tooltip is
		do
			value := tooltip_low_level
		end

	set_utility is
		do
			value := utility_low_level
		end

feature {ANY} -- Queries
	is_combo: BOOLEAN is
		do
			Result := (value=combo_low_level)
		end

	is_desktop: BOOLEAN is
		do
			Result := (value=desktop_low_level)
		end

	is_dialog: BOOLEAN is
		do
			Result := (value=dialog_low_level)
		end

	is_dnd: BOOLEAN is
		do
			Result := (value=dnd_low_level)
		end

	is_dock: BOOLEAN is
		do
			Result := (value=dock_low_level)
		end

	is_dropdown_menu: BOOLEAN is
		do
			Result := (value=dropdown_menu_low_level)
		end

	is_menu: BOOLEAN is
		do
			Result := (value=menu_low_level)
		end

	is_normal: BOOLEAN is
		do
			Result := (value=normal_low_level)
		end

	is_notification: BOOLEAN is
		do
			Result := (value=notification_low_level)
		end

	is_popup_menu: BOOLEAN is
		do
			Result := (value=popup_menu_low_level)
		end

	is_splashscreen: BOOLEAN is
		do
			Result := (value=splashscreen_low_level)
		end

	is_toolbar: BOOLEAN is
		do
			Result := (value=toolbar_low_level)
		end

	is_tooltip: BOOLEAN is
		do
			Result := (value=tooltip_low_level)
		end

	is_utility: BOOLEAN is
		do
			Result := (value=utility_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	combo_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_WINDOW_TYPE_HINT_COMBO"
 			}"
 		end

	desktop_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_WINDOW_TYPE_HINT_DESKTOP"
 			}"
 		end

	dialog_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_WINDOW_TYPE_HINT_DIALOG"
 			}"
 		end

	dnd_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_WINDOW_TYPE_HINT_DND"
 			}"
 		end

	dock_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_WINDOW_TYPE_HINT_DOCK"
 			}"
 		end

	dropdown_menu_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_WINDOW_TYPE_HINT_DROPDOWN_MENU"
 			}"
 		end

	menu_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_WINDOW_TYPE_HINT_MENU"
 			}"
 		end

	normal_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_WINDOW_TYPE_HINT_NORMAL"
 			}"
 		end

	notification_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_WINDOW_TYPE_HINT_NOTIFICATION"
 			}"
 		end

	popup_menu_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_WINDOW_TYPE_HINT_POPUP_MENU"
 			}"
 		end

	splashscreen_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_WINDOW_TYPE_HINT_SPLASHSCREEN"
 			}"
 		end

	toolbar_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_WINDOW_TYPE_HINT_TOOLBAR"
 			}"
 		end

	tooltip_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_WINDOW_TYPE_HINT_TOOLTIP"
 			}"
 		end

	utility_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_WINDOW_TYPE_HINT_UTILITY"
 			}"
 		end


end -- class GDK_WINDOW_TYPE_HINT_ENUM
