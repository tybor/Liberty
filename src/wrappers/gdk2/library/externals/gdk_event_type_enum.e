-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDK_EVENT_TYPE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = a_2button_press_low_level)  or else
				(a_value = a_3button_press_low_level)  or else
				(a_value = button_press_low_level)  or else
				(a_value = button_release_low_level)  or else
				(a_value = client_event_low_level)  or else
				(a_value = configure_low_level)  or else
				(a_value = damage_low_level)  or else
				(a_value = delete_low_level)  or else
				(a_value = destroy_low_level)  or else
				(a_value = drag_enter_low_level)  or else
				(a_value = drag_leave_low_level)  or else
				(a_value = drag_motion_low_level)  or else
				(a_value = drag_status_low_level)  or else
				(a_value = drop_finished_low_level)  or else
				(a_value = drop_start_low_level)  or else
				(a_value = enter_notify_low_level)  or else
				(a_value = event_last_low_level)  or else
				(a_value = expose_low_level)  or else
				(a_value = focus_change_low_level)  or else
				(a_value = grab_broken_low_level)  or else
				(a_value = key_press_low_level)  or else
				(a_value = key_release_low_level)  or else
				(a_value = leave_notify_low_level)  or else
				(a_value = map_low_level)  or else
				(a_value = motion_notify_low_level)  or else
				(a_value = no_expose_low_level)  or else
				(a_value = nothing_low_level)  or else
				(a_value = owner_change_low_level)  or else
				(a_value = property_notify_low_level)  or else
				(a_value = proximity_in_low_level)  or else
				(a_value = proximity_out_low_level)  or else
				(a_value = scroll_low_level)  or else
				(a_value = selection_clear_low_level)  or else
				(a_value = selection_notify_low_level)  or else
				(a_value = selection_request_low_level)  or else
				(a_value = setting_low_level)  or else
				(a_value = unmap_low_level)  or else
				(a_value = visibility_notify_low_level)  or else
				(a_value = window_state_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_a_2button_press is
		do
			value := a_2button_press_low_level
		end

	set_a_3button_press is
		do
			value := a_3button_press_low_level
		end

	set_button_press is
		do
			value := button_press_low_level
		end

	set_button_release is
		do
			value := button_release_low_level
		end

	set_client_event is
		do
			value := client_event_low_level
		end

	set_configure is
		do
			value := configure_low_level
		end

	set_damage is
		do
			value := damage_low_level
		end

	set_delete is
		do
			value := delete_low_level
		end

	set_destroy is
		do
			value := destroy_low_level
		end

	set_drag_enter is
		do
			value := drag_enter_low_level
		end

	set_drag_leave is
		do
			value := drag_leave_low_level
		end

	set_drag_motion is
		do
			value := drag_motion_low_level
		end

	set_drag_status is
		do
			value := drag_status_low_level
		end

	set_drop_finished is
		do
			value := drop_finished_low_level
		end

	set_drop_start is
		do
			value := drop_start_low_level
		end

	set_enter_notify is
		do
			value := enter_notify_low_level
		end

	set_event_last is
		do
			value := event_last_low_level
		end

	set_expose is
		do
			value := expose_low_level
		end

	set_focus_change is
		do
			value := focus_change_low_level
		end

	set_grab_broken is
		do
			value := grab_broken_low_level
		end

	set_key_press is
		do
			value := key_press_low_level
		end

	set_key_release is
		do
			value := key_release_low_level
		end

	set_leave_notify is
		do
			value := leave_notify_low_level
		end

	set_map is
		do
			value := map_low_level
		end

	set_motion_notify is
		do
			value := motion_notify_low_level
		end

	set_no_expose is
		do
			value := no_expose_low_level
		end

	set_nothing is
		do
			value := nothing_low_level
		end

	set_owner_change is
		do
			value := owner_change_low_level
		end

	set_property_notify is
		do
			value := property_notify_low_level
		end

	set_proximity_in is
		do
			value := proximity_in_low_level
		end

	set_proximity_out is
		do
			value := proximity_out_low_level
		end

	set_scroll is
		do
			value := scroll_low_level
		end

	set_selection_clear is
		do
			value := selection_clear_low_level
		end

	set_selection_notify is
		do
			value := selection_notify_low_level
		end

	set_selection_request is
		do
			value := selection_request_low_level
		end

	set_setting is
		do
			value := setting_low_level
		end

	set_unmap is
		do
			value := unmap_low_level
		end

	set_visibility_notify is
		do
			value := visibility_notify_low_level
		end

	set_window_state is
		do
			value := window_state_low_level
		end

feature {ANY} -- Queries
	is_a_2button_press: BOOLEAN is
		do
			Result := (value=a_2button_press_low_level)
		end

	is_a_3button_press: BOOLEAN is
		do
			Result := (value=a_3button_press_low_level)
		end

	is_button_press: BOOLEAN is
		do
			Result := (value=button_press_low_level)
		end

	is_button_release: BOOLEAN is
		do
			Result := (value=button_release_low_level)
		end

	is_client_event: BOOLEAN is
		do
			Result := (value=client_event_low_level)
		end

	is_configure: BOOLEAN is
		do
			Result := (value=configure_low_level)
		end

	is_damage: BOOLEAN is
		do
			Result := (value=damage_low_level)
		end

	is_delete: BOOLEAN is
		do
			Result := (value=delete_low_level)
		end

	is_destroy: BOOLEAN is
		do
			Result := (value=destroy_low_level)
		end

	is_drag_enter: BOOLEAN is
		do
			Result := (value=drag_enter_low_level)
		end

	is_drag_leave: BOOLEAN is
		do
			Result := (value=drag_leave_low_level)
		end

	is_drag_motion: BOOLEAN is
		do
			Result := (value=drag_motion_low_level)
		end

	is_drag_status: BOOLEAN is
		do
			Result := (value=drag_status_low_level)
		end

	is_drop_finished: BOOLEAN is
		do
			Result := (value=drop_finished_low_level)
		end

	is_drop_start: BOOLEAN is
		do
			Result := (value=drop_start_low_level)
		end

	is_enter_notify: BOOLEAN is
		do
			Result := (value=enter_notify_low_level)
		end

	is_event_last: BOOLEAN is
		do
			Result := (value=event_last_low_level)
		end

	is_expose: BOOLEAN is
		do
			Result := (value=expose_low_level)
		end

	is_focus_change: BOOLEAN is
		do
			Result := (value=focus_change_low_level)
		end

	is_grab_broken: BOOLEAN is
		do
			Result := (value=grab_broken_low_level)
		end

	is_key_press: BOOLEAN is
		do
			Result := (value=key_press_low_level)
		end

	is_key_release: BOOLEAN is
		do
			Result := (value=key_release_low_level)
		end

	is_leave_notify: BOOLEAN is
		do
			Result := (value=leave_notify_low_level)
		end

	is_map: BOOLEAN is
		do
			Result := (value=map_low_level)
		end

	is_motion_notify: BOOLEAN is
		do
			Result := (value=motion_notify_low_level)
		end

	is_no_expose: BOOLEAN is
		do
			Result := (value=no_expose_low_level)
		end

	is_nothing: BOOLEAN is
		do
			Result := (value=nothing_low_level)
		end

	is_owner_change: BOOLEAN is
		do
			Result := (value=owner_change_low_level)
		end

	is_property_notify: BOOLEAN is
		do
			Result := (value=property_notify_low_level)
		end

	is_proximity_in: BOOLEAN is
		do
			Result := (value=proximity_in_low_level)
		end

	is_proximity_out: BOOLEAN is
		do
			Result := (value=proximity_out_low_level)
		end

	is_scroll: BOOLEAN is
		do
			Result := (value=scroll_low_level)
		end

	is_selection_clear: BOOLEAN is
		do
			Result := (value=selection_clear_low_level)
		end

	is_selection_notify: BOOLEAN is
		do
			Result := (value=selection_notify_low_level)
		end

	is_selection_request: BOOLEAN is
		do
			Result := (value=selection_request_low_level)
		end

	is_setting: BOOLEAN is
		do
			Result := (value=setting_low_level)
		end

	is_unmap: BOOLEAN is
		do
			Result := (value=unmap_low_level)
		end

	is_visibility_notify: BOOLEAN is
		do
			Result := (value=visibility_notify_low_level)
		end

	is_window_state: BOOLEAN is
		do
			Result := (value=window_state_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	a_2button_press_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_2BUTTON_PRESS"
 			}"
 		end

	a_3button_press_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_3BUTTON_PRESS"
 			}"
 		end

	button_press_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_BUTTON_PRESS"
 			}"
 		end

	button_release_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_BUTTON_RELEASE"
 			}"
 		end

	client_event_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_CLIENT_EVENT"
 			}"
 		end

	configure_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_CONFIGURE"
 			}"
 		end

	damage_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_DAMAGE"
 			}"
 		end

	delete_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_DELETE"
 			}"
 		end

	destroy_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_DESTROY"
 			}"
 		end

	drag_enter_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_DRAG_ENTER"
 			}"
 		end

	drag_leave_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_DRAG_LEAVE"
 			}"
 		end

	drag_motion_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_DRAG_MOTION"
 			}"
 		end

	drag_status_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_DRAG_STATUS"
 			}"
 		end

	drop_finished_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_DROP_FINISHED"
 			}"
 		end

	drop_start_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_DROP_START"
 			}"
 		end

	enter_notify_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_ENTER_NOTIFY"
 			}"
 		end

	event_last_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_EVENT_LAST"
 			}"
 		end

	expose_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_EXPOSE"
 			}"
 		end

	focus_change_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_FOCUS_CHANGE"
 			}"
 		end

	grab_broken_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_GRAB_BROKEN"
 			}"
 		end

	key_press_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_KEY_PRESS"
 			}"
 		end

	key_release_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_KEY_RELEASE"
 			}"
 		end

	leave_notify_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_LEAVE_NOTIFY"
 			}"
 		end

	map_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_MAP"
 			}"
 		end

	motion_notify_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_MOTION_NOTIFY"
 			}"
 		end

	no_expose_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_NO_EXPOSE"
 			}"
 		end

	nothing_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_NOTHING"
 			}"
 		end

	owner_change_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_OWNER_CHANGE"
 			}"
 		end

	property_notify_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_PROPERTY_NOTIFY"
 			}"
 		end

	proximity_in_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_PROXIMITY_IN"
 			}"
 		end

	proximity_out_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_PROXIMITY_OUT"
 			}"
 		end

	scroll_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_SCROLL"
 			}"
 		end

	selection_clear_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_SELECTION_CLEAR"
 			}"
 		end

	selection_notify_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_SELECTION_NOTIFY"
 			}"
 		end

	selection_request_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_SELECTION_REQUEST"
 			}"
 		end

	setting_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_SETTING"
 			}"
 		end

	unmap_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_UNMAP"
 			}"
 		end

	visibility_notify_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_VISIBILITY_NOTIFY"
 			}"
 		end

	window_state_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_WINDOW_STATE"
 			}"
 		end


end -- class GDK_EVENT_TYPE_ENUM
