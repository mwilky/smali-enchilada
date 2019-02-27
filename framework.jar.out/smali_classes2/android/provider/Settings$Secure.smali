.class public final Landroid/provider/Settings$Secure;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation


# static fields
.field public static final ACCESSIBILITY_AUTOCLICK_DELAY:Ljava/lang/String; = "accessibility_autoclick_delay"

.field private static final ACCESSIBILITY_AUTOCLICK_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_AUTOCLICK_ENABLED:Ljava/lang/String; = "accessibility_autoclick_enabled"

.field private static final ACCESSIBILITY_AUTOCLICK_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_BUTTON_TARGET_COMPONENT:Ljava/lang/String; = "accessibility_button_target_component"

.field private static final ACCESSIBILITY_BUTTON_TARGET_COMPONENT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR:Ljava/lang/String; = "accessibility_captioning_background_color"

.field private static final ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_EDGE_COLOR:Ljava/lang/String; = "accessibility_captioning_edge_color"

.field private static final ACCESSIBILITY_CAPTIONING_EDGE_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_EDGE_TYPE:Ljava/lang/String; = "accessibility_captioning_edge_type"

.field private static final ACCESSIBILITY_CAPTIONING_EDGE_TYPE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_ENABLED:Ljava/lang/String; = "accessibility_captioning_enabled"

.field private static final ACCESSIBILITY_CAPTIONING_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_FONT_SCALE:Ljava/lang/String; = "accessibility_captioning_font_scale"

.field private static final ACCESSIBILITY_CAPTIONING_FONT_SCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR:Ljava/lang/String; = "accessibility_captioning_foreground_color"

.field private static final ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_LOCALE:Ljava/lang/String; = "accessibility_captioning_locale"

.field private static final ACCESSIBILITY_CAPTIONING_LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_PRESET:Ljava/lang/String; = "accessibility_captioning_preset"

.field private static final ACCESSIBILITY_CAPTIONING_PRESET_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_TYPEFACE:Ljava/lang/String; = "accessibility_captioning_typeface"

.field private static final ACCESSIBILITY_CAPTIONING_TYPEFACE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_WINDOW_COLOR:Ljava/lang/String; = "accessibility_captioning_window_color"

.field private static final ACCESSIBILITY_CAPTIONING_WINDOW_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_DISPLAY_DALTONIZER:Ljava/lang/String; = "accessibility_display_daltonizer"

.field public static final ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED:Ljava/lang/String; = "accessibility_display_daltonizer_enabled"

.field private static final ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field private static final ACCESSIBILITY_DISPLAY_DALTONIZER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_DISPLAY_INVERSION_ENABLED:Ljava/lang/String; = "accessibility_display_inversion_enabled"

.field private static final ACCESSIBILITY_DISPLAY_INVERSION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_AUTO_UPDATE:Ljava/lang/String; = "accessibility_display_magnification_auto_update"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_enabled"

.field private static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_NAVBAR_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_navbar_enabled"

.field private static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_NAVBAR_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE:Ljava/lang/String; = "accessibility_display_magnification_scale"

.field private static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_ENABLED:Ljava/lang/String; = "accessibility_enabled"

.field private static final ACCESSIBILITY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED:Ljava/lang/String; = "high_text_contrast_enabled"

.field private static final ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_LARGE_POINTER_ICON:Ljava/lang/String; = "accessibility_large_pointer_icon"

.field private static final ACCESSIBILITY_LARGE_POINTER_ICON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_SHORTCUT_DIALOG_SHOWN:Ljava/lang/String; = "accessibility_shortcut_dialog_shown"

.field private static final ACCESSIBILITY_SHORTCUT_DIALOG_SHOWN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_SHORTCUT_ENABLED:Ljava/lang/String; = "accessibility_shortcut_enabled"

.field private static final ACCESSIBILITY_SHORTCUT_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_SHORTCUT_ON_LOCK_SCREEN:Ljava/lang/String; = "accessibility_shortcut_on_lock_screen"

.field private static final ACCESSIBILITY_SHORTCUT_ON_LOCK_SCREEN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_SHORTCUT_TARGET_SERVICE:Ljava/lang/String; = "accessibility_shortcut_target_service"

.field private static final ACCESSIBILITY_SHORTCUT_TARGET_SERVICE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_SOFT_KEYBOARD_MODE:Ljava/lang/String; = "accessibility_soft_keyboard_mode"

.field public static final ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/String; = "speak_password"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ACCESSIBILITY_SPEAK_PASSWORD_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ALLOWED_GEOLOCATION_ORIGINS:Ljava/lang/String; = "allowed_geolocation_origins"

.field public static final ALLOW_MOCK_LOCATION:Ljava/lang/String; = "mock_location"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ALLOW_MOCK_LOCATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ALWAYS_ON_VPN_APP:Ljava/lang/String; = "always_on_vpn_app"

.field public static final ALWAYS_ON_VPN_LOCKDOWN:Ljava/lang/String; = "always_on_vpn_lockdown"

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"

.field public static final ANR_SHOW_BACKGROUND:Ljava/lang/String; = "anr_show_background"

.field public static final ASSISTANT:Ljava/lang/String; = "assistant"

.field public static final ASSIST_DISCLOSURE_ENABLED:Ljava/lang/String; = "assist_disclosure_enabled"

.field public static final ASSIST_GESTURE_ENABLED:Ljava/lang/String; = "assist_gesture_enabled"

.field private static final ASSIST_GESTURE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ASSIST_GESTURE_SENSITIVITY:Ljava/lang/String; = "assist_gesture_sensitivity"

.field private static final ASSIST_GESTURE_SENSITIVITY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ASSIST_GESTURE_SETUP_COMPLETE:Ljava/lang/String; = "assist_gesture_setup_complete"

.field private static final ASSIST_GESTURE_SETUP_COMPLETE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ASSIST_GESTURE_SILENCE_ALERTS_ENABLED:Ljava/lang/String; = "assist_gesture_silence_alerts_enabled"

.field private static final ASSIST_GESTURE_SILENCE_ALERTS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ASSIST_GESTURE_WAKE_ENABLED:Ljava/lang/String; = "assist_gesture_wake_enabled"

.field private static final ASSIST_GESTURE_WAKE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ASSIST_SCREENSHOT_ENABLED:Ljava/lang/String; = "assist_screenshot_enabled"

.field public static final ASSIST_STRUCTURE_ENABLED:Ljava/lang/String; = "assist_structure_enabled"

.field public static final AUTOFILL_FEATURE_FIELD_CLASSIFICATION:Ljava/lang/String; = "autofill_field_classification"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTOFILL_SERVICE:Ljava/lang/String; = "autofill_service"

.field public static final AUTOFILL_SERVICE_SEARCH_URI:Ljava/lang/String; = "autofill_service_search_uri"

.field private static final AUTOFILL_SERVICE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final AUTOFILL_USER_DATA_MAX_CATEGORY_COUNT:Ljava/lang/String; = "autofill_user_data_max_category_count"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTOFILL_USER_DATA_MAX_FIELD_CLASSIFICATION_IDS_SIZE:Ljava/lang/String; = "autofill_user_data_max_field_classification_size"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTOFILL_USER_DATA_MAX_USER_DATA_SIZE:Ljava/lang/String; = "autofill_user_data_max_user_data_size"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTOFILL_USER_DATA_MAX_VALUE_LENGTH:Ljava/lang/String; = "autofill_user_data_max_value_length"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTOFILL_USER_DATA_MIN_VALUE_LENGTH:Ljava/lang/String; = "autofill_user_data_min_value_length"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTOMATIC_STORAGE_MANAGER_BYTES_CLEARED:Ljava/lang/String; = "automatic_storage_manager_bytes_cleared"

.field public static final AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN:Ljava/lang/String; = "automatic_storage_manager_days_to_retain"

.field public static final AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN_DEFAULT:I = 0x5a

.field private static final AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final AUTOMATIC_STORAGE_MANAGER_ENABLED:Ljava/lang/String; = "automatic_storage_manager_enabled"

.field public static final AUTOMATIC_STORAGE_MANAGER_LAST_RUN:Ljava/lang/String; = "automatic_storage_manager_last_run"

.field public static final AUTOMATIC_STORAGE_MANAGER_TURNED_OFF_BY_POLICY:Ljava/lang/String; = "automatic_storage_manager_turned_off_by_policy"

.field public static final BACKGROUND_DATA:Ljava/lang/String; = "background_data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_AUTO_RESTORE:Ljava/lang/String; = "backup_auto_restore"

.field public static final BACKUP_ENABLED:Ljava/lang/String; = "backup_enabled"

.field public static final BACKUP_LOCAL_TRANSPORT_PARAMETERS:Ljava/lang/String; = "backup_local_transport_parameters"

.field public static final BACKUP_MANAGER_CONSTANTS:Ljava/lang/String; = "backup_manager_constants"

.field public static final BACKUP_PROVISIONED:Ljava/lang/String; = "backup_provisioned"

.field public static final BACKUP_TRANSPORT:Ljava/lang/String; = "backup_transport"

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final BLUETOOTH_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final BLUETOOTH_ON_WHILE_DRIVING:Ljava/lang/String; = "bluetooth_on_while_driving"

.field public static final BUGREPORT_IN_POWER_MENU:Ljava/lang/String; = "bugreport_in_power_menu"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final BUGREPORT_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final CAMERA_DOUBLE_TAP_POWER_GESTURE_DISABLED:Ljava/lang/String; = "camera_double_tap_power_gesture_disabled"

.field private static final CAMERA_DOUBLE_TAP_POWER_GESTURE_DISABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final CAMERA_DOUBLE_TWIST_TO_FLIP_ENABLED:Ljava/lang/String; = "camera_double_twist_to_flip_enabled"

.field private static final CAMERA_DOUBLE_TWIST_TO_FLIP_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final CAMERA_GESTURE_DISABLED:Ljava/lang/String; = "camera_gesture_disabled"

.field private static final CAMERA_GESTURE_DISABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final CAMERA_LIFT_TRIGGER_ENABLED:Ljava/lang/String; = "camera_lift_trigger_enabled"

.field public static final CAMERA_LIFT_TRIGGER_ENABLED_DEFAULT:I = 0x1

.field public static final CARRIER_APPS_HANDLED:Ljava/lang/String; = "carrier_apps_handled"

.field private static final CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CMAS_ADDITIONAL_BROADCAST_PKG:Ljava/lang/String; = "cmas_additional_broadcast_pkg"

.field public static final COMPLETED_CATEGORY_PREFIX:Ljava/lang/String; = "suggested.completed_category."

.field public static final CONNECTIVITY_RELEASE_PENDING_INTENT_DELAY_MS:Ljava/lang/String; = "connectivity_release_pending_intent_delay_ms"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_INPUT_METHOD:Ljava/lang/String; = "default_input_method"

.field public static final DEVELOPMENT_SETTINGS_ENABLED:Ljava/lang/String; = "development_settings_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_PAIRED:Ljava/lang/String; = "device_paired"

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DIALER_DEFAULT_APPLICATION:Ljava/lang/String; = "dialer_default_application"

.field public static final DISABLED_PRINT_SERVICES:Ljava/lang/String; = "disabled_print_services"

.field public static final DISABLED_SYSTEM_INPUT_METHODS:Ljava/lang/String; = "disabled_system_input_methods"

.field public static final DISPLAY_DENSITY_FORCED:Ljava/lang/String; = "display_density_forced"

.field public static final DOUBLE_TAP_TO_WAKE:Ljava/lang/String; = "double_tap_to_wake"

.field private static final DOUBLE_TAP_TO_WAKE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final DOZE_ALWAYS_ON:Ljava/lang/String; = "doze_always_on"

.field public static final DOZE_ENABLED:Ljava/lang/String; = "doze_enabled"

.field private static final DOZE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final DOZE_PULSE_ON_DOUBLE_TAP:Ljava/lang/String; = "doze_pulse_on_double_tap"

.field private static final DOZE_PULSE_ON_DOUBLE_TAP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final DOZE_PULSE_ON_LONG_PRESS:Ljava/lang/String; = "doze_pulse_on_long_press"

.field public static final DOZE_PULSE_ON_PICK_UP:Ljava/lang/String; = "doze_pulse_on_pick_up"

.field private static final DOZE_PULSE_ON_PICK_UP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final EMERGENCY_ASSISTANCE_APPLICATION:Ljava/lang/String; = "emergency_assistance_application"

.field public static final ENABLED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "enabled_accessibility_services"

.field private static final ENABLED_ACCESSIBILITY_SERVICES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ENABLED_INPUT_METHODS:Ljava/lang/String; = "enabled_input_methods"

.field public static final ENABLED_NOTIFICATION_ASSISTANT:Ljava/lang/String; = "enabled_notification_assistant"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ENABLED_NOTIFICATION_ASSISTANT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ENABLED_NOTIFICATION_LISTENERS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ENABLED_NOTIFICATION_POLICY_ACCESS_PACKAGES:Ljava/lang/String; = "enabled_notification_policy_access_packages"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ENABLED_NOTIFICATION_POLICY_ACCESS_PACKAGES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ENABLED_PRINT_SERVICES:Ljava/lang/String; = "enabled_print_services"

.field public static final ENABLED_VR_LISTENERS:Ljava/lang/String; = "enabled_vr_listeners"

.field private static final ENABLED_VR_LISTENERS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ENHANCED_VOICE_PRIVACY_ENABLED:Ljava/lang/String; = "enhanced_voice_privacy_enabled"

.field private static final ENHANCED_VOICE_PRIVACY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HUSH_GESTURE_USED:Ljava/lang/String; = "hush_gesture_used"

.field private static final HUSH_GESTURE_USED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final IMMERSIVE_MODE_CONFIRMATIONS:Ljava/lang/String; = "immersive_mode_confirmations"

.field public static final INCALL_BACK_BUTTON_BEHAVIOR:Ljava/lang/String; = "incall_back_button_behavior"

.field public static final INCALL_BACK_BUTTON_BEHAVIOR_DEFAULT:I = 0x0

.field public static final INCALL_BACK_BUTTON_BEHAVIOR_HANGUP:I = 0x1

.field public static final INCALL_BACK_BUTTON_BEHAVIOR_NONE:I = 0x0

.field public static final INCALL_POWER_BUTTON_BEHAVIOR:Ljava/lang/String; = "incall_power_button_behavior"

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_DEFAULT:I = 0x1

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_HANGUP:I = 0x2

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_SCREEN_OFF:I = 0x1

.field private static final INCALL_POWER_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final INPUT_METHODS_SUBTYPE_HISTORY:Ljava/lang/String; = "input_methods_subtype_history"

.field public static final INPUT_METHOD_SELECTOR_VISIBILITY:Ljava/lang/String; = "input_method_selector_visibility"

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"

.field public static final INSTANT_APPS_ENABLED:Ljava/lang/String; = "instant_apps_enabled"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTANT_APP_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYGUARD_SLICE_URI:Ljava/lang/String; = "keyguard_slice_uri"

.field public static final LAST_SETUP_SHOWN:Ljava/lang/String; = "last_setup_shown"

.field public static final LEGACY_RESTORE_SETTINGS:[Ljava/lang/String;

.field public static final LOCATION_CHANGER:Ljava/lang/String; = "location_changer"

.field public static final LOCATION_CHANGER_QUICK_SETTINGS:I = 0x2

.field public static final LOCATION_CHANGER_SYSTEM_SETTINGS:I = 0x1

.field public static final LOCATION_CHANGER_UNKNOWN:I = 0x0

.field public static final LOCATION_MODE:Ljava/lang/String; = "location_mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCATION_MODE_BATTERY_SAVING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCATION_MODE_HIGH_ACCURACY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCATION_MODE_OFF:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCATION_MODE_SENSORS_ONLY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKDOWN_IN_POWER_MENU:Ljava/lang/String; = "lockdown_in_power_menu"

.field private static final LOCKDOWN_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final LOCK_BIOMETRIC_WEAK_FLAGS:Ljava/lang/String; = "lock_biometric_weak_flags"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_ALLOW_PRIVATE_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_allow_private_notifications"

.field public static final LOCK_SCREEN_ALLOW_REMOTE_INPUT:Ljava/lang/String; = "lock_screen_allow_remote_input"

.field public static final LOCK_SCREEN_APPWIDGET_IDS:Ljava/lang/String; = "lock_screen_appwidget_ids"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_FALLBACK_APPWIDGET_ID:Ljava/lang/String; = "lock_screen_fallback_appwidget_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_screen_lock_after_timeout"

.field public static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_SHOW_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_show_notifications"

.field public static final LOCK_SCREEN_STICKY_APPWIDGET:Ljava/lang/String; = "lock_screen_sticky_appwidget"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_TO_APP_EXIT_LOCKED:Ljava/lang/String; = "lock_to_app_exit_locked"

.field public static final LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LONG_PRESS_TIMEOUT:Ljava/lang/String; = "long_press_timeout"

.field private static final LONG_PRESS_TIMEOUT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final LOW_POWER_MANUAL_ACTIVATION_COUNT:Ljava/lang/String; = "low_power_manual_activation_count"

.field public static final LOW_POWER_WARNING_ACKNOWLEDGED:Ljava/lang/String; = "low_power_warning_acknowledged"

.field public static final MANAGED_PROFILE_CONTACT_REMOTE_SEARCH:Ljava/lang/String; = "managed_profile_contact_remote_search"

.field public static final MANUAL_RINGER_TOGGLE_COUNT:Ljava/lang/String; = "manual_ringer_toggle_count"

.field private static final MANUAL_RINGER_TOGGLE_COUNT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final MOUNT_PLAY_NOTIFICATION_SND:Ljava/lang/String; = "mount_play_not_snd"

.field private static final MOUNT_PLAY_NOTIFICATION_SND_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final MOUNT_UMS_AUTOSTART:Ljava/lang/String; = "mount_ums_autostart"

.field private static final MOUNT_UMS_AUTOSTART_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final MOUNT_UMS_NOTIFY_ENABLED:Ljava/lang/String; = "mount_ums_notify_enabled"

.field private static final MOUNT_UMS_NOTIFY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final MOUNT_UMS_PROMPT:Ljava/lang/String; = "mount_ums_prompt"

.field private static final MOUNT_UMS_PROMPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field private static final MOVED_TO_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MULTI_PRESS_TIMEOUT:Ljava/lang/String; = "multi_press_timeout"

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NFC_PAYMENT_DEFAULT_COMPONENT:Ljava/lang/String; = "nfc_payment_default_component"

.field private static final NFC_PAYMENT_DEFAULT_COMPONENT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NFC_PAYMENT_FOREGROUND:Ljava/lang/String; = "nfc_payment_foreground"

.field public static final NIGHT_DISPLAY_ACTIVATED:Ljava/lang/String; = "night_display_activated"

.field public static final NIGHT_DISPLAY_AUTO_MODE:Ljava/lang/String; = "night_display_auto_mode"

.field private static final NIGHT_DISPLAY_AUTO_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NIGHT_DISPLAY_COLOR_TEMPERATURE:Ljava/lang/String; = "night_display_color_temperature"

.field private static final NIGHT_DISPLAY_COLOR_TEMPERATURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NIGHT_DISPLAY_CUSTOM_END_TIME:Ljava/lang/String; = "night_display_custom_end_time"

.field private static final NIGHT_DISPLAY_CUSTOM_END_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NIGHT_DISPLAY_CUSTOM_START_TIME:Ljava/lang/String; = "night_display_custom_start_time"

.field private static final NIGHT_DISPLAY_CUSTOM_START_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NIGHT_DISPLAY_LAST_ACTIVATED_TIME:Ljava/lang/String; = "night_display_last_activated_time"

.field public static final NOTIFICATION_BADGING:Ljava/lang/String; = "notification_badging"

.field private static final NOTIFICATION_BADGING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NUM_ROTATION_SUGGESTIONS_ACCEPTED:Ljava/lang/String; = "num_rotation_suggestions_accepted"

.field public static final OP_APPLOCKER_HINT_CONFIRMED:Ljava/lang/String; = "op_applocker_hint_confirmed"

.field public static final OP_QUICKPAY_DEFAULT_WAY:Ljava/lang/String; = "op_quickpay_default_way"

.field public static final OP_QUICKPAY_ENABLE:Ljava/lang/String; = "op_quickpay_enable"

.field public static final PACKAGES_TO_CLEAR_DATA_BEFORE_FULL_RESTORE:Ljava/lang/String; = "packages_to_clear_data_before_full_restore"

.field public static final PACKAGE_VERIFIER_STATE:Ljava/lang/String; = "package_verifier_state"

.field public static final PACKAGE_VERIFIER_USER_CONSENT:Ljava/lang/String; = "package_verifier_user_consent"

.field public static final PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"

.field public static final PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"

.field public static final PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"

.field public static final PAYMENT_SERVICE_SEARCH_URI:Ljava/lang/String; = "payment_service_search_uri"

.field public static final PREFERRED_TTY_MODE:Ljava/lang/String; = "preferred_tty_mode"

.field private static final PREFERRED_TTY_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final PRINT_SERVICE_SEARCH_URI:Ljava/lang/String; = "print_service_search_uri"

.field public static final QS_AUTO_ADDED_TILES:Ljava/lang/String; = "qs_auto_tiles"

.field private static final QS_AUTO_ADDED_TILES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final QS_TILES:Ljava/lang/String; = "sysui_qs_tiles"

.field private static final QS_TILES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final RTT_CALLING_MODE:Ljava/lang/String; = "rtt_calling_mode"

.field private static final RTT_CALLING_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SCREENSAVER_ACTIVATE_ON_DOCK:Ljava/lang/String; = "screensaver_activate_on_dock"

.field private static final SCREENSAVER_ACTIVATE_ON_DOCK_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SCREENSAVER_ACTIVATE_ON_SLEEP:Ljava/lang/String; = "screensaver_activate_on_sleep"

.field private static final SCREENSAVER_ACTIVATE_ON_SLEEP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SCREENSAVER_COMPONENTS:Ljava/lang/String; = "screensaver_components"

.field private static final SCREENSAVER_COMPONENTS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SCREENSAVER_DEFAULT_COMPONENT:Ljava/lang/String; = "screensaver_default_component"

.field public static final SCREENSAVER_ENABLED:Ljava/lang/String; = "screensaver_enabled"

.field private static final SCREENSAVER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SEARCH_GLOBAL_SEARCH_ACTIVITY:Ljava/lang/String; = "search_global_search_activity"

.field public static final SEARCH_MAX_RESULTS_PER_SOURCE:Ljava/lang/String; = "search_max_results_per_source"

.field public static final SEARCH_MAX_RESULTS_TO_DISPLAY:Ljava/lang/String; = "search_max_results_to_display"

.field public static final SEARCH_MAX_SHORTCUTS_RETURNED:Ljava/lang/String; = "search_max_shortcuts_returned"

.field public static final SEARCH_MAX_SOURCE_EVENT_AGE_MILLIS:Ljava/lang/String; = "search_max_source_event_age_millis"

.field public static final SEARCH_MAX_STAT_AGE_MILLIS:Ljava/lang/String; = "search_max_stat_age_millis"

.field public static final SEARCH_MIN_CLICKS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_clicks_for_source_ranking"

.field public static final SEARCH_MIN_IMPRESSIONS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_impressions_for_source_ranking"

.field public static final SEARCH_NUM_PROMOTED_SOURCES:Ljava/lang/String; = "search_num_promoted_sources"

.field public static final SEARCH_PER_SOURCE_CONCURRENT_QUERY_LIMIT:Ljava/lang/String; = "search_per_source_concurrent_query_limit"

.field public static final SEARCH_PREFILL_MILLIS:Ljava/lang/String; = "search_prefill_millis"

.field public static final SEARCH_PROMOTED_SOURCE_DEADLINE_MILLIS:Ljava/lang/String; = "search_promoted_source_deadline_millis"

.field public static final SEARCH_QUERY_THREAD_CORE_POOL_SIZE:Ljava/lang/String; = "search_query_thread_core_pool_size"

.field public static final SEARCH_QUERY_THREAD_MAX_POOL_SIZE:Ljava/lang/String; = "search_query_thread_max_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_CORE_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_core_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_MAX_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_max_pool_size"

.field public static final SEARCH_SOURCE_TIMEOUT_MILLIS:Ljava/lang/String; = "search_source_timeout_millis"

.field public static final SEARCH_THREAD_KEEPALIVE_SECONDS:Ljava/lang/String; = "search_thread_keepalive_seconds"

.field public static final SEARCH_WEB_RESULTS_OVERRIDE_LIMIT:Ljava/lang/String; = "search_web_results_override_limit"

.field public static final SELECTED_INPUT_METHOD_SUBTYPE:Ljava/lang/String; = "selected_input_method_subtype"

.field public static final SELECTED_SPELL_CHECKER:Ljava/lang/String; = "selected_spell_checker"

.field public static final SELECTED_SPELL_CHECKER_SUBTYPE:Ljava/lang/String; = "selected_spell_checker_subtype"

.field private static final SELECTED_SPELL_CHECKER_SUBTYPE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field private static final SELECTED_SPELL_CHECKER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field public static final SHOW_FIRST_CRASH_DIALOG_DEV_OPTION:Ljava/lang/String; = "show_first_crash_dialog_dev_option"

.field private static final SHOW_FIRST_CRASH_DIALOG_DEV_OPTION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SHOW_IME_WITH_HARD_KEYBOARD:Ljava/lang/String; = "show_ime_with_hard_keyboard"

.field private static final SHOW_IME_WITH_HARD_KEYBOARD_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SHOW_MODE_AUTO:I = 0x0

.field public static final SHOW_MODE_HIDDEN:I = 0x1

.field public static final SHOW_NOTE_ABOUT_NOTIFICATION_HIDING:Ljava/lang/String; = "show_note_about_notification_hiding"

.field public static final SHOW_ROTATION_SUGGESTIONS:Ljava/lang/String; = "show_rotation_suggestions"

.field public static final SHOW_ROTATION_SUGGESTIONS_DEFAULT:I = 0x1

.field public static final SHOW_ROTATION_SUGGESTIONS_DISABLED:I = 0x0

.field public static final SHOW_ROTATION_SUGGESTIONS_ENABLED:I = 0x1

.field public static final SKIP_FIRST_USE_HINTS:Ljava/lang/String; = "skip_first_use_hints"

.field public static final SLEEP_TIMEOUT:Ljava/lang/String; = "sleep_timeout"

.field private static final SLEEP_TIMEOUT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SMS_DEFAULT_APPLICATION:Ljava/lang/String; = "sms_default_application"

.field public static final SPELL_CHECKER_ENABLED:Ljava/lang/String; = "spell_checker_enabled"

.field private static final SPELL_CHECKER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SUPPRESS_AUTO_BATTERY_SAVER_SUGGESTION:Ljava/lang/String; = "suppress_auto_battery_saver_suggestion"

.field public static final SWIPE_UP_TO_SWITCH_APPS_ENABLED:Ljava/lang/String; = "swipe_up_to_switch_apps_enabled"

.field private static final SWIPE_UP_TO_SWITCH_APPS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SYNC_PARENT_SOUNDS:Ljava/lang/String; = "sync_parent_sounds"

.field private static final SYNC_PARENT_SOUNDS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SYSTEM_NAVIGATION_KEYS_ENABLED:Ljava/lang/String; = "system_navigation_keys_enabled"

.field private static final SYSTEM_NAVIGATION_KEYS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final THEME_MODE:Ljava/lang/String; = "theme_mode"

.field public static final THEME_MODE_DARK:I = 0x2

.field public static final THEME_MODE_LIGHT:I = 0x1

.field public static final THEME_MODE_WALLPAPER:I = 0x0

.field public static final TOUCH_EXPLORATION_ENABLED:Ljava/lang/String; = "touch_exploration_enabled"

.field private static final TOUCH_EXPLORATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "touch_exploration_granted_accessibility_services"

.field private static final TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TRUST_AGENTS_INITIALIZED:Ljava/lang/String; = "trust_agents_initialized"

.field public static final TTS_DEFAULT_COUNTRY:Ljava/lang/String; = "tts_default_country"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_DEFAULT_LANG:Ljava/lang/String; = "tts_default_lang"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_DEFAULT_LOCALE:Ljava/lang/String; = "tts_default_locale"

.field private static final TTS_DEFAULT_LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TTS_DEFAULT_PITCH:Ljava/lang/String; = "tts_default_pitch"

.field private static final TTS_DEFAULT_PITCH_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TTS_DEFAULT_RATE:Ljava/lang/String; = "tts_default_rate"

.field private static final TTS_DEFAULT_RATE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TTS_DEFAULT_SYNTH:Ljava/lang/String; = "tts_default_synth"

.field private static final TTS_DEFAULT_SYNTH_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TTS_DEFAULT_VARIANT:Ljava/lang/String; = "tts_default_variant"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_ENABLED_PLUGINS:Ljava/lang/String; = "tts_enabled_plugins"

.field private static final TTS_ENABLED_PLUGINS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TTS_USE_DEFAULTS:Ljava/lang/String; = "tts_use_defaults"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTY_MODE_ENABLED:Ljava/lang/String; = "tty_mode_enabled"

.field private static final TTY_MODE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TV_INPUT_CUSTOM_LABELS:Ljava/lang/String; = "tv_input_custom_labels"

.field public static final TV_INPUT_HIDDEN_INPUTS:Ljava/lang/String; = "tv_input_hidden_inputs"

.field public static final TV_USER_SETUP_COMPLETE:Ljava/lang/String; = "tv_user_setup_complete"

.field public static final UI_NIGHT_MODE:Ljava/lang/String; = "ui_night_mode"

.field public static final UNKNOWN_SOURCES_DEFAULT_REVERSED:Ljava/lang/String; = "unknown_sources_default_reversed"

.field public static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS:Ljava/lang/String; = "unsafe_volume_music_active_ms"

.field public static final USB_AUDIO_AUTOMATIC_ROUTING_DISABLED:Ljava/lang/String; = "usb_audio_automatic_routing_disabled"

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final USB_MASS_STORAGE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field public static final USER_SETUP_PERSONALIZATION_STATE:Ljava/lang/String; = "user_setup_personalization_state"

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VALIDATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/provider/SettingsValidators$Validator;",
            ">;"
        }
    .end annotation
.end field

.field public static final VOICE_INTERACTION_SERVICE:Ljava/lang/String; = "voice_interaction_service"

.field public static final VOICE_RECOGNITION_SERVICE:Ljava/lang/String; = "voice_recognition_service"

.field public static final VOLUME_HUSH_GESTURE:Ljava/lang/String; = "volume_hush_gesture"

.field private static final VOLUME_HUSH_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final VOLUME_HUSH_MUTE:I = 0x2

.field public static final VOLUME_HUSH_OFF:I = 0x0

.field public static final VOLUME_HUSH_VIBRATE:I = 0x1

.field public static final VR_DISPLAY_MODE:Ljava/lang/String; = "vr_display_mode"

.field public static final VR_DISPLAY_MODE_LOW_PERSISTENCE:I = 0x0

.field public static final VR_DISPLAY_MODE_OFF:I = 0x1

.field private static final VR_DISPLAY_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WAKE_GESTURE_ENABLED:Ljava/lang/String; = "wake_gesture_enabled"

.field private static final WAKE_GESTURE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_DISCONNECT_DELAY_DURATION:Ljava/lang/String; = "wifi_disconnect_delay_duration"

.field private static final WIFI_DISCONNECT_DELAY_DURATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_IDLE_MS:Ljava/lang/String; = "wifi_idle_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_NUM_OPEN_NETWORKS_KEPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_ON:Ljava/lang/String; = "wifi_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_WATCH_LIST:Ljava/lang/String; = "wifi_watchdog_watch_list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sIsSystemProcess:Z

.field private static sLockSettings:Lcom/android/internal/widget/ILockSettings;

.field private static final sNameValueCache:Landroid/provider/Settings$NameValueCache;

.field private static final sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 95

    .line 5383
    const-string v0, "content://settings/secure"

    .line 5384
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 5386
    new-instance v0, Landroid/provider/Settings$ContentProviderHolder;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroid/provider/Settings$ContentProviderHolder;-><init>(Landroid/net/Uri;)V

    sput-object v0, Landroid/provider/Settings$Secure;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 5390
    new-instance v0, Landroid/provider/Settings$NameValueCache;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "GET_secure"

    const-string v3, "PUT_secure"

    sget-object v4, Landroid/provider/Settings$Secure;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;)V

    sput-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 5396
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    .line 5402
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    .line 5403
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_autolock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5404
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_visible_pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5405
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5407
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    .line 5408
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "adb_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5409
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "assisted_gps_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5410
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "bluetooth_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5411
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "bugreport_in_power_menu"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5412
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "cdma_cell_broadcast_sms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5413
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "roaming_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5414
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "subscription_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5415
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_activity_timeout_mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5416
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_activity_timeout_wifi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5417
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_roaming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5418
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "development_settings_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5419
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "device_provisioned"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5420
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "display_size_forced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5421
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "download_manager_max_bytes_over_mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5422
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "download_manager_recommended_max_bytes_over_mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5423
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "mobile_data"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5424
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_bucket_duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5425
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_delete_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5426
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_persist_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5427
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_rotate_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5428
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5429
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_global_alert_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5430
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_poll_interval"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5431
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_sample_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5432
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_time_cache_max_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5433
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_bucket_duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5434
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_delete_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5435
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_persist_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5436
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_rotate_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5437
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_bucket_duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5438
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_delete_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5439
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_persist_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5440
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_rotate_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5441
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "network_preference"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5442
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "nitz_update_diff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5443
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "nitz_update_spacing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5444
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "ntp_server"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5445
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "ntp_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5446
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_error_poll_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5447
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_long_poll_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5448
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_max_pdp_reset_fail_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5449
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_poll_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5450
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_trigger_packet_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5451
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "setup_prepaid_data_service_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5452
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "setup_prepaid_detection_redir_host"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5453
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "setup_prepaid_detection_target_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5454
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tether_dun_apn"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5455
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tether_dun_required"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5456
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tether_supported"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5457
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "usb_mass_storage_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5458
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "use_google_mail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5459
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_country_code"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5460
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_framework_scan_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5461
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_frequency_band"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5462
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_idle_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5463
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5464
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_mobile_data_transition_wakelock_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5465
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5466
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5467
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_num_open_networks_kept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5468
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5469
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_p2p_device_name"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5470
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_saved_state"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5471
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_supplicant_scan_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5472
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_suspend_optimizations_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5473
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_coverage_extend_feature_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5474
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_verbose_logging_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5475
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_enhanced_auto_join"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5476
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_network_show_rssi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5477
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5478
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_poor_network_test_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5479
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wimax_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5480
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "package_verifier_enable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5481
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "verifier_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5482
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "verifier_default_response"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5483
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_stall_alarm_non_aggressive_delay_in_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5484
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_stall_alarm_aggressive_delay_in_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5485
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "gprs_register_check_period_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5486
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wtf_is_fatal"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5487
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "battery_discharge_duration_threshold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5488
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "battery_discharge_threshold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5489
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "send_action_app_error"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5490
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_age_seconds"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5491
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_max_files"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5492
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_quota_kb"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5493
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_quota_percent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5494
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_reserve_percent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5495
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox:"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5496
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "logcat_for_"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5497
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_free_storage_log_interval"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5498
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "disk_free_change_reporting_threshold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5499
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_storage_threshold_percentage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5500
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_storage_threshold_max_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5501
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_storage_full_threshold_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5502
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sync_max_retry_delay_in_seconds"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5503
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "connectivity_change_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5504
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "captive_portal_detection_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5505
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "captive_portal_server"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5506
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "nsd_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5507
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "set_install_location"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5508
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "default_install_location"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5509
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "inet_condition_debounce_up_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5510
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "inet_condition_debounce_down_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5511
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "read_external_storage_enforced_default"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5512
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5513
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "global_http_proxy_host"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5514
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "global_http_proxy_port"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5515
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "global_http_proxy_exclusion_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5516
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "set_global_http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5517
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "default_dns_server"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5518
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "preferred_network_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5519
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "webview_data_reduction_proxy_key"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6026
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->BUGREPORT_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6045
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ALLOW_MOCK_LOCATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6092
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->BLUETOOTH_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6141
    sget-object v0, Landroid/provider/SettingsValidators;->NULLABLE_COMPONENT_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->AUTOFILL_SERVICE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6271
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SHOW_IME_WITH_HARD_KEYBOARD_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6381
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->WIFI_DISCONNECT_DELAY_DURATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6597
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->USB_MASS_STORAGE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6610
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6619
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6628
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_ON_LOCK_SCREEN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6638
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_DIALOG_SHOWN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6649
    sget-object v0, Landroid/provider/SettingsValidators;->NULLABLE_COMPONENT_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_TARGET_SERVICE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6662
    new-instance v0, Landroid/provider/Settings$Secure$1;

    invoke-direct {v0}, Landroid/provider/Settings$Secure$1;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_BUTTON_TARGET_COMPONENT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6677
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->TOUCH_EXPLORATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6685
    new-instance v0, Landroid/provider/SettingsValidators$ComponentNameListValidator;

    const-string v1, ":"

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$ComponentNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ENABLED_ACCESSIBILITY_SERVICES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6697
    new-instance v0, Landroid/provider/SettingsValidators$ComponentNameListValidator;

    const-string v1, ":"

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$ComponentNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6706
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->HUSH_GESTURE_USED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6714
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->MANUAL_RINGER_TOGGLE_COUNT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6735
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SPEAK_PASSWORD_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6745
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6760
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6774
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_MAGNIFICATION_NAVBAR_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6790
    new-instance v0, Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {v0, v1, v2}, Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;-><init>(FF)V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6845
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6858
    sget-object v0, Landroid/provider/SettingsValidators;->LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6874
    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v2, "-1"

    const-string v3, "0"

    const-string v4, "1"

    const-string v5, "2"

    const-string v6, "3"

    const-string v7, "4"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_PRESET_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6888
    sget-object v0, Landroid/provider/SettingsValidators;->ANY_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6901
    sget-object v0, Landroid/provider/SettingsValidators;->ANY_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6918
    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v2, "0"

    const-string v3, "1"

    const-string v4, "2"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_EDGE_TYPE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6932
    sget-object v0, Landroid/provider/SettingsValidators;->ANY_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_EDGE_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6945
    sget-object v0, Landroid/provider/SettingsValidators;->ANY_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_WINDOW_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6963
    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v2, "DEFAULT"

    const-string v3, "MONOSPACE"

    const-string v4, "SANS_SERIF"

    const-string v5, "SERIF"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_TYPEFACE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6975
    new-instance v0, Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v2, v3}, Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;-><init>(FF)V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_FONT_SCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6984
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_INVERSION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 6996
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7014
    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v2, "-1"

    const-string v3, "0"

    const-string v4, "11"

    const-string v5, "12"

    const-string v6, "13"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_DALTONIZER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7027
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_AUTOCLICK_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7040
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_AUTOCLICK_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7052
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_LARGE_POINTER_ICON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7061
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->LONG_PRESS_TIMEOUT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7117
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->TTS_DEFAULT_RATE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7124
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->TTS_DEFAULT_PITCH_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7131
    sget-object v0, Landroid/provider/SettingsValidators;->PACKAGE_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->TTS_DEFAULT_SYNTH_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7180
    new-instance v0, Landroid/provider/Settings$Secure$2;

    invoke-direct {v0}, Landroid/provider/Settings$Secure$2;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->TTS_DEFAULT_LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7204
    new-instance v0, Landroid/provider/SettingsValidators$PackageNameListValidator;

    const-string v2, " "

    invoke-direct {v0, v2}, Landroid/provider/SettingsValidators$PackageNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->TTS_ENABLED_PLUGINS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7215
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7226
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7237
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->WIFI_NUM_OPEN_NETWORKS_KEPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7398
    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v2, "0"

    const-string v3, "1"

    const-string v4, "2"

    const-string v5, "3"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->PREFERRED_TTY_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7409
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ENHANCED_VOICE_PRIVACY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7419
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->TTY_MODE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7429
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->RTT_CALLING_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7602
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->MOUNT_PLAY_NOTIFICATION_SND_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7610
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->MOUNT_UMS_AUTOSTART_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7618
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->MOUNT_UMS_PROMPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7626
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->MOUNT_UMS_NOTIFY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7645
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SHOW_FIRST_CRASH_DIALOG_DEV_OPTION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7673
    sget-object v0, Landroid/provider/SettingsValidators;->COMPONENT_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SELECTED_SPELL_CHECKER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7684
    sget-object v0, Landroid/provider/SettingsValidators;->COMPONENT_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SELECTED_SPELL_CHECKER_SUBTYPE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7694
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SPELL_CHECKER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7707
    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v2, "1"

    const-string v3, "2"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->INCALL_POWER_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7765
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->WAKE_GESTURE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7773
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->DOZE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7787
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->DOZE_PULSE_ON_PICK_UP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7801
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->DOZE_PULSE_ON_DOUBLE_TAP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7846
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SCREENSAVER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7857
    new-instance v0, Landroid/provider/SettingsValidators$ComponentNameListValidator;

    const-string v2, ","

    invoke-direct {v0, v2}, Landroid/provider/SettingsValidators$ComponentNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->SCREENSAVER_COMPONENTS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7867
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SCREENSAVER_ACTIVATE_ON_DOCK_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7876
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SCREENSAVER_ACTIVATE_ON_SLEEP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7890
    sget-object v0, Landroid/provider/SettingsValidators;->COMPONENT_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->NFC_PAYMENT_DEFAULT_COMPONENT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 7998
    new-instance v0, Landroid/provider/SettingsValidators$ComponentNameListValidator;

    const-string v2, ":"

    invoke-direct {v0, v2}, Landroid/provider/SettingsValidators$ComponentNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ENABLED_NOTIFICATION_ASSISTANT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8012
    new-instance v0, Landroid/provider/SettingsValidators$ComponentNameListValidator;

    const-string v2, ":"

    invoke-direct {v0, v2}, Landroid/provider/SettingsValidators$ComponentNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ENABLED_NOTIFICATION_LISTENERS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8027
    new-instance v0, Landroid/provider/SettingsValidators$PackageNameListValidator;

    const-string v2, ":"

    invoke-direct {v0, v2}, Landroid/provider/SettingsValidators$PackageNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ENABLED_NOTIFICATION_POLICY_ACCESS_PACKAGES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8043
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SYNC_PARENT_SOUNDS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8131
    new-instance v0, Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;

    const/4 v2, -0x1

    const v3, 0x7fffffff

    invoke-direct {v0, v2, v3}, Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Landroid/provider/Settings$Secure;->SLEEP_TIMEOUT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8140
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->DOUBLE_TAP_TO_WAKE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8158
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->CAMERA_GESTURE_DISABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8169
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->CAMERA_DOUBLE_TAP_POWER_GESTURE_DISABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8181
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->CAMERA_DOUBLE_TWIST_TO_FLIP_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8192
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SWIPE_UP_TO_SWITCH_APPS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8217
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8227
    new-instance v0, Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;-><init>(FF)V

    sput-object v0, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_SENSITIVITY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8238
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_SILENCE_ALERTS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8249
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_WAKE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8259
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_SETUP_COMPLETE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8273
    new-instance v0, Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_AUTO_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8283
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_COLOR_TEMPERATURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8294
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_CUSTOM_START_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8304
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_CUSTOM_END_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8324
    new-instance v0, Landroid/provider/SettingsValidators$ComponentNameListValidator;

    const-string v1, ":"

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$ComponentNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ENABLED_VR_LISTENERS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8336
    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v1, "0"

    const-string v2, "1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->VR_DISPLAY_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8423
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8467
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SYSTEM_NAVIGATION_KEYS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8475
    new-instance v0, Landroid/provider/Settings$Secure$3;

    invoke-direct {v0}, Landroid/provider/Settings$Secure$3;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->QS_TILES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8526
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->NOTIFICATION_BADGING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8534
    new-instance v0, Landroid/provider/Settings$Secure$4;

    invoke-direct {v0}, Landroid/provider/Settings$Secure$4;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->QS_AUTO_ADDED_TILES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8556
    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->LOCKDOWN_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8622
    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->VOLUME_HUSH_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    .line 8666
    const-string v1, "bugreport_in_power_menu"

    const-string/jumbo v2, "mock_location"

    const-string/jumbo v3, "usb_mass_storage_enabled"

    const-string v4, "accessibility_display_inversion_enabled"

    const-string v5, "accessibility_display_daltonizer"

    const-string v6, "accessibility_display_daltonizer_enabled"

    const-string v7, "accessibility_display_magnification_enabled"

    const-string v8, "accessibility_display_magnification_navbar_enabled"

    const-string v9, "autofill_service"

    const-string v10, "accessibility_display_magnification_scale"

    const-string v11, "enabled_accessibility_services"

    const-string v12, "enabled_vr_listeners"

    const-string/jumbo v13, "touch_exploration_granted_accessibility_services"

    const-string/jumbo v14, "touch_exploration_enabled"

    const-string v15, "accessibility_enabled"

    const-string v16, "accessibility_shortcut_target_service"

    const-string v17, "accessibility_button_target_component"

    const-string v18, "accessibility_shortcut_dialog_shown"

    const-string v19, "accessibility_shortcut_enabled"

    const-string v20, "accessibility_shortcut_on_lock_screen"

    const-string/jumbo v21, "speak_password"

    const-string v22, "high_text_contrast_enabled"

    const-string v23, "accessibility_captioning_preset"

    const-string v24, "accessibility_captioning_enabled"

    const-string v25, "accessibility_captioning_locale"

    const-string v26, "accessibility_captioning_background_color"

    const-string v27, "accessibility_captioning_foreground_color"

    const-string v28, "accessibility_captioning_edge_type"

    const-string v29, "accessibility_captioning_edge_color"

    const-string v30, "accessibility_captioning_typeface"

    const-string v31, "accessibility_captioning_font_scale"

    const-string v32, "accessibility_captioning_window_color"

    const-string/jumbo v33, "tts_default_rate"

    const-string/jumbo v34, "tts_default_pitch"

    const-string/jumbo v35, "tts_default_synth"

    const-string/jumbo v36, "tts_enabled_plugins"

    const-string/jumbo v37, "tts_default_locale"

    const-string/jumbo v38, "show_ime_with_hard_keyboard"

    const-string/jumbo v39, "wifi_networks_available_notification_on"

    const-string/jumbo v40, "wifi_networks_available_repeat_delay"

    const-string/jumbo v41, "wifi_num_open_networks_kept"

    const-string/jumbo v42, "selected_spell_checker"

    const-string/jumbo v43, "selected_spell_checker_subtype"

    const-string/jumbo v44, "spell_checker_enabled"

    const-string/jumbo v45, "mount_play_not_snd"

    const-string/jumbo v46, "mount_ums_autostart"

    const-string/jumbo v47, "mount_ums_prompt"

    const-string/jumbo v48, "mount_ums_notify_enabled"

    const-string/jumbo v49, "sleep_timeout"

    const-string v50, "double_tap_to_wake"

    const-string/jumbo v51, "wake_gesture_enabled"

    const-string/jumbo v52, "long_press_timeout"

    const-string v53, "camera_gesture_disabled"

    const-string v54, "accessibility_autoclick_enabled"

    const-string v55, "accessibility_autoclick_delay"

    const-string v56, "accessibility_large_pointer_icon"

    const-string/jumbo v57, "preferred_tty_mode"

    const-string v58, "enhanced_voice_privacy_enabled"

    const-string/jumbo v59, "tty_mode_enabled"

    const-string/jumbo v60, "rtt_calling_mode"

    const-string v61, "incall_power_button_behavior"

    const-string/jumbo v62, "night_display_custom_start_time"

    const-string/jumbo v63, "night_display_custom_end_time"

    const-string/jumbo v64, "night_display_color_temperature"

    const-string/jumbo v65, "night_display_auto_mode"

    const-string/jumbo v66, "sync_parent_sounds"

    const-string v67, "camera_double_twist_to_flip_enabled"

    const-string/jumbo v68, "swipe_up_to_switch_apps_enabled"

    const-string v69, "camera_double_tap_power_gesture_disabled"

    const-string/jumbo v70, "system_navigation_keys_enabled"

    const-string/jumbo v71, "sysui_qs_tiles"

    const-string v72, "doze_enabled"

    const-string v73, "doze_pulse_on_pick_up"

    const-string v74, "doze_pulse_on_double_tap"

    const-string/jumbo v75, "nfc_payment_default_component"

    const-string v76, "automatic_storage_manager_days_to_retain"

    const-string v77, "assist_gesture_enabled"

    const-string v78, "assist_gesture_sensitivity"

    const-string v79, "assist_gesture_setup_complete"

    const-string v80, "assist_gesture_silence_alerts_enabled"

    const-string v81, "assist_gesture_wake_enabled"

    const-string/jumbo v82, "vr_display_mode"

    const-string/jumbo v83, "notification_badging"

    const-string/jumbo v84, "qs_auto_tiles"

    const-string/jumbo v85, "screensaver_enabled"

    const-string/jumbo v86, "screensaver_components"

    const-string/jumbo v87, "screensaver_activate_on_dock"

    const-string/jumbo v88, "screensaver_activate_on_sleep"

    const-string/jumbo v89, "lockdown_in_power_menu"

    const-string/jumbo v90, "show_first_crash_dialog_dev_option"

    const-string/jumbo v91, "volume_hush_gesture"

    const-string/jumbo v92, "manual_ringer_toggle_count"

    const-string v93, "hush_gesture_used"

    const-string/jumbo v94, "wifi_disconnect_delay_duration"

    filled-new-array/range {v1 .. v94}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 8769
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    .line 8771
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "bugreport_in_power_menu"

    sget-object v2, Landroid/provider/Settings$Secure;->BUGREPORT_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8772
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "mock_location"

    sget-object v2, Landroid/provider/Settings$Secure;->ALLOW_MOCK_LOCATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8773
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "usb_mass_storage_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->USB_MASS_STORAGE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8774
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_display_inversion_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_INVERSION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8776
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_display_daltonizer"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_DALTONIZER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8778
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_display_daltonizer_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8780
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_display_magnification_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8782
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_MAGNIFICATION_NAVBAR_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8784
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "autofill_service"

    sget-object v2, Landroid/provider/Settings$Secure;->AUTOFILL_SERVICE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8785
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_display_magnification_scale"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8787
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "enabled_accessibility_services"

    sget-object v2, Landroid/provider/Settings$Secure;->ENABLED_ACCESSIBILITY_SERVICES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8789
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "enabled_vr_listeners"

    sget-object v2, Landroid/provider/Settings$Secure;->ENABLED_VR_LISTENERS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8790
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "touch_exploration_granted_accessibility_services"

    sget-object v2, Landroid/provider/Settings$Secure;->TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8792
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "touch_exploration_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->TOUCH_EXPLORATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8793
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8794
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_shortcut_target_service"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_TARGET_SERVICE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8796
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_button_target_component"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_BUTTON_TARGET_COMPONENT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8798
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_shortcut_dialog_shown"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_DIALOG_SHOWN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8800
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_shortcut_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8802
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_shortcut_on_lock_screen"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_ON_LOCK_SCREEN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8804
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "speak_password"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SPEAK_PASSWORD_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8805
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "high_text_contrast_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8807
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_preset"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_PRESET_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8809
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8811
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_locale"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8813
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_background_color"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8815
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_foreground_color"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8817
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_edge_type"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_EDGE_TYPE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8819
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_edge_color"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_EDGE_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8821
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_typeface"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_TYPEFACE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8823
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_font_scale"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_FONT_SCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8825
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_captioning_window_color"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_WINDOW_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8827
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "tts_default_rate"

    sget-object v2, Landroid/provider/Settings$Secure;->TTS_DEFAULT_RATE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8828
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "tts_default_pitch"

    sget-object v2, Landroid/provider/Settings$Secure;->TTS_DEFAULT_PITCH_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8829
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "tts_default_synth"

    sget-object v2, Landroid/provider/Settings$Secure;->TTS_DEFAULT_SYNTH_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8830
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "tts_enabled_plugins"

    sget-object v2, Landroid/provider/Settings$Secure;->TTS_ENABLED_PLUGINS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8831
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "tts_default_locale"

    sget-object v2, Landroid/provider/Settings$Secure;->TTS_DEFAULT_LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8832
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    sget-object v2, Landroid/provider/Settings$Secure;->SHOW_IME_WITH_HARD_KEYBOARD_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8833
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wifi_networks_available_notification_on"

    sget-object v2, Landroid/provider/Settings$Secure;->WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8835
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    sget-object v2, Landroid/provider/Settings$Secure;->WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8837
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wifi_num_open_networks_kept"

    sget-object v2, Landroid/provider/Settings$Secure;->WIFI_NUM_OPEN_NETWORKS_KEPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8838
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "selected_spell_checker"

    sget-object v2, Landroid/provider/Settings$Secure;->SELECTED_SPELL_CHECKER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8839
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "selected_spell_checker_subtype"

    sget-object v2, Landroid/provider/Settings$Secure;->SELECTED_SPELL_CHECKER_SUBTYPE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8841
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "spell_checker_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->SPELL_CHECKER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8842
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "mount_play_not_snd"

    sget-object v2, Landroid/provider/Settings$Secure;->MOUNT_PLAY_NOTIFICATION_SND_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8843
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "mount_ums_autostart"

    sget-object v2, Landroid/provider/Settings$Secure;->MOUNT_UMS_AUTOSTART_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8844
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "mount_ums_prompt"

    sget-object v2, Landroid/provider/Settings$Secure;->MOUNT_UMS_PROMPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8845
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "mount_ums_notify_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->MOUNT_UMS_NOTIFY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8846
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "sleep_timeout"

    sget-object v2, Landroid/provider/Settings$Secure;->SLEEP_TIMEOUT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8847
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "double_tap_to_wake"

    sget-object v2, Landroid/provider/Settings$Secure;->DOUBLE_TAP_TO_WAKE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8848
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wake_gesture_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->WAKE_GESTURE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8849
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "long_press_timeout"

    sget-object v2, Landroid/provider/Settings$Secure;->LONG_PRESS_TIMEOUT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8850
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "camera_gesture_disabled"

    sget-object v2, Landroid/provider/Settings$Secure;->CAMERA_GESTURE_DISABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8851
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_autoclick_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_AUTOCLICK_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8853
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_autoclick_delay"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_AUTOCLICK_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8854
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accessibility_large_pointer_icon"

    sget-object v2, Landroid/provider/Settings$Secure;->ACCESSIBILITY_LARGE_POINTER_ICON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8856
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "preferred_tty_mode"

    sget-object v2, Landroid/provider/Settings$Secure;->PREFERRED_TTY_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8857
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "enhanced_voice_privacy_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ENHANCED_VOICE_PRIVACY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8859
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "tty_mode_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->TTY_MODE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8860
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "rtt_calling_mode"

    sget-object v2, Landroid/provider/Settings$Secure;->RTT_CALLING_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8861
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "incall_power_button_behavior"

    sget-object v2, Landroid/provider/Settings$Secure;->INCALL_POWER_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8862
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "night_display_custom_start_time"

    sget-object v2, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_CUSTOM_START_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8864
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "night_display_custom_end_time"

    sget-object v2, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_CUSTOM_END_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8865
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "night_display_color_temperature"

    sget-object v2, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_COLOR_TEMPERATURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8867
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "night_display_auto_mode"

    sget-object v2, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_AUTO_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8868
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "sync_parent_sounds"

    sget-object v2, Landroid/provider/Settings$Secure;->SYNC_PARENT_SOUNDS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8869
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "camera_double_twist_to_flip_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->CAMERA_DOUBLE_TWIST_TO_FLIP_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8871
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "swipe_up_to_switch_apps_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->SWIPE_UP_TO_SWITCH_APPS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8873
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "camera_double_tap_power_gesture_disabled"

    sget-object v2, Landroid/provider/Settings$Secure;->CAMERA_DOUBLE_TAP_POWER_GESTURE_DISABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8875
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "system_navigation_keys_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->SYSTEM_NAVIGATION_KEYS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8877
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "sysui_qs_tiles"

    sget-object v2, Landroid/provider/Settings$Secure;->QS_TILES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8878
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "doze_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->DOZE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8879
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "doze_pulse_on_pick_up"

    sget-object v2, Landroid/provider/Settings$Secure;->DOZE_PULSE_ON_PICK_UP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8880
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "doze_pulse_on_double_tap"

    sget-object v2, Landroid/provider/Settings$Secure;->DOZE_PULSE_ON_DOUBLE_TAP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8881
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "nfc_payment_default_component"

    sget-object v2, Landroid/provider/Settings$Secure;->NFC_PAYMENT_DEFAULT_COMPONENT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8882
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "automatic_storage_manager_days_to_retain"

    sget-object v2, Landroid/provider/Settings$Secure;->AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8884
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "assist_gesture_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8885
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "assist_gesture_sensitivity"

    sget-object v2, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_SENSITIVITY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8886
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "assist_gesture_setup_complete"

    sget-object v2, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_SETUP_COMPLETE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8887
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "assist_gesture_silence_alerts_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_SILENCE_ALERTS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8889
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "assist_gesture_wake_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_WAKE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8890
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "vr_display_mode"

    sget-object v2, Landroid/provider/Settings$Secure;->VR_DISPLAY_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8891
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "notification_badging"

    sget-object v2, Landroid/provider/Settings$Secure;->NOTIFICATION_BADGING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8892
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "qs_auto_tiles"

    sget-object v2, Landroid/provider/Settings$Secure;->QS_AUTO_ADDED_TILES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8893
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "screensaver_enabled"

    sget-object v2, Landroid/provider/Settings$Secure;->SCREENSAVER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8894
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "screensaver_components"

    sget-object v2, Landroid/provider/Settings$Secure;->SCREENSAVER_COMPONENTS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8895
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "screensaver_activate_on_dock"

    sget-object v2, Landroid/provider/Settings$Secure;->SCREENSAVER_ACTIVATE_ON_DOCK_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8896
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "screensaver_activate_on_sleep"

    sget-object v2, Landroid/provider/Settings$Secure;->SCREENSAVER_ACTIVATE_ON_SLEEP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8897
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "lockdown_in_power_menu"

    sget-object v2, Landroid/provider/Settings$Secure;->LOCKDOWN_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8898
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "show_first_crash_dialog_dev_option"

    sget-object v2, Landroid/provider/Settings$Secure;->SHOW_FIRST_CRASH_DIALOG_DEV_OPTION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8900
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "volume_hush_gesture"

    sget-object v2, Landroid/provider/Settings$Secure;->VOLUME_HUSH_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8901
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "enabled_notification_listeners"

    sget-object v2, Landroid/provider/Settings$Secure;->ENABLED_NOTIFICATION_LISTENERS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8903
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "enabled_notification_assistant"

    sget-object v2, Landroid/provider/Settings$Secure;->ENABLED_NOTIFICATION_ASSISTANT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8905
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "enabled_notification_policy_access_packages"

    sget-object v2, Landroid/provider/Settings$Secure;->ENABLED_NOTIFICATION_POLICY_ACCESS_PACKAGES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8907
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string v1, "hush_gesture_used"

    sget-object v2, Landroid/provider/Settings$Secure;->HUSH_GESTURE_USED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8908
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "manual_ringer_toggle_count"

    sget-object v2, Landroid/provider/Settings$Secure;->MANUAL_RINGER_TOGGLE_COUNT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8909
    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wifi_disconnect_delay_duration"

    sget-object v2, Landroid/provider/Settings$Secure;->WIFI_DISCONNECT_DELAY_DURATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8921
    const-string v0, "enabled_notification_listeners"

    const-string v1, "enabled_notification_assistant"

    const-string v2, "enabled_notification_policy_access_packages"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Secure;->LEGACY_RESTORE_SETTINGS:[Ljava/lang/String;

    .line 8931
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    .line 8934
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "accessibility_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8935
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "mock_location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8936
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "allowed_geolocation_origins"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8937
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "autofill_service"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8938
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "default_input_method"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8939
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "enabled_accessibility_services"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8940
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "enabled_input_methods"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8941
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "location_changer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8942
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "location_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8943
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "location_providers_allowed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8944
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "selected_input_method_subtype"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8946
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "selected_spell_checker"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8947
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "selected_spell_checker_subtype"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8960
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 8962
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "enabled_accessibility_services"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8963
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "speak_password"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8964
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_display_inversion_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8965
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8966
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_preset"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8967
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_edge_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8968
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_edge_color"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8969
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_locale"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8970
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_background_color"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8971
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_foreground_color"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8972
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_typeface"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8973
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_font_scale"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8974
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_window_color"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8975
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8976
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_display_daltonizer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8977
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_autoclick_delay"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8978
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_autoclick_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8979
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_large_pointer_icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8981
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "default_input_method"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8982
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "enabled_input_methods"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8984
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "android_id"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8986
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "package_verifier_user_consent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8987
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "mock_location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8988
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5376
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static clearProviderForTest()V
    .locals 1

    .line 5529
    sget-object v0, Landroid/provider/Settings$Secure;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0}, Landroid/provider/Settings$ContentProviderHolder;->clearProviderForTest()V

    .line 5530
    sget-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0}, Landroid/provider/Settings$NameValueCache;->clearGenerationTrackerForTest()V

    .line 5531
    return-void
.end method

.method public static getCloneToManagedProfileSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8953
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8954
    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 5969
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .line 5935
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F
    .param p3, "userHandle"    # I

    .line 5941
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5943
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5944
    :catch_0
    move-exception v1

    .line 5945
    .local v1, "e":Ljava/lang/NumberFormatException;
    return p2

    .line 5943
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 5975
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5976
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5980
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 5981
    :catch_0
    move-exception v1

    .line 5982
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5977
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 5792
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 5755
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 5798
    const-string/jumbo v0, "location_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5800
    invoke-static {p0, p2}, Landroid/provider/Settings$Secure;->getLocationModeForUser(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0

    .line 5802
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5804
    .local v0, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 5805
    :catch_0
    move-exception v1

    .line 5806
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    .line 5760
    const-string/jumbo v0, "location_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5762
    invoke-static {p0, p3}, Landroid/provider/Settings$Secure;->getLocationModeForUser(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0

    .line 5764
    :cond_0
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5766
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5767
    :catch_0
    move-exception v1

    .line 5768
    .local v1, "e":Ljava/lang/NumberFormatException;
    return p2

    .line 5766
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    move v1, p2

    :goto_0
    return v1
.end method

.method private static final getLocationModeForUser(Landroid/content/ContentResolver;I)I
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userId"    # I

    .line 9126
    invoke-static {}, Landroid/provider/Settings;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9127
    :try_start_0
    const-string v1, "gps"

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 9129
    .local v1, "gpsEnabled":Z
    const-string/jumbo v2, "network"

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 9131
    .local v2, "networkEnabled":Z
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 9132
    const/4 v3, 0x3

    monitor-exit v0

    return v3

    .line 9133
    :cond_0
    if-eqz v1, :cond_1

    .line 9134
    const/4 v3, 0x1

    monitor-exit v0

    return v3

    .line 9135
    :cond_1
    if-eqz v2, :cond_2

    .line 9136
    const/4 v3, 0x2

    monitor-exit v0

    return v3

    .line 9138
    :cond_2
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 9140
    .end local v1    # "gpsEnabled":Z
    .end local v2    # "networkEnabled":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 5883
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 5848
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 5889
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5891
    .local v0, "valString":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 5892
    :catch_0
    move-exception v1

    .line 5893
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J
    .param p4, "userHandle"    # I

    .line 5854
    invoke-static {p0, p1, p4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5857
    .local v0, "valString":Ljava/lang/String;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5858
    :catch_0
    move-exception v1

    .line 5859
    .local v1, "e":Ljava/lang/NumberFormatException;
    nop

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    move-wide v1, p2

    goto :goto_1

    .line 5857
    :cond_0
    move-wide v1, p2

    .line 5860
    .local v1, "value":J
    :goto_0
    nop

    .line 5859
    :goto_1
    nop

    .line 5861
    return-wide v1
.end method

.method public static getMovedToGlobalSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5524
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5525
    return-void
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .line 5540
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 5546
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5547
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has moved from android.provider.Settings.Secure to android.provider.Settings.Global."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5549
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5552
    :cond_0
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5553
    const-class v0, Landroid/provider/Settings$Secure;

    monitor-enter v0

    .line 5554
    :try_start_0
    sget-object v1, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 5555
    const-string/jumbo v1, "lock_settings"

    .line 5556
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 5555
    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    sput-object v1, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    .line 5557
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    sput-boolean v1, Landroid/provider/Settings$Secure;->sIsSystemProcess:Z

    .line 5559
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5560
    sget-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    if-eqz v0, :cond_5

    sget-boolean v0, Landroid/provider/Settings$Secure;->sIsSystemProcess:Z

    if-nez v0, :cond_5

    .line 5563
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 5565
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_3

    .line 5566
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5567
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x16

    if-gt v1, v4, :cond_3

    move v2, v3

    nop

    :cond_3
    move v1, v2

    .line 5569
    .local v1, "isPreMnc":Z
    if-eqz v1, :cond_4

    .line 5571
    :try_start_1
    sget-object v2, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    const-string v3, "0"

    invoke-interface {v2, p1, v3, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 5572
    :catch_0
    move-exception v2

    .line 5574
    goto :goto_1

    .line 5576
    :cond_4
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings.Secure."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is deprecated and no longer accessible. See API documentation for potential replacements."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5559
    .end local v0    # "application":Landroid/app/Application;
    .end local v1    # "isPreMnc":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 5583
    :cond_5
    :goto_1
    sget-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 5732
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5733
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has moved from android.provider.Settings.Secure to android.provider.Settings.Global, returning global URI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5735
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 5737
    :cond_0
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9001
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static final isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9017
    const-string/jumbo v0, "location_providers_allowed"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 9019
    .local v0, "allowedProviders":Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 6000
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "userHandle"    # I

    .line 6006
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 5824
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .line 5830
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 5911
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public static putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .line 5917
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 5594
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "makeDefault"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5666
    nop

    .line 5667
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v5

    .line 5666
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 5600
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "makeDefault"    # Z
    .param p5, "userHandle"    # I

    .line 5607
    const-string/jumbo v0, "location_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5609
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, p5}, Landroid/provider/Settings$Secure;->setLocationModeForUser(Landroid/content/ContentResolver;II)Z

    move-result v0

    return v0

    .line 5611
    :cond_0
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5612
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has moved from android.provider.Settings.Secure to android.provider.Settings.Global"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5614
    invoke-static/range {p0 .. p5}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    return v0

    .line 5617
    :cond_1
    sget-object v1, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static resetToDefaults(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5687
    nop

    .line 5688
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    .line 5687
    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$Secure;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    .line 5689
    return-void
.end method

.method public static resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "userHandle"    # I

    .line 5712
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5713
    .local v0, "arg":Landroid/os/Bundle;
    const-string v1, "_user"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5714
    if-eqz p1, :cond_0

    .line 5715
    const-string v1, "_tag"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5717
    :cond_0
    const-string v1, "_reset_mode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5718
    sget-object v1, Landroid/provider/Settings$Secure;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, p0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 5719
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RESET_secure"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5722
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    goto :goto_0

    .line 5720
    :catch_0
    move-exception v0

    .line 5721
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t reset do defaults for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5723
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private static setLocationModeForUser(Landroid/content/ContentResolver;II)Z
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "mode"    # I
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9087
    invoke-static {}, Landroid/provider/Settings;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9088
    const/4 v1, 0x0

    .line 9089
    .local v1, "gps":Z
    const/4 v2, 0x0

    .line 9090
    .local v2, "network":Z
    packed-switch p1, :pswitch_data_0

    .line 9104
    :try_start_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    goto :goto_2

    .line 9100
    :pswitch_0
    const/4 v1, 0x1

    .line 9101
    const/4 v2, 0x1

    .line 9102
    goto :goto_0

    .line 9097
    :pswitch_1
    const/4 v2, 0x1

    .line 9098
    goto :goto_0

    .line 9094
    :pswitch_2
    const/4 v1, 0x1

    .line 9095
    goto :goto_0

    .line 9092
    :pswitch_3
    nop

    .line 9107
    :goto_0
    const-string/jumbo v3, "network"

    invoke-static {p0, v3, v2, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v3

    .line 9109
    .local v3, "nlpSuccess":Z
    const-string v4, "gps"

    invoke-static {p0, v4, v1, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v4

    .line 9111
    .local v4, "gpsSuccess":Z
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    monitor-exit v0

    return v5

    .line 9104
    .end local v3    # "nlpSuccess":Z
    .end local v4    # "gpsSuccess":Z
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid location mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 9112
    .end local v1    # "gps":Z
    .end local v2    # "network":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9033
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 9034
    return-void
.end method

.method public static final setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9051
    invoke-static {}, Landroid/provider/Settings;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9055
    if-eqz p2, :cond_0

    .line 9056
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    goto :goto_0

    .line 9062
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 9058
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 9060
    :goto_0
    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {p0, v1, p1, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 9062
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
