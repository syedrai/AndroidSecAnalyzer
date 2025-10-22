.class public Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/afwsamples/testdpc/common/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;,
        Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;,
        Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;,
        Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;,
        Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;,
        Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;
    }
.end annotation


# static fields
.field private static final ADD_ACCOUNT_KEY:Ljava/lang/String; = "add_account"

.field private static final AFFILIATED_USER_KEY:Ljava/lang/String; = "affiliated_user"

.field private static final APP_FEEDBACK_NOTIFICATIONS:Ljava/lang/String; = "app_feedback_notifications"

.field private static final APP_RESTRICTIONS_MANAGING_PACKAGE_KEY:Ljava/lang/String; = "app_restrictions_managing_package"

.field private static final APP_STATUS_KEY:Ljava/lang/String; = "app_status"

.field private static final AUTO_BRIGHTNESS_KEY:Ljava/lang/String; = "auto_brightness"

.field private static final BATTERY_PLUGGED_ANY:Ljava/lang/String;

.field private static final BIND_DEVICE_ADMIN_POLICIES:Ljava/lang/String; = "bind_device_admin_policies"

.field private static final BLOCK_UNINSTALLATION_BY_PKG_KEY:Ljava/lang/String; = "block_uninstallation_by_pkg"

.field private static final BLOCK_UNINSTALLATION_LIST_KEY:Ljava/lang/String; = "block_uninstallation_list"

.field private static final CAPTURE_IMAGE_KEY:Ljava/lang/String; = "capture_image"

.field private static final CAPTURE_IMAGE_REQUEST_CODE:I = 0x1e0b

.field private static final CAPTURE_VIDEO_KEY:Ljava/lang/String; = "capture_video"

.field private static final CAPTURE_VIDEO_REQUEST_CODE:I = 0x1e0c

.field private static final CHECK_LOCK_TASK_PERMITTED_KEY:Ljava/lang/String; = "check_lock_task_permitted"

.field private static final CLEAR_APP_DATA_KEY:Ljava/lang/String; = "clear_app_data"

.field private static final CLEAR_GLOBAL_HTTP_PROXY_KEY:Ljava/lang/String; = "clear_global_http_proxy"

.field private static final COMMON_CRITERIA_MODE_KEY:Ljava/lang/String; = "common_criteria_mode"

.field private static final CREATE_AND_MANAGE_USER_KEY:Ljava/lang/String; = "create_and_manage_user"

.field private static final CREATE_EAP_TLS_WIFI_CONFIGURATION_KEY:Ljava/lang/String; = "create_eap_tls_wifi_configuration"

.field private static final CREATE_MANAGED_PROFILE_KEY:Ljava/lang/String; = "create_managed_profile"

.field private static final CREATE_WIFI_CONFIGURATION_KEY:Ljava/lang/String; = "create_wifi_configuration"

.field private static final CREDENTIAL_MANAGER_CLEAR_POLICY_KEY:Ljava/lang/String; = "credential_manager_clear_policy"

.field private static final CREDENTIAL_MANAGER_SET_ALLOWLIST_AND_SYSTEM_KEY:Ljava/lang/String; = "credential_manager_set_allowlist_and_system"

.field private static final CREDENTIAL_MANAGER_SET_ALLOWLIST_KEY:Ljava/lang/String; = "credential_manager_set_allowlist"

.field private static final CREDENTIAL_MANAGER_SET_BLOCKLIST_KEY:Ljava/lang/String; = "credential_manager_set_blocklist"

.field private static final CROSS_PROFILE_APPS:Ljava/lang/String; = "cross_profile_apps"

.field private static final CROSS_PROFILE_APPS_ALLOWLIST:Ljava/lang/String; = "cross_profile_apps_allowlist"

.field private static final CROSS_PROFILE_CALENDAR_KEY:Ljava/lang/String; = "cross_profile_calendar"

.field private static final DELEGATED_CERT_INSTALLER_KEY:Ljava/lang/String; = "manage_cert_installer"

.field private static final DISABLE_CAMERA_KEY:Ljava/lang/String; = "disable_camera"

.field private static final DISABLE_CAMERA_ON_PARENT_KEY:Ljava/lang/String; = "disable_camera_on_parent"

.field private static final DISABLE_KEYGUARD:Ljava/lang/String; = "disable_keyguard"

.field private static final DISABLE_METERED_DATA_KEY:Ljava/lang/String; = "disable_metered_data"

.field private static final DISABLE_SCREEN_CAPTURE_KEY:Ljava/lang/String; = "disable_screen_capture"

.field private static final DISABLE_SCREEN_CAPTURE_ON_PARENT_KEY:Ljava/lang/String; = "disable_screen_capture_on_parent"

.field private static final DISABLE_STATUS_BAR:Ljava/lang/String; = "disable_status_bar"

.field private static final DONT_STAY_ON:Ljava/lang/String; = "0"

.field private static final ENABLE_BACKUP_SERVICE:Ljava/lang/String; = "enable_backup_service"

.field private static final ENABLE_LOGOUT_KEY:Ljava/lang/String; = "enable_logout"

.field private static final ENABLE_NETWORK_LOGGING:Ljava/lang/String; = "enable_network_logging"

.field private static final ENABLE_SECURITY_LOGGING:Ljava/lang/String; = "enable_security_logging"

.field private static final ENABLE_SYSTEM_APPS_BY_INTENT_KEY:Ljava/lang/String; = "enable_system_apps_by_intent"

.field private static final ENABLE_SYSTEM_APPS_BY_PACKAGE_NAME_KEY:Ljava/lang/String; = "enable_system_apps_by_package_name"

.field private static final ENABLE_SYSTEM_APPS_KEY:Ljava/lang/String; = "enable_system_apps"

.field private static final ENABLE_USB_DATA_SIGNALING_KEY:Ljava/lang/String; = "enable_usb_data_signaling"

.field private static final ENROLLMENT_SPECIFIC_ID_KEY:Ljava/lang/String; = "enrollment_specific_id"

.field private static final ENTERPRISE_SLICE_KEY:Ljava/lang/String; = "enterprise_slice"

.field private static final EPHEMERAL_USER_KEY:Ljava/lang/String; = "ephemeral_user"

.field private static final FACTORY_RESET_DEVICE_KEY:Ljava/lang/String; = "factory_reset_device"

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "PolicyManagementFragment"

.field private static final GENERATE_KEY_CERTIFICATE_KEY:Ljava/lang/String; = "generate_key_and_certificate"

.field private static final GENERIC_DELEGATION_KEY:Ljava/lang/String; = "generic_delegation"

.field private static final GET_CA_CERTIFICATES_KEY:Ljava/lang/String; = "get_ca_certificates"

.field private static final GET_DISABLE_ACCOUNT_MANAGEMENT_KEY:Ljava/lang/String; = "get_disable_account_management"

.field private static final GRANT_KEY_PAIR_TO_APP_KEY:Ljava/lang/String; = "grant_key_pair_to_app"

.field private static final HIDE_APPS_KEY:Ljava/lang/String; = "hide_apps"

.field private static final HIDE_APPS_PARENT_KEY:Ljava/lang/String; = "hide_apps_parent"

.field private static final INSTALL_APK_PACKAGE_KEY:Ljava/lang/String; = "install_apk_package"

.field private static final INSTALL_APK_PACKAGE_REQUEST_CODE:I = 0x1e0d

.field private static final INSTALL_CA_CERTIFICATE_KEY:Ljava/lang/String; = "install_ca_certificate"

.field private static final INSTALL_CA_CERTIFICATE_REQUEST_CODE:I = 0x1e0a

.field private static final INSTALL_EXISTING_PACKAGE_KEY:Ljava/lang/String; = "install_existing_packages"

.field private static final INSTALL_KEY_CERTIFICATE_KEY:Ljava/lang/String; = "install_key_certificate"

.field private static final INSTALL_KEY_CERTIFICATE_REQUEST_CODE:I = 0x1e09

.field private static final INSTALL_NONMARKET_APPS_KEY:Ljava/lang/String; = "install_nonmarket_apps"

.field private static final KEEP_UNINSTALLED_PACKAGES:Ljava/lang/String; = "keep_uninstalled_packages"

.field private static final LOCK_NOW_KEY:Ljava/lang/String; = "lock_now"

.field private static final LOCK_SCREEN_POLICY_KEY:Ljava/lang/String; = "lock_screen_policy"

.field private static final LOGOUT_USER_KEY:Ljava/lang/String; = "logout_user"

.field public static final LOG_TAG:Ljava/lang/String; = "TestDPC"

.field private static final MANAGED_CONFIGURATIONS_KEY:Ljava/lang/String; = "managed_configurations"

.field private static final MANAGED_PROFILE_SPECIFIC_POLICIES_KEY:Ljava/lang/String; = "managed_profile_policies"

.field private static final MANAGED_SYSTEM_UPDATES_KEY:Ljava/lang/String; = "managed_system_updates"

.field private static final MANAGE_APP_PERMISSIONS_KEY:Ljava/lang/String; = "manage_app_permissions"

.field private static final MANAGE_ESIM_KEY:Ljava/lang/String; = "manage_esim"

.field private static final MANAGE_LOCK_TASK_LIST_KEY:Ljava/lang/String; = "manage_lock_task"

.field private static final MANAGE_OVERRIDE_APN_KEY:Ljava/lang/String; = "manage_override_apn"

.field private static final MODIFY_OWNED_WIFI_CONFIGURATION_KEY:Ljava/lang/String; = "modify_owned_wifi_configuration"

.field private static final MODIFY_WIFI_CONFIGURATION_KEY:Ljava/lang/String; = "modify_wifi_configuration"

.field private static final MTE_POLICY_KEY:Ljava/lang/String; = "mte_policy"

.field private static final MUTE_AUDIO_KEY:Ljava/lang/String; = "mute_audio"

.field private static final NEARBY_APP_STREAMING_KEY:Ljava/lang/String; = "nearby_app_streaming"

.field private static final NEARBY_NOTIFICATION_STREAMING_KEY:Ljava/lang/String; = "nearby_notification_streaming"

.field private static final NETWORK_STATS_KEY:Ljava/lang/String; = "network_stats"

.field public static final OVERRIDE_KEY_SELECTION_KEY:Ljava/lang/String; = "override_key_selection"

.field private static final PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

.field private static final PASSWORD_COMPLEXITY_KEY:Ljava/lang/String; = "password_complexity"

.field private static final PASSWORD_COMPLIANT_KEY:Ljava/lang/String; = "password_compliant"

.field private static final PASSWORD_CONSTRAINTS_KEY:Ljava/lang/String; = "password_constraints"

.field private static final PROFILE_MAX_TIME_OFF_KEY:Ljava/lang/String; = "profile_max_time_off"

.field private static final REBOOT_KEY:Ljava/lang/String; = "reboot"

.field private static final REENABLE_KEYGUARD:Ljava/lang/String; = "reenable_keyguard"

.field private static final REENABLE_STATUS_BAR:Ljava/lang/String; = "reenable_status_bar"

.field private static final RELAUNCH_IN_LOCK_TASK:Ljava/lang/String; = "relaunch_in_lock_task"

.field private static final REMOVE_ACCOUNT_KEY:Ljava/lang/String; = "remove_account"

.field private static final REMOVE_ALL_CERTIFICATES_KEY:Ljava/lang/String; = "remove_all_ca_certificates"

.field private static final REMOVE_DEVICE_OWNER_KEY:Ljava/lang/String; = "remove_device_owner"

.field private static final REMOVE_KEY_CERTIFICATE_KEY:Ljava/lang/String; = "remove_key_certificate"

.field private static final REMOVE_MANAGED_PROFILE_KEY:Ljava/lang/String; = "remove_managed_profile"

.field private static final REMOVE_NOT_OWNED_WIFI_CONFIGURATION_KEY:Ljava/lang/String; = "remove_not_owned_wifi_configurations"

.field private static final REMOVE_USER_KEY:Ljava/lang/String; = "remove_user"

.field private static final REQUEST_BUGREPORT_KEY:Ljava/lang/String; = "request_bugreport"

.field private static final REQUEST_MANAGE_CREDENTIALS_KEY:Ljava/lang/String; = "request_manage_credentials"

.field private static final REQUEST_MANAGE_CREDENTIALS_REQUEST_CODE:I = 0x1e0e

.field private static final REQUEST_NETWORK_LOGS:Ljava/lang/String; = "request_network_logs"

.field private static final REQUEST_PRE_REBOOT_SECURITY_LOGS:Ljava/lang/String; = "request_pre_reboot_security_logs"

.field private static final REQUEST_SECURITY_LOGS:Ljava/lang/String; = "request_security_logs"

.field private static final REQUIRED_PASSWORD_COMPLEXITY_KEY:Ljava/lang/String; = "required_password_complexity"

.field private static final REQUIRED_PASSWORD_COMPLEXITY_ON_PARENT_KEY:Ljava/lang/String; = "required_password_complexity_on_parent"

.field private static final RESET_PASSWORD_KEY:Ljava/lang/String; = "reset_password"

.field private static final SECURITY_PATCH_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final SECURITY_PATCH_KEY:Ljava/lang/String; = "security_patch"

.field private static final SEPARATE_CHALLENGE_KEY:Ljava/lang/String; = "separate_challenge"

.field private static final SET_ACCESSIBILITY_SERVICES_KEY:Ljava/lang/String; = "set_accessibility_services"

.field private static final SET_AFFILIATION_IDS_KEY:Ljava/lang/String; = "set_affiliation_ids"

.field private static final SET_ALWAYS_ON_VPN_KEY:Ljava/lang/String; = "set_always_on_vpn"

.field private static final SET_AUTO_TIME_KEY:Ljava/lang/String; = "set_auto_time"

.field private static final SET_AUTO_TIME_REQUIRED_KEY:Ljava/lang/String; = "set_auto_time_required"

.field private static final SET_AUTO_TIME_ZONE_KEY:Ljava/lang/String; = "set_auto_time_zone"

.field private static final SET_DEVICE_ORGANIZATION_NAME_KEY:Ljava/lang/String; = "set_device_organization_name"

.field private static final SET_DISABLE_ACCOUNT_MANAGEMENT_KEY:Ljava/lang/String; = "set_disable_account_management"

.field private static final SET_FACTORY_RESET_PROTECTION_POLICY_KEY:Ljava/lang/String; = "set_factory_reset_protection_policy"

.field private static final SET_GET_PREFERENTIAL_NETWORK_SERVICE_STATUS:Ljava/lang/String; = "set_get_preferential_network_service_status"

.field private static final SET_GLOBAL_HTTP_PROXY_KEY:Ljava/lang/String; = "set_global_http_proxy"

.field private static final SET_INPUT_METHODS_KEY:Ljava/lang/String; = "set_input_methods"

.field private static final SET_INPUT_METHODS_ON_PARENT_KEY:Ljava/lang/String; = "set_input_methods_on_parent"

.field private static final SET_LOCATION_ENABLED_KEY:Ljava/lang/String; = "set_location_enabled"

.field private static final SET_LOCATION_MODE_KEY:Ljava/lang/String; = "set_location_mode"

.field private static final SET_LOCK_TASK_FEATURES_KEY:Ljava/lang/String; = "set_lock_task_features"

.field private static final SET_LONG_SUPPORT_MESSAGE_KEY:Ljava/lang/String; = "set_long_support_message"

.field private static final SET_NEW_PASSWORD:Ljava/lang/String; = "set_new_password"

.field private static final SET_NEW_PASSWORD_WITH_COMPLEXITY:Ljava/lang/String; = "set_new_password_with_complexity"

.field private static final SET_NOTIFICATION_LISTENERS_KEY:Ljava/lang/String; = "set_notification_listeners"

.field private static final SET_NOTIFICATION_LISTENERS_TEXT_KEY:Ljava/lang/String; = "set_notification_listeners_text"

.field private static final SET_ORGANIZATION_ID_KEY:Ljava/lang/String; = "set_organization_id"

.field private static final SET_PERMISSION_POLICY_KEY:Ljava/lang/String; = "set_permission_policy"

.field private static final SET_PRIVATE_DNS_MODE_KEY:Ljava/lang/String; = "set_private_dns_mode"

.field private static final SET_PROFILE_NAME_KEY:Ljava/lang/String; = "set_profile_name"

.field private static final SET_PROFILE_PARENT_NEW_PASSWORD:Ljava/lang/String; = "set_profile_parent_new_password"

.field private static final SET_PROFILE_PARENT_NEW_PASSWORD_DEVICE_REQUIREMENT:Ljava/lang/String; = "set_profile_parent_new_password_device_requirement"

.field private static final SET_REQUIRED_PASSWORD_COMPLEXITY:Ljava/lang/String; = "set_required_password_complexity"

.field private static final SET_REQUIRED_PASSWORD_COMPLEXITY_ON_PARENT:Ljava/lang/String; = "set_required_password_complexity_on_parent"

.field private static final SET_SCREEN_BRIGHTNESS_KEY:Ljava/lang/String; = "set_screen_brightness"

.field private static final SET_SCREEN_OFF_TIMEOUT_KEY:Ljava/lang/String; = "set_screen_off_timeout"

.field private static final SET_SHORT_SUPPORT_MESSAGE_KEY:Ljava/lang/String; = "set_short_support_message"

.field private static final SET_TIME_KEY:Ljava/lang/String; = "set_time"

.field private static final SET_TIME_ZONE_KEY:Ljava/lang/String; = "set_time_zone"

.field private static final SET_USER_RESTRICTIONS_KEY:Ljava/lang/String; = "set_user_restrictions"

.field private static final SET_USER_RESTRICTIONS_PARENT_KEY:Ljava/lang/String; = "set_user_restrictions_parent"

.field private static final SET_USER_SESSION_MESSAGE_KEY:Ljava/lang/String; = "set_user_session_message"

.field private static final SET_WIFI_MIN_SECURITY_LEVEL_KEY:Ljava/lang/String; = "set_wifi_min_security_level"

.field private static final SET_WIFI_SSID_RESTRICTION_KEY:Ljava/lang/String; = "set_wifi_ssid_restriction"

.field private static final SHOW_WIFI_MAC_ADDRESS_KEY:Ljava/lang/String; = "show_wifi_mac_address"

.field private static final START_KIOSK_MODE:Ljava/lang/String; = "start_kiosk_mode"

.field private static final START_LOCK_TASK:Ljava/lang/String; = "start_lock_task"

.field private static final START_USER_IN_BACKGROUND_KEY:Ljava/lang/String; = "start_user_in_background"

.field private static final STAY_ON_WHILE_PLUGGED_IN:Ljava/lang/String; = "stay_on_while_plugged_in"

.field private static final STOP_LOCK_TASK:Ljava/lang/String; = "stop_lock_task"

.field private static final STOP_USER_KEY:Ljava/lang/String; = "stop_user"

.field private static final SUSPEND_APPS_KEY:Ljava/lang/String; = "suspend_apps"

.field private static final SUSPEND_PERSONAL_APPS_KEY:Ljava/lang/String; = "suspend_personal_apps"

.field private static final SWITCH_USER_KEY:Ljava/lang/String; = "switch_user"

.field private static final SYSTEM_UPDATE_PENDING_KEY:Ljava/lang/String; = "system_update_pending"

.field private static final SYSTEM_UPDATE_POLICY_KEY:Ljava/lang/String; = "system_update_policy"

.field public static final TAG:Ljava/lang/String; = "PolicyManagement"

.field private static final TAG_WIFI_CONFIG_CREATION:Ljava/lang/String; = "wifi_config_creation"

.field private static final TEST_KEY_USABILITY_KEY:Ljava/lang/String; = "test_key_usability"

.field private static final TRANSFER_OWNERSHIP_KEY:Ljava/lang/String; = "transfer_ownership_to_component"

.field private static final UNHIDE_APPS_KEY:Ljava/lang/String; = "unhide_apps"

.field private static final UNHIDE_APPS_PARENT_KEY:Ljava/lang/String; = "unhide_apps_parent"

.field private static final UNINSTALL_PACKAGE_KEY:Ljava/lang/String; = "uninstall_package"

.field private static final UNSUSPEND_APPS_KEY:Ljava/lang/String; = "unsuspend_apps"

.field private static final USER_OPERATION_ERROR_UNKNOWN:I = 0x1

.field private static final USER_OPERATION_SUCCESS:I = 0x0

.field private static final WIFI_CONFIG_LOCKDOWN_ENABLE_KEY:Ljava/lang/String; = "enable_wifi_config_lockdown"

.field public static final X509_CERT_TYPE:Ljava/lang/String; = "X.509"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAdminComponentName:Landroid/content/ComponentName;

.field private mAffiliatedUserPreference:Landroidx/preference/Preference;

.field private mAutoBrightnessPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mCommonCriteriaModePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

.field private mDisableCameraOnParentSwitchPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mDisableCameraSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mDisableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mDisableScreenCaptureOnParentSwitchPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mDisableScreenCaptureSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mDisableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mEnableAppFeedbackNotificationsPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mEnableBackupServicePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mEnableLogoutPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mEnableNetworkLoggingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mEnableSecurityLoggingPreference:Landroidx/preference/SwitchPreference;

.field private mEnableUsbDataSignalingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mEphemeralUserPreference:Landroidx/preference/Preference;

.field private mGetAccessibilityServicesTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;

.field private mGetInputMethodsTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;

.field private mGetNotificationListenersTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;

.field private mHideAppsParentPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mImageUri:Landroid/net/Uri;

.field private mInstallExistingPackagePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mInstallNonMarketAppsPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mIsOrganizationOwnedProfileOwner:Z

.field private mIsProfileOwner:Z

.field private mLockdownAdminConfiguredNetworksPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mLogoutUserPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mManageLockTaskListPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mMuteAudioSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mParentDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mPreferentialNetworkServiceSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mProfileMaxTimeOff:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

.field private mReenableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mReenableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mRequestNetworkLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mRequestPreRebootSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mRequestSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mSetAutoTimePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mSetAutoTimeRequiredPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mSetAutoTimeZonePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mSetDeviceOrganizationNamePreference:Landroidx/preference/Preference;

.field private mSetLocationEnabledPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mSetLocationModePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mSetLockTaskFeaturesPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mShowCaCertificateListTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;

.field private mStayOnWhilePluggedInSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mSuspendPersonalApps:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUnhideAppsParentPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserRestrictionsParentPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mVideoUri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$2gbusOXdnuERWkPJPJtlvmMW3rM(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showSetScreenBrightnessDialog$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2h-HcM6ckSxNb6wFGpZNO3zIFDU(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showEnableSystemAppsPrompt$0(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4EFU9pw1Wv_5ZvEDxObzXm8iKJM(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showSetProfileNameDialog$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4nllAWxAh6GRDlTjr-Jy84XScFE(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$setNotificationAllowlistEditBox$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5hzA3oS8vi09MYmsMRR8z0pFDr0(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showClearAppDataPrompt$1(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7uls_Kb_evpsxbO8pGOx7adXJxI(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/accounts/Account;Landroid/accounts/AccountManagerFuture;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$removeAccount$0(Landroid/accounts/Account;Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8uqvo9Ivheai7nmBy41aErt3v6A(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->validateAffiliatedUserAfterP()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9HncFy1D8ZoPT2QRrDzD-AUlyN8(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$requestBugReport$1(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9cfqP6PHRBH-w3SmBeiQyRFMNdA(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showSetGlobalHttpProxyDialog$0(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9u4GwzzKJjxHJSwmJ-Z-EIOt8xA(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showLockNowPrompt$3(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ApXMN4kKy-x7o9hDvc7qII93BiA(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$chooseAccount$0(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CcgmS6j-wen8v9qreu2MC4eegHY(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$onPreferenceClick$1(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DuU8TyRy6EARt8UM4WFL3nDaoRs(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showStopUserPrompt$2(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ErIVxX740U4_pkxhNZFMhbzs3NU(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showRemoveDeviceOwnerPrompt$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FrssO2duNqyYkv6pCvCIqX_a-Mo(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$onPreferenceChange$3(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gbg-2QZyRSH_hMaidLe30XjUh2E(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showSetTimeZoneDialog$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GyyF2YfKfUPt4uAkWCqS9DReY7g(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$onPreferenceClick$2(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HRy4TLQAfMsyazHMaTXLfYP-8Us(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$onCreatePreferences$3()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IFBDXeKP4Fdch3QPpOZonyrulB8(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showStartUserInBackgroundPrompt$0(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IuBl2ZX5df-fVrpTzBv2dvSinQk(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$setPermittedInputMethodsOnParent$1(Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J9j1SPyy3_v-ipgTPJtltK1dj04(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showEnableSystemAppByPackageNamePrompt$1(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L-l8noEbf_-xqI2Izn-5sk2wrJw(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showMtePolicyDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LCIzOjnCHgYZbZHa8C_uDOqJcXM(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showEnableSystemAppsPrompt$1(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LDjGLxq-ys5MHqc9WZ7HPhsimi4(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$onCreatePreferences$1()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LZbwrn_HSh2xLuAbnj5nT6uLqAQ(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->validateInstallNonMarketApps()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LlbjCqdPJu4yLelyX-7_OKX1RNA(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showSwitchUserPrompt$1(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MjKLCco-JMBB-EUEhruS83Of154(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;ZLjava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$setKeyGuardDisabled$0(ZLjava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N7Lqrgx6wNd1SaWnIirtC_FSJVo(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$reboot$0(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N7POdbGtqafGupHNOYOOwDzKARE(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showLockNowPrompt$2(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nbrvg8B5Mgp7j6ghEWrjHo3Y1QM(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->validateDeviceOwnerBeforeO()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RS3pj1MgvVxxTwrhhcG0XPT4BlE(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showStopUserPrompt$0(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RU15lsdN0L6y1kDG0RpSOPzz8yI(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showStartUserInBackgroundPrompt$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RZrHp3L8gm6F7F_zGLS_v0C9GLQ(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showSwitchUserPrompt$2(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T5AlemASkcSutohjyBHaZzdpvvw(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showEnableSystemAppByPackageNamePrompt$2(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tgcv5ol-hu-8H_8LiYvpt3Tabww(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showRemoveDeviceOwnerPrompt$2(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UkNYcTeICkd-8CFeROKmvHxqezI(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$onPreferenceChange$0(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W0OWh9WhWK0x5_js4N_qaxUqWCg(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$onPreferenceChange$1(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WE5XnTPHk9XkIO6n3IlwV8KADqE(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showEnableSystemAppByPackageNamePrompt$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WF8CTnt0Cmklz9CfhR7RLG3RZYA(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showGrantKeyPairToAppDialog$0(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WhXh2TcJPvNUDIY5hB3DbJuvlgQ(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showStopUserPrompt$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yo5cg54NvuE-6b1WjL5Bl9HgimY(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$setKeyGuardDisabled$1(ZLjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YqoabLczMl1wQ9RFIn_7SCm7xU4(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$reboot$1(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yr-Uvee9UWEHT-wlb40R9S9mfFE(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showSetOrganizationIdDialog$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZMoGpiaNbxuXvp1CZNK0aTdCYzc(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showInstallExistingPackagePrompt$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZVRx3-NQpJGpy9NruHORcQCG1dU(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showRemoveUserPrompt$0(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_5NnMxExwRnAT9qMwSz7DZQuCjM(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$lockNow$1(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b1N08rLKfiWyhSkTYJQTIBqXz6o(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$removeUser$0(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bJ-o6JhMtcSCiRKOywd3s7Eb7QQ(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->validateDeviceOwnerBeforeP()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bJ8ofpT4xwP3dQfQLrLp4PMz8Dc(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showRemoveDeviceOwnerPrompt$1(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ci5JqytBCvRmfkuA1UAB1q2A6qk(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$onPreferenceClick$0([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d_QeAjix3AjhDyF8Hi2A00qGM4A(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$removeUser$1(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g0FRb4c-0a-Osl3K-ZkJv7JUoaU(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$setPermittedInputMethodsOnParent$0(Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hmZdDnwr_Pap_xlHeIn0bSZYWb8(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showStartUserInBackgroundPrompt$2(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jswVZL1L3RWpnBRbWzS5DvUG8Ww(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showSwitchUserPrompt$0(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k7I0ay-YC0rRrBoR8XLbEf28doA(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->validateDeviceOwnerOrDelegationNetworkLoggingBeforeS()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kh5Z1SrKenk10JYk4YGSrndyn2s(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$clearApplicationUserData$0(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$lNTwbGFy3ziCTN2G4PnaJHY0SlU(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showSetScreenOffTimeoutDialog$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$njz_dgwzSZ8uK63wpGvXyD216z0(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$promptInstallUpdate$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oJ5eYvO_JKPP_31z9IyFV1nKQk8(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->validateDeviceOwnerBeforeQ()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ob_sbuCD9GEWBO3m86l-cMdLKfQ(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showNearbyAppStreamingDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ofab-i1YdkQc3YlD418XEzDRxRY(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->validateBrightnessControlConstraint()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qBQmq8_1-Rt7UCG-q7kRKDyUPRY(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showNearbyNotificationStreamingDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sgvjWRJZc7m6I_ElparqXI5sY-M(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;ZIIILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showHideAppsOnParentPrompt$0(Landroid/widget/EditText;ZIIILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tPQOP1tskSA0TVWcUs2s6ofP_rk(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$requestBugReport$0(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uMDZc4PExuSw1iBwFjCWjy5UVdA(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$onPreferenceChange$2(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w8aX_Je58AjYlar6RKMfjnjCY6Q(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$onCreatePreferences$2()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wG2n4e0oYUS67lPkADQY2exbzkA(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showSetTimeDialog$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yaXfUXA1PZsTALTMoqWxFavTu_c(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$lockNow$0(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zw6MagmcCa1uYbKYt1iOuyfUsGg(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showLockNowPrompt$4(Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAdminComponentName(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevicePolicyManager(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevicePolicyManagerGateway(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsOrganizationOwnedProfileOwner(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mIsOrganizationOwnedProfileOwner:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserManager(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgenerateKeyPair(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->generateKeyPair(Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mimportKeyCertificateFromIntent(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->importKeyCertificateFromIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minstallKeyPair(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->installKeyPair(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monErrorShowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monErrorShowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorShowToast(Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSuccessShowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveUser(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->removeUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestToManageCredentials(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->requestToManageCredentials(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDisableAccountManagement(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setDisableAccountManagement(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPermittedNotificationListeners(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setPermittedNotificationListeners(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartKioskMode(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->startKioskMode([Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 455
    nop

    .line 456
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->BATTERY_PLUGGED_ANY:Ljava/lang/String;

    .line 465
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

    .line 468
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 469
    const/high16 v0, 0x30000

    const/high16 v1, 0x50000

    const/4 v2, 0x0

    const/high16 v3, 0x10000

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    .line 478
    .local v0, "complexityIds":[I
    sget v1, Lcom/afwsamples/testdpc/R$string;->password_complexity_none:I

    sget v2, Lcom/afwsamples/testdpc/R$string;->password_complexity_low:I

    sget v3, Lcom/afwsamples/testdpc/R$string;->password_complexity_medium:I

    sget v4, Lcom/afwsamples/testdpc/R$string;->password_complexity_high:I

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    .line 485
    .local v1, "complexityNames":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 486
    sget-object v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

    aget v4, v0, v2

    aget v5, v1, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    .end local v0    # "complexityIds":[I
    .end local v1    # "complexityNames":[I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 256
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>()V

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetAccessibilityServicesTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;

    .line 554
    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetInputMethodsTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;

    .line 555
    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetNotificationListenersTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;

    .line 556
    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mShowCaCertificateListTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;

    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 256
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Exception;

    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$200(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 256
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Exception;

    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$400(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 256
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Exception;

    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$600(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 256
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Exception;

    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private addPasswordComplexityListToPreference(Landroidx/preference/ListPreference;)V
    .locals 5
    .param p1, "pref"    # Landroidx/preference/ListPreference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pref"
        }
    .end annotation

    .line 949
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 950
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    sget-object v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 952
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 953
    sget-object v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    sget-object v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 956
    .end local v3    # "i":I
    :cond_0
    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 957
    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 958
    return-void
.end method

.method private canUsbDataSignalingBeDisabled()Z
    .locals 1

    .line 1803
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->canUsbDataSignalingBeDisabled()Z

    move-result v0

    return v0
.end method

.method private chooseAccount()V
    .locals 4

    .line 4696
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4700
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4701
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4702
    sget v1, Lcom/afwsamples/testdpc/R$string;->no_accounts_available:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 4704
    :cond_1
    new-instance v1, Lcom/afwsamples/testdpc/common/AccountArrayAdapter;

    .line 4705
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/afwsamples/testdpc/R$id;->account_name:I

    invoke-direct {v1, v2, v3, v0}, Lcom/afwsamples/testdpc/common/AccountArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 4706
    .local v1, "accountArrayAdapter":Lcom/afwsamples/testdpc/common/AccountArrayAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/afwsamples/testdpc/R$string;->remove_account:I

    .line 4707
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda37;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda37;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;)V

    .line 4708
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 4710
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4712
    .end local v1    # "accountArrayAdapter":Lcom/afwsamples/testdpc/common/AccountArrayAdapter;
    :goto_0
    return-void

    .line 4697
    .end local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    :cond_2
    :goto_1
    return-void
.end method

.method private choosePrivateKeyForRemoval()V
    .locals 6

    .line 3344
    nop

    .line 3345
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 3344
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V

    .line 3374
    return-void
.end method

.method private clearApplicationUserData(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 3878
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    new-instance v2, Lcom/afwsamples/testdpc/util/MainThreadExecutor;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/util/MainThreadExecutor;-><init>()V

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda11;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;)V

    .line 3886
    return-void
.end method

.method private constrainSpecialCasePreferences()V
    .locals 2

    .line 983
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 984
    const-string v0, "reset_password"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->clearNonCustomConstraints()V

    .line 986
    :cond_0
    return-void
.end method

.method private dispatchCaptureIntent(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "storageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "action",
            "requestCode",
            "storageUri"
        }
    .end annotation

    .line 1913
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1914
    .local v0, "captureIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1915
    const-string v1, "output"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1916
    invoke-virtual {p0, v0, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1918
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$string;->camera_app_not_found:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 1920
    :goto_0
    return-void
.end method

.method private generateKeyPair(Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;)V
    .locals 3
    .param p1, "params"    # Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "params"
        }
    .end annotation

    .line 1908
    new-instance v0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-direct {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;-><init>(Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;Landroid/app/Activity;Landroid/content/ComponentName;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1909
    return-void
.end method

.method private getAllInstalledApplicationsSorted()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 3908
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3909
    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 3910
    .local v0, "allApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v1, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v1, v2}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3911
    return-object v0
.end method

.method private getAllLauncherIntentResolversSorted()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 3899
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->getLauncherIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 3900
    .local v0, "launcherIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3901
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 3902
    .local v1, "launcherIntentResolvers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3904
    return-object v1
.end method

.method private getMeteredDataRestrictedPkgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3849
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getMeteredDataDisabledPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getRequiredComplexity(Landroid/app/admin/DevicePolicyManager;)I
    .locals 1
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dpm"
        }
    .end annotation

    .line 2702
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getRequiredPasswordComplexity()I

    move-result v0

    return v0
.end method

.method private getStorageUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation

    .line 1924
    nop

    .line 1925
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1926
    .local v0, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1928
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1929
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".fileprovider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private grantKeyPairToApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "keyAlias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyAlias",
            "packageName"
        }
    .end annotation

    .line 4574
    const/4 v0, 0x0

    .line 4576
    .local v0, "status":Z
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/admin/DevicePolicyManager;->grantKeyPairToApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 4579
    goto :goto_1

    .line 4577
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 4578
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    const-string v2, "PolicyManagement"

    const-string v3, "Error invoking grantKeyPairToApp"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4580
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    if-eqz v0, :cond_0

    .line 4581
    const-string v1, "KeyPair granted successfully"

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 4583
    :cond_0
    const-string v1, "KeyPair grant failed"

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    .line 4585
    :goto_2
    return-void
.end method

.method private hasNetworkLoggingDelegation()Z
    .locals 2

    .line 1854
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "delegation-network-logging"

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/common/Util;->hasDelegation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private importCaCertificateFromIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 3382
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3385
    :cond_0
    const/4 v0, 0x0

    .line 3386
    .local v0, "data":Landroid/net/Uri;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_2

    .line 3387
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3388
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 3390
    .local v2, "isCaInstalled":Z
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 3391
    .local v3, "certificateInputStream":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 3392
    invoke-static {v3, v4, v5}, Lcom/afwsamples/testdpc/common/Util;->installCaCertificate(Ljava/io/InputStream;Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 3396
    .end local v3    # "certificateInputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 3394
    :catch_0
    move-exception v3

    .line 3395
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "PolicyManagement"

    const-string v5, "importCaCertificateFromIntent: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3397
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    if-eqz v2, :cond_1

    sget v3, Lcom/afwsamples/testdpc/R$string;->install_ca_successfully:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/afwsamples/testdpc/R$string;->install_ca_fail:I

    :goto_1
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 3399
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "isCaInstalled":Z
    :cond_2
    return-void

    .line 3383
    .end local v0    # "data":Landroid/net/Uri;
    :cond_3
    :goto_2
    return-void
.end method

.method private importKeyCertificateFromIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "password"
        }
    .end annotation

    .line 3108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->importKeyCertificateFromIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3109
    return-void
.end method

.method private importKeyCertificateFromIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "attempts"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "password",
            "attempts"
        }
    .end annotation

    .line 3120
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 3123
    :cond_0
    const/4 v0, 0x0

    .line 3124
    .local v0, "data":Landroid/net/Uri;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_2

    .line 3126
    if-nez p2, :cond_1

    .line 3127
    const-string p2, ""

    .line 3130
    :cond_1
    nop

    .line 3132
    :try_start_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3131
    invoke-static {v1, v0, p2}, Lcom/afwsamples/testdpc/common/CertificateUtil;->parsePKCS12Certificate(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;

    move-result-object v1

    .line 3133
    .local v1, "parseInfo":Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;
    iget-object v2, v1, Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;->privateKey:Ljava/security/PrivateKey;

    iget-object v3, v1, Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;->certificate:Ljava/security/cert/X509Certificate;

    iget-object v4, v1, Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;->alias:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showPromptForKeyCertificateAlias(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "parseInfo":Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;
    goto :goto_0

    .line 3143
    :catch_0
    move-exception v1

    .line 3144
    .local v1, "e":Ljava/lang/ClassCastException;
    sget v2, Lcom/afwsamples/testdpc/R$string;->not_a_key_certificate:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_2

    .line 3141
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 3142
    .local v1, "e":Ljava/io/IOException;
    add-int/lit8 p3, p3, 0x1

    invoke-direct {p0, p1, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showPromptForCertificatePassword(Landroid/content/Intent;I)V

    .line 3145
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_2

    .line 3135
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    .line 3140
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string v2, "PolicyManagement"

    const-string v3, "Unable to load key"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 3147
    :cond_2
    :goto_2
    return-void

    .line 3121
    .end local v0    # "data":Landroid/net/Uri;
    :cond_3
    :goto_3
    return-void
.end method

.method private installApkPackageFromIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 3597
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3601
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .local v1, "data":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 3603
    :try_start_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 3604
    .local v0, "inputStream":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/afwsamples/testdpc/common/PackageInstallationUtils;->installPackage(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3608
    nop

    .end local v0    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 3605
    :catch_0
    move-exception v0

    .line 3606
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Failed to open APK file"

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    .line 3607
    const-string v3, "PolicyManagement"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3610
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "data":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 3598
    :cond_2
    :goto_1
    return-void
.end method

.method private installKeyPair(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "isUserSelectable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "key",
            "cert",
            "alias",
            "isUserSelectable"
        }
    .end annotation

    .line 1887
    const/4 v1, 0x0

    :try_start_0
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    .line 1889
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/security/cert/Certificate;

    aput-object p2, v6, v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1894
    if-eqz p4, :cond_0

    const/4 v0, 0x2

    const/4 v8, 0x2

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 1889
    :goto_0
    move-object v5, p1

    move-object v7, p3

    .end local p1    # "key":Ljava/security/PrivateKey;
    .end local p3    # "alias":Ljava/lang/String;
    .local v5, "key":Ljava/security/PrivateKey;
    .local v7, "alias":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Landroid/app/admin/DevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;I)Z

    move-result p1

    return p1

    .line 1896
    .end local v5    # "key":Ljava/security/PrivateKey;
    .end local v7    # "alias":Ljava/lang/String;
    .restart local p1    # "key":Ljava/security/PrivateKey;
    .restart local p3    # "alias":Ljava/lang/String;
    :cond_1
    move-object v5, p1

    move-object v7, p3

    .end local p1    # "key":Ljava/security/PrivateKey;
    .end local p3    # "alias":Ljava/lang/String;
    .restart local v5    # "key":Ljava/security/PrivateKey;
    .restart local v7    # "alias":Ljava/lang/String;
    if-eqz p4, :cond_2

    .line 1899
    iget-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p3, v5, p2, v7}, Landroid/app/admin/DevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1901
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 1897
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Cannot set key as non-user-selectable prior to P"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "key":Ljava/security/PrivateKey;
    .end local v7    # "alias":Ljava/lang/String;
    .end local p2    # "cert":Ljava/security/cert/Certificate;
    .end local p4    # "isUserSelectable":Z
    throw p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1901
    .restart local p1    # "key":Ljava/security/PrivateKey;
    .restart local p2    # "cert":Ljava/security/cert/Certificate;
    .restart local p3    # "alias":Ljava/lang/String;
    .restart local p4    # "isUserSelectable":Z
    :catch_1
    move-exception v0

    move-object v5, p1

    move-object v7, p3

    move-object p1, v0

    .line 1902
    .end local p3    # "alias":Ljava/lang/String;
    .restart local v5    # "key":Ljava/security/PrivateKey;
    .restart local v7    # "alias":Ljava/lang/String;
    .local p1, "e":Ljava/lang/SecurityException;
    :goto_1
    const-string p3, "PolicyManagement"

    const-string v0, "Not allowed to install keys"

    invoke-static {p3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1903
    return v1
.end method

.method private installUpdate()V
    .locals 6

    .line 1488
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "ota.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1489
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1490
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    new-instance v4, Lcom/afwsamples/testdpc/util/MainThreadExecutor;

    invoke-direct {v4}, Lcom/afwsamples/testdpc/util/MainThreadExecutor;-><init>()V

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$2;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$2;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/app/admin/DevicePolicyManager;->installSystemUpdate(Landroid/content/ComponentName;Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V

    .line 1500
    return-void
.end method

.method private isDeviceOwner()Z
    .locals 2

    .line 1836
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isManagedProfileOwner()Z
    .locals 1

    .line 1555
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->isManagedProfileOwner(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isNetworkLoggingEnabled()Z
    .locals 3

    .line 1841
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 1842
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isDeviceOwner()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->hasNetworkLoggingDelegation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1843
    return v2

    .line 1846
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isDeviceOwner()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isManagedProfileOwner()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->hasNetworkLoggingDelegation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1847
    return v2

    .line 1850
    :cond_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method private isOrganizationOwnedDevice()Z
    .locals 2

    .line 4747
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    .line 4748
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 4749
    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4747
    :goto_1
    return v0
.end method

.method private isPackageSuspended(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 3891
    :try_start_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isPackageSuspended(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3892
    :catch_0
    move-exception v0

    .line 3893
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "PolicyManagement"

    const-string v2, "Unable check if package is suspended"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3894
    const/4 v1, 0x0

    return v1
.end method

.method private isSecurityLoggingEnabled()Z
    .locals 2

    .line 1859
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$chooseAccount$0(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "accounts"    # Ljava/util/List;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "position"    # I

    .line 4709
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->removeAccount(Landroid/accounts/Account;)V

    return-void
.end method

.method private synthetic lambda$clearApplicationUserData$0(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "__"    # Ljava/lang/String;
    .param p3, "succeed"    # Z

    .line 3883
    nop

    .line 3884
    if-eqz p3, :cond_0

    sget v0, Lcom/afwsamples/testdpc/R$string;->clear_app_data_success:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$string;->clear_app_data_failure:I

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3883
    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$lockNow$0(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .line 1569
    const-string v0, "lockNow"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$lockNow$1(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1569
    const-string v0, "lockNow"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onCreatePreferences$0()I
    .locals 1

    .line 699
    sget v0, Lcom/afwsamples/testdpc/R$string;->not_for_this_device:I

    return v0
.end method

.method private synthetic lambda$onCreatePreferences$1()I
    .locals 1

    .line 707
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isSecurityLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$string;->requires_security_logs:I

    :goto_0
    return v0
.end method

.method private synthetic lambda$onCreatePreferences$2()I
    .locals 1

    .line 720
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isNetworkLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$string;->requires_network_logs:I

    :goto_0
    return v0
.end method

.method private synthetic lambda$onCreatePreferences$3()I
    .locals 2

    .line 841
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->getBindDeviceAdminTargetUsers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 842
    const/4 v0, 0x0

    goto :goto_0

    .line 843
    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$string;->require_one_po_to_bind:I

    .line 841
    :goto_0
    return v0
.end method

.method private synthetic lambda$onPreferenceChange$0(Ljava/lang/Void;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Void;

    .line 1663
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 1665
    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isPreferentialNetworkServiceEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 1663
    const-string v0, "setPreferentialNetworkServiceEnabled(%b)"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessShowToastWithHardcodedMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onPreferenceChange$1(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1666
    const-string v0, "setPreferentialNetworkServiceEnabled"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$onPreferenceChange$2(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .line 1702
    const-string v0, "setOrganizationName"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onPreferenceChange$3(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1703
    const-string v0, "setOrganizationName"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$onPreferenceClick$0([Ljava/lang/String;)V
    .locals 3
    .param p1, "packages"    # [Ljava/lang/String;

    .line 1034
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda76;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda76;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda78;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda78;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setLockTaskPackages([Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$onPreferenceClick$1(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .line 1036
    const-string v0, "setLockTaskPackages()"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onPreferenceClick$2(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1038
    sget v0, Lcom/afwsamples/testdpc/R$string;->lock_task_unavailable:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "setLockTaskPackages()"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorShowToast(Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$promptInstallUpdate$0(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 1480
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->installUpdate()V

    return-void
.end method

.method static synthetic lambda$promptInstallUpdate$1(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 1481
    return-void
.end method

.method private synthetic lambda$reboot$0(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .line 4261
    const-string v0, "reboot"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$reboot$1(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 4263
    const-string v0, "reboot"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4264
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_0

    .line 4265
    sget v0, Lcom/afwsamples/testdpc/R$string;->reboot_error_msg:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4267
    :cond_0
    return-void
.end method

.method private synthetic lambda$removeAccount$0(Landroid/accounts/Account;Landroid/accounts/AccountManagerFuture;)V
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "future"    # Landroid/accounts/AccountManagerFuture;

    .line 4721
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 4722
    .local v2, "result":Landroid/os/Bundle;
    const-string v3, "booleanResult"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 4723
    .local v3, "success":Z
    if-eqz v3, :cond_0

    .line 4724
    sget v4, Lcom/afwsamples/testdpc/R$string;->success_remove_account:I

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v0

    invoke-direct {p0, v4, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 4726
    :cond_0
    sget v4, Lcom/afwsamples/testdpc/R$string;->fail_to_remove_account:I

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v0

    invoke-direct {p0, v4, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4731
    .end local v2    # "result":Landroid/os/Bundle;
    .end local v3    # "success":Z
    :goto_0
    goto :goto_2

    .line 4728
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    .line 4729
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PolicyManagement"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4730
    sget v3, Lcom/afwsamples/testdpc/R$string;->fail_to_remove_account:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-direct {p0, v3, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4732
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private synthetic lambda$removeUser$0(Ljava/lang/Void;)V
    .locals 3
    .param p1, "u"    # Ljava/lang/Void;

    .line 2449
    sget v0, Lcom/afwsamples/testdpc/R$string;->user_removed:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "removeUser()"

    invoke-direct {p0, v2, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$removeUser$1(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 2450
    sget v0, Lcom/afwsamples/testdpc/R$string;->failed_to_remove_user:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "removeUser()"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorShowToast(Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$requestBugReport$0(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .line 1865
    const-string v0, "requestBugreport"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$requestBugReport$1(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1867
    sget v0, Lcom/afwsamples/testdpc/R$string;->bugreport_failure_throttled:I

    sget v1, Lcom/afwsamples/testdpc/R$string;->bugreport_failure_exception:I

    const-string v2, "requestBugreport"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorOrFailureShowToast(Ljava/lang/String;Ljava/lang/Exception;II)V

    return-void
.end method

.method private synthetic lambda$setKeyGuardDisabled$0(ZLjava/lang/Void;)V
    .locals 3
    .param p1, "disabled"    # Z
    .param p2, "v"    # Ljava/lang/Void;

    .line 1810
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "setKeyGuardDisabled(%b)"

    invoke-virtual {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setKeyGuardDisabled$1(ZLjava/lang/Exception;)V
    .locals 2
    .param p1, "disabled"    # Z
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1812
    nop

    .line 1813
    if-eqz p1, :cond_0

    sget v0, Lcom/afwsamples/testdpc/R$string;->unable_disable_keyguard:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$string;->unable_enable_keyguard:I

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1812
    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setNotificationAllowlistEditBox$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "input"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 4086
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4087
    .local v0, "packageNames":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4088
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setPermittedNotificationListeners(Ljava/util/List;)V

    goto :goto_0

    .line 4090
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s*,\\s*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4091
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setPermittedNotificationListeners(Ljava/util/List;)V

    .line 4093
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 4094
    return-void
.end method

.method static synthetic lambda$setNotificationAllowlistEditBox$1(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 4096
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$setPermittedInputMethodsOnParent$0(Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;Landroid/view/View;)V
    .locals 3
    .param p1, "parentDpmGateway"    # Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    .param p2, "v"    # Landroid/view/View;

    .line 4044
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPermittedInputMethods(Ljava/util/List;)Z

    move-result v0

    .line 4045
    .local v0, "result":Z
    nop

    .line 4046
    if-eqz v0, :cond_0

    .line 4047
    sget v1, Lcom/afwsamples/testdpc/R$string;->all_input_methods_on_parent:I

    goto :goto_0

    .line 4048
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$string;->add_input_method_on_parent_fail:I

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 4045
    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4049
    return-void
.end method

.method private synthetic lambda$setPermittedInputMethodsOnParent$1(Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;Landroid/view/View;)V
    .locals 3
    .param p1, "parentDpmGateway"    # Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    .param p2, "v"    # Landroid/view/View;

    .line 4053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPermittedInputMethods(Ljava/util/List;)Z

    move-result v0

    .line 4054
    .local v0, "result":Z
    nop

    .line 4055
    if-eqz v0, :cond_0

    .line 4056
    sget v1, Lcom/afwsamples/testdpc/R$string;->system_input_methods_on_parent:I

    goto :goto_0

    .line 4057
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$string;->add_input_method_on_parent_fail:I

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 4054
    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4058
    return-void
.end method

.method static synthetic lambda$showChooseUserPrompt$0(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "callback"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;
    .param p1, "secondaryUsers"    # Ljava/util/List;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "position"    # I

    .line 2532
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-interface {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;->onUserChosen(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic lambda$showClearAppDataPrompt$0(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 3860
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$showClearAppDataPrompt$1(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "packageNameList"    # Ljava/util/List;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "position"    # I

    .line 3871
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->clearApplicationUserData(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showEnableSystemAppByPackageNamePrompt$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 3023
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3024
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda58;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda58;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda59;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda59;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->enableSystemApp(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 3034
    return-void
.end method

.method private synthetic lambda$showEnableSystemAppByPackageNamePrompt$1(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Void;

    .line 3027
    sget v0, Lcom/afwsamples/testdpc/R$string;->enable_system_apps_by_package_name_success_msg:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "enableSystemApp"

    invoke-direct {p0, v2, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showEnableSystemAppByPackageNamePrompt$2(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 3032
    sget v0, Lcom/afwsamples/testdpc/R$string;->package_name_error:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "enableSystemApp"

    invoke-direct {p0, v2, p2, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorShowToast(Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showEnableSystemAppsPrompt$0(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "disabledSystemApps"    # Ljava/util/List;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "position"    # I

    .line 3550
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3551
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda65;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda65;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda67;

    invoke-direct {v3, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda67;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->enableSystemApp(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 3559
    return-void
.end method

.method private synthetic lambda$showEnableSystemAppsPrompt$1(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Void;

    .line 3554
    sget v0, Lcom/afwsamples/testdpc/R$string;->enable_system_apps_by_package_name_success_msg:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "enableSystemApp"

    invoke-direct {p0, v2, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$showEnableSystemAppsPrompt$2(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 3558
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "enableSystemApp(%s)"

    invoke-static {v1, p0, v0}, Lcom/afwsamples/testdpc/common/Util;->onErrorLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showGrantKeyPairToAppDialog$0(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "keyPairAliasTextEdit"    # Landroid/widget/EditText;
    .param p2, "packageNameTextEdit"    # Landroid/widget/EditText;
    .param p3, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p4, "i"    # I

    .line 4554
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4555
    .local v0, "keyPairAlias":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4556
    sget v1, Lcom/afwsamples/testdpc/R$string;->key_pair_alias_empty:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4557
    return-void

    .line 4560
    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4561
    .local v1, "packagename":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4562
    sget v3, Lcom/afwsamples/testdpc/R$string;->grant_to_package_name_empty:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v3, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4563
    return-void

    .line 4566
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->grantKeyPairToApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 4567
    return-void
.end method

.method private synthetic lambda$showHideAppsOnParentPrompt$0(Landroid/widget/EditText;ZIIILandroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "input"    # Landroid/widget/EditText;
    .param p2, "showHiddenApps"    # Z
    .param p3, "successResId"    # I
    .param p4, "failureResId"    # I
    .param p5, "failureSystemResId"    # I
    .param p6, "dialog"    # Landroid/content/DialogInterface;
    .param p7, "which"    # I

    .line 3730
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3732
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mParentDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    if-nez p2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3, v4, v0, v5}, Landroid/app/admin/DevicePolicyManager;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3734
    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-direct {p0, p3, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 3736
    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-virtual {p0, p4, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3740
    :goto_1
    goto :goto_2

    .line 3738
    :catch_0
    move-exception v3

    .line 3739
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {p0, p5, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;I)V

    .line 3741
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    invoke-interface {p6}, Landroid/content/DialogInterface;->dismiss()V

    .line 3742
    return-void
.end method

.method static synthetic lambda$showHideAppsOnParentPrompt$1(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 3743
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showInstallExistingPackagePrompt$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 3581
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3582
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 3583
    invoke-virtual {v1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    .line 3584
    .local v1, "success":Z
    nop

    .line 3585
    if-eqz v1, :cond_0

    .line 3586
    sget v2, Lcom/afwsamples/testdpc/R$string;->install_existing_packages_success_msg:I

    goto :goto_0

    .line 3587
    :cond_0
    sget v2, Lcom/afwsamples/testdpc/R$string;->package_name_error:I

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 3584
    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 3589
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 3590
    return-void
.end method

.method static synthetic lambda$showLockNowPrompt$0(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p0, "evictKeyCheckBox"    # Landroid/widget/CheckBox;
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 1583
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$showLockNowPrompt$1(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p0, "lockParentCheckBox"    # Landroid/widget/CheckBox;
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 1585
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$showLockNowPrompt$2(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "evictKeyCheckBox"    # Landroid/widget/CheckBox;
    .param p2, "lockParentCheckBox"    # Landroid/widget/CheckBox;
    .param p3, "d"    # Landroid/content/DialogInterface;
    .param p4, "i"    # I

    .line 1594
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1595
    const/4 v0, 0x1

    goto :goto_0

    .line 1596
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 1598
    .local v0, "flags":I
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1599
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->forParentProfile(Landroid/content/Context;)Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    move-result-object v1

    goto :goto_1

    .line 1600
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    :goto_1
    nop

    .line 1601
    .local v1, "gateway":Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda38;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda38;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda39;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda39;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->lockNow(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1603
    return-void
.end method

.method private synthetic lambda$showLockNowPrompt$3(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .line 1602
    const-string v0, "lockNow"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showLockNowPrompt$4(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1602
    const-string v0, "lockNow"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$showMtePolicyDialog$0(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 1469
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->setMtePolicy(I)V

    return-void
.end method

.method private synthetic lambda$showNearbyAppStreamingDialog$0(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 4347
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->setNearbyAppStreamingPolicy(I)V

    return-void
.end method

.method private synthetic lambda$showNearbyNotificationStreamingDialog$0(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 4331
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->setNearbyNotificationStreamingPolicy(I)V

    return-void
.end method

.method private synthetic lambda$showRemoveDeviceOwnerPrompt$0(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 2153
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda71;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda71;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda72;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda72;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->clearDeviceOwnerApp(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$showRemoveDeviceOwnerPrompt$1(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .line 2155
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2156
    sget v0, Lcom/afwsamples/testdpc/R$string;->device_owner_removed:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 2157
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2159
    :cond_0
    return-void
.end method

.method private synthetic lambda$showRemoveDeviceOwnerPrompt$2(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 2160
    const-string v0, "clearDeviceOwnerApp"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$showRemoveUserPrompt$0(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "u"    # Landroid/os/UserHandle;

    .line 2460
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->removeUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$showSetGlobalHttpProxyDialog$0(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "hostEditText"    # Landroid/widget/EditText;
    .param p2, "portEditText"    # Landroid/widget/EditText;
    .param p3, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p4, "i"    # I

    .line 3467
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3468
    .local v0, "hostString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3469
    sget v1, Lcom/afwsamples/testdpc/R$string;->no_host:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 3470
    return-void

    .line 3472
    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3473
    .local v1, "portString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3474
    sget v3, Lcom/afwsamples/testdpc/R$string;->no_port:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v3, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 3475
    return-void

    .line 3477
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3478
    .local v3, "port":I
    const v4, 0xffff

    if-le v3, v4, :cond_2

    .line 3479
    sget v4, Lcom/afwsamples/testdpc/R$string;->port_out_of_range:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v4, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 3480
    return-void

    .line 3482
    :cond_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 3483
    invoke-static {v0, v3}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v5

    .line 3482
    invoke-virtual {v2, v4, v5}, Landroid/app/admin/DevicePolicyManager;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    .line 3484
    return-void
.end method

.method static synthetic lambda$showSetMeteredDataPrompt$0(Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p0, "meteredDataRestrictionInfoAdapter"    # Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J

    .line 3837
    invoke-virtual/range {p0 .. p5}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private synthetic lambda$showSetOrganizationIdDialog$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "organizationIdTextEdit"    # Landroid/widget/EditText;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 4523
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4524
    .local v0, "organizationId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4525
    sget v1, Lcom/afwsamples/testdpc/R$string;->organization_id_empty:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4526
    return-void

    .line 4528
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->setOrganizationId(Ljava/lang/String;)V

    .line 4529
    return-void
.end method

.method private synthetic lambda$showSetProfileNameDialog$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "profileNameEditText"    # Landroid/widget/EditText;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 4494
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4495
    .local v0, "newProfileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4496
    sget v1, Lcom/afwsamples/testdpc/R$string;->no_profile_name:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4497
    return-void

    .line 4499
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4500
    return-void
.end method

.method private synthetic lambda$showSetScreenBrightnessDialog$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "brightnessEditText"    # Landroid/widget/EditText;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 4302
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4303
    .local v0, "brightness":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4304
    sget v1, Lcom/afwsamples/testdpc/R$string;->no_screen_brightness:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4305
    return-void

    .line 4307
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4308
    .local v1, "brightnessValue":I
    const/16 v3, 0xff

    if-gt v1, v3, :cond_3

    if-gez v1, :cond_1

    goto :goto_1

    .line 4312
    :cond_1
    iget-boolean v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mIsOrganizationOwnedProfileOwner:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mParentDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    :goto_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 4313
    const-string v4, "screen_brightness"

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/admin/DevicePolicyManager;->setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 4315
    return-void

    .line 4309
    :cond_3
    :goto_1
    sget v3, Lcom/afwsamples/testdpc/R$string;->invalid_screen_brightness:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v3, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4310
    return-void
.end method

.method private synthetic lambda$showSetScreenOffTimeoutDialog$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "timeoutEditText"    # Landroid/widget/EditText;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 4381
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4382
    .local v0, "screenTimeout":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4383
    sget v1, Lcom/afwsamples/testdpc/R$string;->no_screen_off_timeout:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4384
    return-void

    .line 4386
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4387
    .local v1, "screenTimeoutVaue":I
    if-gez v1, :cond_1

    .line 4388
    sget v3, Lcom/afwsamples/testdpc/R$string;->invalid_screen_off_timeout:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v3, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4389
    return-void

    .line 4391
    :cond_1
    iget-boolean v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mIsOrganizationOwnedProfileOwner:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mParentDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    :goto_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    mul-int/lit16 v4, v1, 0x3e8

    .line 4395
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 4392
    const-string v5, "screen_off_timeout"

    invoke-virtual {v2, v3, v5, v4}, Landroid/app/admin/DevicePolicyManager;->setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 4396
    return-void
.end method

.method private synthetic lambda$showSetTimeDialog$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "timeEditText"    # Landroid/widget/EditText;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 4420
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4421
    .local v0, "newTimeString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4422
    sget v1, Lcom/afwsamples/testdpc/R$string;->no_set_time:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4423
    return-void

    .line 4425
    :cond_0
    const-wide/16 v3, 0x0

    .line 4427
    .local v3, "newTime":J
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4431
    .end local v3    # "newTime":J
    .local v1, "newTime":J
    nop

    .line 4432
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setTime(Landroid/content/ComponentName;J)Z

    .line 4433
    return-void

    .line 4428
    .end local v1    # "newTime":J
    .restart local v3    # "newTime":J
    :catch_0
    move-exception v1

    .line 4429
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget v5, Lcom/afwsamples/testdpc/R$string;->invalid_set_time:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v5, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4430
    return-void
.end method

.method private synthetic lambda$showSetTimeZoneDialog$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "timezoneEditText"    # Landroid/widget/EditText;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 4460
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4461
    .local v0, "newTimezone":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4462
    sget v1, Lcom/afwsamples/testdpc/R$string;->no_timezone:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4463
    return-void

    .line 4465
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v1

    .line 4466
    .local v1, "ids":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4467
    sget v3, Lcom/afwsamples/testdpc/R$string;->invalid_timezone:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v3, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4468
    return-void

    .line 4470
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 4471
    return-void
.end method

.method private synthetic lambda$showStartUserInBackgroundPrompt$0(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2488
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda23;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda24;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->startUserInBackground(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 2495
    return-void
.end method

.method private synthetic lambda$showStartUserInBackgroundPrompt$1(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Integer;

    .line 2491
    sget v0, Lcom/afwsamples/testdpc/R$string;->user_started_in_background:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "startUserInBackground"

    invoke-direct {p0, v2, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showStartUserInBackgroundPrompt$2(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 2493
    sget v0, Lcom/afwsamples/testdpc/R$string;->failed_to_start_user_in_background:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "startUserInBackground"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorShowToast(Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showStopUserPrompt$0(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2504
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda40;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda41;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda41;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->stopUser(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 2508
    return-void
.end method

.method private synthetic lambda$showStopUserPrompt$1(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Integer;

    .line 2506
    sget v0, Lcom/afwsamples/testdpc/R$string;->user_stopped:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "stopUser"

    invoke-direct {p0, v2, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showStopUserPrompt$2(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 2507
    sget v0, Lcom/afwsamples/testdpc/R$string;->failed_to_stop_user:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "stopUser"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorShowToast(Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showSwitchUserPrompt$0(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2472
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda51;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda51;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda52;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda52;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->switchUser(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 2476
    return-void
.end method

.method private synthetic lambda$showSwitchUserPrompt$1(Ljava/lang/Void;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Void;

    .line 2474
    sget v0, Lcom/afwsamples/testdpc/R$string;->user_switched:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "switchUser"

    invoke-direct {p0, v2, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showSwitchUserPrompt$2(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 2475
    sget v0, Lcom/afwsamples/testdpc/R$string;->failed_to_switch_user:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "switchUser"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorShowToast(Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V

    return-void
.end method

.method private loadAppFeedbackNotifications()V
    .locals 4

    .line 2592
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 2595
    return-void

    .line 2597
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableAppFeedbackNotificationsPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 2598
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$string;->app_feedback_notifications:I

    .line 2599
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2597
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2600
    return-void
.end method

.method private loadAppStatus()V
    .locals 4

    .line 2603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2604
    .local v0, "appStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2605
    iget-boolean v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mIsOrganizationOwnedProfileOwner:Z

    if-eqz v1, :cond_0

    .line 2606
    sget v1, Lcom/afwsamples/testdpc/R$string;->this_is_an_org_owned_profile_owner:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2608
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$string;->this_is_a_profile_owner:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2610
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2611
    sget v1, Lcom/afwsamples/testdpc/R$string;->this_is_a_device_owner:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2612
    :cond_2
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/common/Util;->isDelegatedApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2613
    sget v1, Lcom/afwsamples/testdpc/R$string;->this_is_a_delegated_app:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2615
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/common/Util;->isDeviceManagementRoleHolder(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2616
    sget v1, Lcom/afwsamples/testdpc/R$string;->this_is_a_role_holder:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2619
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "app_status"

    if-eqz v1, :cond_5

    .line 2620
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$string;->this_is_not_an_admin:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 2621
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    .line 2622
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 2624
    :cond_6
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 2627
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda54;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda54;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 2626
    const-string v3, "\n"

    invoke-static {v3, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 2625
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2630
    :goto_1
    return-void
.end method

.method private loadEnrollmentSpecificId()V
    .locals 3

    .line 2655
    const-string v0, "enrollment_specific_id"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 2656
    .local v0, "enrollmentSpecificIdPreference":Landroidx/preference/Preference;
    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2657
    return-void

    .line 2660
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getEnrollmentSpecificId()Ljava/lang/String;

    move-result-object v1

    .line 2662
    .local v1, "esid":Ljava/lang/String;
    nop

    .line 2663
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/afwsamples/testdpc/R$string;->enrollment_specific_id_empty:I

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 2662
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2664
    return-void
.end method

.method private loadIsEphemeralUserUi()V
    .locals 3

    .line 2851
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEphemeralUserPreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2852
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isEphemeralUser(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2853
    .local v0, "isEphemeralUser":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEphemeralUserPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    sget v2, Lcom/afwsamples/testdpc/R$string;->yes:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/afwsamples/testdpc/R$string;->no:I

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 2855
    .end local v0    # "isEphemeralUser":Z
    :cond_1
    return-void
.end method

.method private loadPasswordComplexity()V
    .locals 8

    .line 2679
    const-string v0, "password_complexity"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 2680
    .local v0, "passwordComplexityPreference":Landroidx/preference/Preference;
    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2681
    return-void

    .line 2685
    :cond_0
    sget-object v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordComplexity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 2686
    .local v1, "complexity":I
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isManagedProfileOwner()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    .line 2687
    sget-object v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mParentDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 2688
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordComplexity()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 2689
    .local v2, "parentComplexity":I
    sget v3, Lcom/afwsamples/testdpc/R$string;->password_complexity_profile_summary:I

    .line 2691
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2692
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2693
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    .line 2690
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2694
    .local v2, "summary":Ljava/lang/String;
    goto :goto_0

    .line 2695
    .end local v2    # "summary":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2697
    .restart local v2    # "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2698
    return-void
.end method

.method private loadPasswordCompliant()V
    .locals 10

    .line 2758
    const-string v0, "password_compliant"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 2759
    .local v0, "passwordCompliantPreference":Landroidx/preference/Preference;
    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2760
    return-void

    .line 2764
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v1

    .line 2765
    .local v1, "compliant":Z
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isManagedProfileOwner()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 2766
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mParentDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v2

    .line 2768
    .local v2, "parentCompliant":Z
    sget v5, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v6, 0x1f

    if-ge v5, v6, :cond_1

    .line 2769
    const-string v5, "N/A"

    .local v5, "deviceCompliant":Ljava/lang/String;
    goto :goto_0

    .line 2771
    .end local v5    # "deviceCompliant":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mParentDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 2773
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficientForDeviceRequirement()Z

    move-result v5

    .line 2772
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    .line 2775
    .restart local v5    # "deviceCompliant":Ljava/lang/String;
    :goto_0
    sget v6, Lcom/afwsamples/testdpc/R$string;->password_compliant_profile_summary:I

    .line 2777
    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2778
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    .line 2780
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v3

    aput-object v5, v9, v4

    const/4 v3, 0x2

    aput-object v8, v9, v3

    .line 2776
    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2781
    .end local v5    # "deviceCompliant":Ljava/lang/String;
    .local v2, "summary":Ljava/lang/String;
    goto :goto_1

    .line 2782
    .end local v2    # "summary":Ljava/lang/String;
    :cond_2
    sget v2, Lcom/afwsamples/testdpc/R$string;->password_compliant_summary:I

    .line 2784
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    .line 2783
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2786
    .restart local v2    # "summary":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2787
    return-void
.end method

.method private loadRequiredPasswordComplexity()V
    .locals 8

    .line 2706
    nop

    .line 2707
    const-string v0, "required_password_complexity"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 2708
    .local v0, "requiredPasswordComplexityPreference":Landroidx/preference/Preference;
    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2709
    return-void

    .line 2713
    :cond_0
    sget-object v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getRequiredComplexity(Landroid/app/admin/DevicePolicyManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 2714
    .local v1, "complexity":I
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isManagedProfileOwner()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_1

    .line 2715
    sget-object v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mParentDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 2716
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getRequiredComplexity(Landroid/app/admin/DevicePolicyManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 2717
    .local v2, "parentComplexity":I
    sget v3, Lcom/afwsamples/testdpc/R$string;->password_complexity_profile_summary:I

    .line 2719
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2720
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2721
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    .line 2718
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2722
    .local v2, "summary":Ljava/lang/String;
    goto :goto_0

    .line 2723
    .end local v2    # "summary":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2726
    .restart local v2    # "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2727
    return-void
.end method

.method private loadSecurityPatch()V
    .locals 6

    .line 2635
    const-string v0, "security_patch"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 2636
    .local v0, "securityPatchPreference":Landroidx/preference/Preference;
    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2637
    return-void

    .line 2640
    :cond_0
    sget-object v1, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 2643
    .local v1, "buildSecurityPatch":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2648
    .local v2, "date":Ljava/util/Date;
    nop

    .line 2649
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 2650
    .local v3, "display":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2651
    return-void

    .line 2644
    .end local v2    # "date":Ljava/util/Date;
    .end local v3    # "display":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2645
    .local v2, "e":Ljava/text/ParseException;
    sget v3, Lcom/afwsamples/testdpc/R$string;->invalid_security_patch:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 2646
    invoke-virtual {p0, v3, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2645
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2647
    return-void
.end method

.method private loadSeparateChallenge()V
    .locals 6

    .line 2668
    const-string v0, "separate_challenge"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 2669
    .local v0, "separateChallengePreference":Landroidx/preference/Preference;
    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2670
    return-void

    .line 2673
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isUsingUnifiedPassword(Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2674
    .local v1, "separate":Ljava/lang/Boolean;
    sget v3, Lcom/afwsamples/testdpc/R$string;->separate_challenge_summary:I

    .line 2675
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2674
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2676
    return-void
.end method

.method private lockNow()V
    .locals 3

    .line 1560
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isManagedProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1561
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showLockNowPrompt()V

    .line 1562
    return-void

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 1565
    .local v0, "gateway":Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isManagedProfileOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1567
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->forParentProfile(Landroid/content/Context;)Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    move-result-object v0

    .line 1569
    :cond_1
    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda49;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda50;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda50;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->lockNow(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1570
    return-void
.end method

.method private logAndShowToast(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "e"
        }
    .end annotation

    .line 944
    const-string v0, "PolicyManagement"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 945
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    .line 946
    return-void
.end method

.method private logoutUser()V
    .locals 3

    .line 2540
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->logoutUser(Landroid/content/ComponentName;)I

    move-result v0

    .line 2541
    .local v0, "status":I
    nop

    .line 2542
    if-nez v0, :cond_0

    sget v1, Lcom/afwsamples/testdpc/R$string;->user_logouted:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$string;->failed_to_logout_user:I

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 2541
    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 2543
    return-void
.end method

.method private maybeDisableLockTaskPreferences()V
    .locals 6

    .line 994
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 995
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "manage_lock_task"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "check_lock_task_permitted"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string/jumbo v1, "start_lock_task"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string/jumbo v4, "stop_lock_task"

    aput-object v4, v0, v1

    .line 998
    .local v0, "lockTaskPreferences":[Ljava/lang/String;
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 999
    .local v4, "preference":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 1000
    invoke-interface {v5, v3}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setAdminConstraint(I)V

    .line 998
    .end local v4    # "preference":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1003
    .end local v0    # "lockTaskPreferences":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private maybeUpdateProfileMaxTimeOff()V
    .locals 3

    .line 924
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mProfileMaxTimeOff:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 928
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J

    move-result-wide v1

    .line 927
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 926
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "currentValueAsString":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mProfileMaxTimeOff:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 930
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mProfileMaxTimeOff:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 932
    .end local v0    # "currentValueAsString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private onCreateSetNewPasswordWithComplexityPreference()V
    .locals 1

    .line 961
    nop

    .line 962
    const-string v0, "set_new_password_with_complexity"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    .line 963
    .local v0, "complexityPref":Landroidx/preference/ListPreference;
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->addPasswordComplexityListToPreference(Landroidx/preference/ListPreference;)V

    .line 964
    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 965
    return-void
.end method

.method private onCreateSetRequiredPasswordComplexityOnParentPreference()V
    .locals 1

    .line 975
    nop

    .line 976
    const-string v0, "set_required_password_complexity_on_parent"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    .line 977
    .local v0, "requiredParentComplexityPref":Landroidx/preference/ListPreference;
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->addPasswordComplexityListToPreference(Landroidx/preference/ListPreference;)V

    .line 978
    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 979
    return-void
.end method

.method private onCreateSetRequiredPasswordComplexityPreference()V
    .locals 1

    .line 968
    nop

    .line 969
    const-string v0, "set_required_password_complexity"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    .line 970
    .local v0, "requiredComplexityPref":Landroidx/preference/ListPreference;
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->addPasswordComplexityListToPreference(Landroidx/preference/ListPreference;)V

    .line 971
    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 972
    return-void
.end method

.method private onErrorOrFailureShowToast(Ljava/lang/String;Ljava/lang/Exception;II)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "failureMsgId"    # I
    .param p4, "errorMsgId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "e",
            "failureMsgId",
            "errorMsgId"
        }
    .end annotation

    .line 4843
    instance-of v0, p2, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedOperationException;

    const/4 v1, 0x0

    const-string v2, "PolicyManagement"

    if-eqz v0, :cond_0

    .line 4844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " returned false"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4845
    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, p3, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 4847
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when calling "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4848
    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, p4, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4850
    :goto_0
    return-void
.end method

.method private varargs onErrorShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "msgId"    # I
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "msgId",
            "args"
        }
    .end annotation

    .line 4832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "() failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PolicyManagement"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4833
    invoke-direct {p0, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4834
    return-void
.end method

.method private varargs onErrorShowToast(Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "msgId"    # I
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "e",
            "msgId",
            "args"
        }
    .end annotation

    .line 4837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "() failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PolicyManagement"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4838
    invoke-direct {p0, p3, p4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4839
    return-void
.end method

.method private varargs onSuccessShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "msgId"    # I
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "msgId",
            "args"
        }
    .end annotation

    .line 4822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "() succeeded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PolicyManagement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4823
    invoke-direct {p0, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4824
    return-void
.end method

.method private varargs onSuccessShowToastWithHardcodedMessage(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "args"
        }
    .end annotation

    .line 4828
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    .line 4829
    return-void
.end method

.method private static parseInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "defaultValue"
        }
    .end annotation

    .line 2827
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2828
    :catch_0
    move-exception v0

    .line 2829
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method private promptInstallUpdate()V
    .locals 3

    .line 1476
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/afwsamples/testdpc/R$string;->install_update_prompt:I

    .line 1477
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->install_update:I

    .line 1478
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->install_update_prompt_yes:I

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda74;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda74;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 1479
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->install_update_prompt_no:I

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda75;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda75;-><init>()V

    .line 1481
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1482
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1483
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1484
    return-void
.end method

.method private reboot()V
    .locals 3

    .line 4260
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda17;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda18;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->reboot(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 4268
    return-void
.end method

.method private relaunchInLockTaskMode()V
    .locals 5

    .line 4209
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4211
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4212
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4215
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4216
    const/high16 v2, 0x8000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4218
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 4219
    .local v2, "options":Landroid/app/ActivityOptions;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLockTaskEnabled(Z)Landroid/app/ActivityOptions;

    .line 4222
    :try_start_0
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4223
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4226
    goto :goto_0

    .line 4224
    :catch_0
    move-exception v3

    .line 4225
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "You must first allow-list the TestDPC package for LockTask"

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    .line 4227
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_0
    return-void
.end method

.method private reloadAffiliatedApis()V
    .locals 2

    .line 2835
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAffiliatedUserPreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2836
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAffiliatedUserPreference:Landroidx/preference/Preference;

    .line 2837
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isAffiliatedUser()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/afwsamples/testdpc/R$string;->yes:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$string;->no:I

    .line 2836
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 2839
    :cond_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mInstallExistingPackagePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2840
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mManageLockTaskListPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2841
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLockTaskFeaturesPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2842
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mLogoutUserPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2843
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2844
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2845
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2846
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2847
    return-void
.end method

.method private reloadAutoBrightnessUi()V
    .locals 5

    .line 2798
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAutoBrightnessPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2799
    nop

    .line 2801
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2800
    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2802
    .local v0, "brightnessMode":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAutoBrightnessPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2804
    .end local v0    # "brightnessMode":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private reloadCameraDisableOnParentUi()V
    .locals 2

    .line 2865
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mParentDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2866
    .local v0, "isCameraDisabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableCameraOnParentSwitchPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2867
    return-void
.end method

.method private reloadCameraDisableUi()V
    .locals 2

    .line 2859
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2860
    .local v0, "isCameraDisabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableCameraSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 2861
    return-void
.end method

.method private reloadCommonCriteriaModeUi()V
    .locals 3

    .line 2899
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mCommonCriteriaModePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2900
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mCommonCriteriaModePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 2901
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2900
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2903
    :cond_0
    return-void
.end method

.method private reloadEnableBackupServiceUi()V
    .locals 3

    .line 2891
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableBackupServicePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2892
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableBackupServicePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 2893
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isBackupServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2892
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2895
    :cond_0
    return-void
.end method

.method private reloadEnableLogoutUi()V
    .locals 2

    .line 2791
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableLogoutPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2792
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableLogoutPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isLogoutEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2794
    :cond_0
    return-void
.end method

.method private reloadEnableNetworkLoggingUi()V
    .locals 2

    .line 2871
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableNetworkLoggingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2872
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isNetworkLoggingEnabled()Z

    move-result v0

    .line 2873
    .local v0, "isNetworkLoggingEnabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableNetworkLoggingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2874
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestNetworkLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2876
    .end local v0    # "isNetworkLoggingEnabled":Z
    :cond_0
    return-void
.end method

.method private reloadEnableSecurityLoggingUi()V
    .locals 2

    .line 2880
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableSecurityLoggingPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/SwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2881
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 2882
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2883
    .local v0, "securityLoggingEnabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableSecurityLoggingPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 2884
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2885
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestPreRebootSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2887
    .end local v0    # "securityLoggingEnabled":Z
    :cond_0
    return-void
.end method

.method private reloadEnableUsbDataSignalingUi()V
    .locals 2

    .line 2907
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableUsbDataSignalingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2908
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isUsbDataSignalingEnabled()Z

    move-result v0

    .line 2909
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableUsbDataSignalingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2911
    .end local v0    # "enabled":Z
    :cond_0
    return-void
.end method

.method private reloadLocationEnabledUi()V
    .locals 3

    .line 2815
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 2816
    .local v0, "locationManager":Landroid/location/LocationManager;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLocationEnabledPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2817
    return-void
.end method

.method private reloadLocationModeUi()V
    .locals 4

    .line 2808
    nop

    .line 2809
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2810
    .local v0, "locationMode":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLocationModePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->parseInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2811
    return-void
.end method

.method private reloadLockdownAdminConfiguredNetworksUi()V
    .locals 2

    .line 2821
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->hasLockdownAdminConfiguredNetworks(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2822
    .local v0, "lockdown":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mLockdownAdminConfiguredNetworksPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2823
    return-void
.end method

.method private reloadMuteAudioUi()V
    .locals 2

    .line 2957
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mMuteAudioSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/SwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2958
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2959
    .local v0, "isAudioMuted":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mMuteAudioSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 2961
    .end local v0    # "isAudioMuted":Z
    :cond_0
    return-void
.end method

.method private reloadPersonalAppsSuspendedUi()V
    .locals 3

    .line 936
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSuspendPersonalApps:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 938
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I

    move-result v0

    .line 939
    .local v0, "suspendReasons":I
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSuspendPersonalApps:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 941
    .end local v0    # "suspendReasons":I
    :cond_1
    return-void
.end method

.method private reloadScreenCaptureDisableOnParentUi()V
    .locals 2

    .line 2922
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mParentDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 2923
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2924
    .local v0, "isScreenCaptureDisabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableScreenCaptureOnParentSwitchPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2925
    return-void
.end method

.method private reloadScreenCaptureDisableUi()V
    .locals 2

    .line 2915
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 2916
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2917
    .local v0, "isScreenCaptureDisabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableScreenCaptureSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 2918
    return-void
.end method

.method private reloadSetAutoTimeRequiredUi()V
    .locals 2

    .line 2929
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v0

    .line 2930
    .local v0, "isAutoTimeRequired":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimeRequiredPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2931
    return-void
.end method

.method private reloadSetAutoTimeUi()V
    .locals 2

    .line 2935
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 2936
    return-void

    .line 2938
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isOrganizationOwnedDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2939
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2940
    .local v0, "isAutoTime":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2942
    .end local v0    # "isAutoTime":Z
    :cond_1
    return-void
.end method

.method private reloadSetAutoTimeZoneUi()V
    .locals 2

    .line 2946
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 2947
    return-void

    .line 2949
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isOrganizationOwnedDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2950
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeZoneEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2951
    .local v0, "isAutoTimeZone":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimeZonePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2953
    .end local v0    # "isAutoTimeZone":Z
    :cond_1
    return-void
.end method

.method private removeAccount(Landroid/accounts/Account;)V
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 4716
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAccountManager:Landroid/accounts/AccountManager;

    .line 4718
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda70;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda70;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/accounts/Account;)V

    .line 4716
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 4734
    return-void
.end method

.method private removeUser(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userHandle"
        }
    .end annotation

    .line 2447
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda15;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda16;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->removeUser(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 2451
    return-void
.end method

.method private requestBugReport()V
    .locals 3

    .line 1864
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda68;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda68;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda69;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda69;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->requestBugreport(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1872
    return-void
.end method

.method private requestToManageCredentials(Ljava/lang/String;)V
    .locals 8
    .param p1, "policyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "policyStr"
        }
    .end annotation

    .line 3083
    new-instance v0, Landroid/security/AppUriAuthenticationPolicy$Builder;

    invoke-direct {v0}, Landroid/security/AppUriAuthenticationPolicy$Builder;-><init>()V

    .line 3084
    .local v0, "builder":Landroid/security/AppUriAuthenticationPolicy$Builder;
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3085
    .local v1, "policies":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 3086
    aget-object v3, v1, v2

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3087
    .local v3, "segments":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_0

    .line 3088
    sget v4, Lcom/afwsamples/testdpc/R$string;->invalid_app_uri_policy:I

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v6

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    .line 3089
    return-void

    .line 3091
    :cond_0
    aget-object v4, v3, v6

    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    aget-object v6, v3, v7

    .line 3092
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    .line 3091
    invoke-virtual {v0, v4, v5, v6}, Landroid/security/AppUriAuthenticationPolicy$Builder;->addAppAndUriMapping(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/security/AppUriAuthenticationPolicy$Builder;

    .line 3085
    .end local v3    # "segments":[Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3094
    .end local v2    # "i":I
    :cond_1
    nop

    .line 3095
    invoke-virtual {v0}, Landroid/security/AppUriAuthenticationPolicy$Builder;->build()Landroid/security/AppUriAuthenticationPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/security/KeyChain;->createManageCredentialsIntent(Landroid/security/AppUriAuthenticationPolicy;)Landroid/content/Intent;

    move-result-object v2

    .line 3094
    const/16 v3, 0x1e0e

    invoke-virtual {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3097
    return-void
.end method

.method private resetCredentialManagerPolicy()V
    .locals 2

    .line 2965
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->setCredentialManagerPolicy(Landroid/app/admin/PackagePolicy;)V

    .line 2966
    sget v0, Lcom/afwsamples/testdpc/R$string;->credential_manager_policy_applied_toast:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 2967
    return-void
.end method

.method private setAutoTimeEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 4813
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setAutoTimeEnabled(Landroid/content/ComponentName;Z)V

    .line 4814
    return-void
.end method

.method private setAutoTimeZoneEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 4818
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setAutoTimeZoneEnabled(Landroid/content/ComponentName;Z)V

    .line 4819
    return-void
.end method

.method private setBackupServiceEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1788
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setBackupServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 1789
    return-void
.end method

.method private setCameraDisabled(Z)V
    .locals 2
    .param p1, "disabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disabled"
        }
    .end annotation

    .line 1773
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 1774
    return-void
.end method

.method private setCameraDisabledOnParent(Z)V
    .locals 2
    .param p1, "disabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disabled"
        }
    .end annotation

    .line 1778
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mParentDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 1779
    return-void
.end method

.method private setCommonCriteriaModeEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1793
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setCommonCriteriaModeEnabled(Landroid/content/ComponentName;Z)V

    .line 1794
    return-void
.end method

.method private setDisableAccountManagement(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountType",
            "disabled"
        }
    .end annotation

    .line 2318
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2319
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 2320
    nop

    .line 2321
    if-eqz p2, :cond_0

    sget v0, Lcom/afwsamples/testdpc/R$string;->account_management_disabled:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$string;->account_management_enabled:I

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 2320
    invoke-direct {p0, v0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 2323
    return-void

    .line 2325
    :cond_1
    sget v0, Lcom/afwsamples/testdpc/R$string;->fail_to_set_account_management:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 2326
    return-void
.end method

.method private setKeyGuardDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disabled"
        }
    .end annotation

    .line 1808
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda12;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Z)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda13;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Z)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setKeyguardDisabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1815
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1817
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1818
    sget v1, Lcom/afwsamples/testdpc/R$string;->unable_disable_keyguard:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1820
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$string;->unable_enable_keyguard:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 1823
    :cond_1
    :goto_0
    return-void
.end method

.method private setNotificationAllowlistEditBox()V
    .locals 6

    .line 4066
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4069
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4070
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 4071
    .local v1, "input":Landroid/widget/EditText;
    sget v2, Lcom/afwsamples/testdpc/R$string;->set_notification_listener_text_hint:I

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 4072
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 4073
    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v2

    .line 4074
    .local v2, "enabledComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 4075
    const-string v3, "null"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4077
    :cond_1
    const-string v3, ", "

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4080
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/afwsamples/testdpc/R$string;->set_notification_listener_text_hint:I

    .line 4081
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4082
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda46;

    invoke-direct {v4, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda46;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 4083
    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda47;

    invoke-direct {v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda47;-><init>()V

    .line 4095
    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4097
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4098
    return-void

    .line 4067
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "input":Landroid/widget/EditText;
    .end local v2    # "enabledComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-void
.end method

.method private setPermittedInputMethodsOnParent()V
    .locals 6

    .line 4033
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4036
    :cond_0
    nop

    .line 4037
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->forParentProfile(Landroid/content/Context;)Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    move-result-object v0

    .line 4038
    .local v0, "parentDpmGateway":Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    nop

    .line 4039
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$layout;->permitted_input_methods_on_parent:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4041
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/afwsamples/testdpc/R$id;->all_input_methods_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 4042
    .local v2, "allInputMethodsButton":Landroid/widget/Button;
    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda62;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda62;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4050
    sget v3, Lcom/afwsamples/testdpc/R$id;->system_input_methods_button:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 4051
    .local v3, "systemInputMethodsButton":Landroid/widget/Button;
    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda63;

    invoke-direct {v4, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda63;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4060
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4061
    return-void

    .line 4034
    .end local v0    # "parentDpmGateway":Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "allInputMethodsButton":Landroid/widget/Button;
    .end local v3    # "systemInputMethodsButton":Landroid/widget/Button;
    :cond_1
    :goto_0
    return-void
.end method

.method private setPermittedNotificationListeners(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permittedNotificationListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4134
    .local p1, "permittedNotificationListeners":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 4135
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v0

    .line 4138
    .local v0, "result":Z
    if-nez p1, :cond_0

    .line 4139
    sget v1, Lcom/afwsamples/testdpc/R$string;->all_notification_listeners_enabled:I

    goto :goto_0

    .line 4140
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$string;->set_notification_listeners_successful:I

    :goto_0
    nop

    .line 4141
    .local v1, "successMsgId":I
    if-eqz v0, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    sget v2, Lcom/afwsamples/testdpc/R$string;->set_notification_listeners_fail:I

    :goto_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4142
    return-void
.end method

.method private setPreferenceChangeListeners([Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preferenceKeys"
        }
    .end annotation

    .line 2181
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2182
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2181
    .end local v2    # "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2184
    :cond_0
    return-void
.end method

.method private setRequiredPasswordComplexity(I)V
    .locals 1
    .param p1, "complexity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "complexity"
        }
    .end annotation

    .line 2734
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setRequiredPasswordComplexity(Landroid/app/admin/DevicePolicyManager;I)V

    .line 2735
    return-void
.end method

.method private setRequiredPasswordComplexity(Landroid/app/admin/DevicePolicyManager;I)V
    .locals 0
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "complexity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dpm",
            "complexity"
        }
    .end annotation

    .line 2750
    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManager;->setRequiredPasswordComplexity(I)V

    .line 2751
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadPasswordCompliant()V

    .line 2752
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadPasswordComplexity()V

    .line 2753
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadRequiredPasswordComplexity()V

    .line 2754
    return-void
.end method

.method private setRequiredPasswordComplexityOnParent(I)V
    .locals 1
    .param p1, "complexity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "complexity"
        }
    .end annotation

    .line 2742
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mParentDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setRequiredPasswordComplexity(Landroid/app/admin/DevicePolicyManager;I)V

    .line 2743
    return-void
.end method

.method private setScreenCaptureDisabled(Z)V
    .locals 2
    .param p1, "disabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disabled"
        }
    .end annotation

    .line 1827
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V

    .line 1828
    return-void
.end method

.method private setScreenCaptureDisabledOnParent(Z)V
    .locals 2
    .param p1, "disabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disabled"
        }
    .end annotation

    .line 1832
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mParentDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V

    .line 1833
    return-void
.end method

.method private setSecurityLoggingEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1783
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Z)V

    .line 1784
    return-void
.end method

.method private setStatusBarDisabled(Z)V
    .locals 2
    .param p1, "disable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disable"
        }
    .end annotation

    .line 1876
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1877
    if-eqz p1, :cond_0

    .line 1878
    const-string v0, "Unable to disable status bar when lock password is set."

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    .line 1881
    :cond_0
    return-void
.end method

.method private setUsbDataSignalingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1798
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setUsbDataSignalingEnabled(Z)V

    .line 1799
    return-void
.end method

.method private showBlockUninstallationByPackageNamePrompt()V
    .locals 8

    .line 2547
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2548
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2551
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2552
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2553
    .local v2, "input":Landroid/widget/EditText;
    sget v4, Lcom/afwsamples/testdpc/R$string;->input_package_name_hints:I

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2554
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2555
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    sget v5, Lcom/afwsamples/testdpc/R$string;->block_uninstallation_title:I

    .line 2556
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 2557
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/afwsamples/testdpc/R$string;->block:I

    new-instance v7, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$17;

    invoke-direct {v7, p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$17;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 2558
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/afwsamples/testdpc/R$string;->unblock:I

    new-instance v7, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$16;

    invoke-direct {v7, p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$16;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 2572
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 2586
    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2587
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2588
    return-void

    .line 2549
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "input":Landroid/widget/EditText;
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    :goto_0
    return-void
.end method

.method private showBlockUninstallationPrompt()V
    .locals 8

    .line 3495
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3496
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3500
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3501
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 3502
    .local v1, "applicationInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3503
    .local v2, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v3, v4}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3505
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 3507
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 3508
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 3509
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 3510
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3512
    .end local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    goto :goto_0

    .line 3514
    :cond_2
    new-instance v3, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;

    .line 3516
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    sget v5, Lcom/afwsamples/testdpc/R$id;->pkg_name:I

    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/content/ComponentName;)V

    .line 3517
    .local v3, "blockUninstallationInfoArrayAdapter":Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;
    new-instance v4, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 3518
    .local v4, "listview":Landroid/widget/ListView;
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3519
    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;

    invoke-direct {v5, p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3526
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/afwsamples/testdpc/R$string;->block_uninstallation_title:I

    .line 3527
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 3528
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/afwsamples/testdpc/R$string;->close:I

    .line 3529
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 3530
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3531
    return-void

    .line 3497
    .end local v1    # "applicationInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "blockUninstallationInfoArrayAdapter":Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;
    .end local v4    # "listview":Landroid/widget/ListView;
    :cond_3
    :goto_1
    return-void
.end method

.method private showCaCertificateList()V
    .locals 2

    .line 3431
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3435
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mShowCaCertificateListTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mShowCaCertificateListTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3436
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mShowCaCertificateListTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->cancel(Z)Z

    .line 3438
    :cond_1
    new-instance v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/policy/PolicyManagementFragment-IA;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mShowCaCertificateListTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;

    .line 3439
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mShowCaCertificateListTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3440
    return-void

    .line 3432
    :cond_2
    :goto_0
    return-void
.end method

.method private showCheckLockTaskPermittedPrompt()V
    .locals 5

    .line 1997
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2000
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2001
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2002
    .local v1, "input":Landroid/widget/EditText;
    sget v2, Lcom/afwsamples/testdpc/R$string;->input_package_name_hints:I

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2004
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/afwsamples/testdpc/R$string;->check_lock_task_permitted:I

    .line 2005
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2006
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$8;

    invoke-direct {v3, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$8;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 2007
    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$7;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$7;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 2022
    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2030
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2031
    return-void

    .line 1998
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "input":Landroid/widget/EditText;
    :cond_1
    :goto_0
    return-void
.end method

.method private showChooseUserPrompt(ILcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;)V
    .locals 4
    .param p1, "titleResId"    # I
    .param p2, "callback"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "titleResId",
            "callback"
        }
    .end annotation

    .line 2518
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2522
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 2523
    .local v0, "secondaryUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2524
    sget v1, Lcom/afwsamples/testdpc/R$string;->no_secondary_users_available:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 2526
    :cond_1
    new-instance v1, Lcom/afwsamples/testdpc/common/UserArrayAdapter;

    .line 2527
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/afwsamples/testdpc/R$id;->user_name:I

    invoke-direct {v1, v2, v3, v0}, Lcom/afwsamples/testdpc/common/UserArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2528
    .local v1, "userArrayAdapter":Lcom/afwsamples/testdpc/common/UserArrayAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2529
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda30;

    invoke-direct {v3, p2, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda30;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;Ljava/util/List;)V

    .line 2530
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2533
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2535
    .end local v1    # "userArrayAdapter":Lcom/afwsamples/testdpc/common/UserArrayAdapter;
    :goto_0
    return-void

    .line 2519
    .end local v0    # "secondaryUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :cond_2
    :goto_1
    return-void
.end method

.method private showClearAppDataPrompt()V
    .locals 5

    .line 3858
    nop

    .line 3859
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getAllInstalledApplicationsSorted()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda28;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda28;-><init>()V

    .line 3860
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 3861
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3862
    .local v0, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3863
    sget v1, Lcom/afwsamples/testdpc/R$string;->clear_app_data_empty:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 3865
    :cond_0
    new-instance v1, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;

    .line 3866
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/afwsamples/testdpc/R$id;->pkg_name:I

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 3867
    .local v1, "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/afwsamples/testdpc/R$string;->clear_app_data_title:I

    .line 3868
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda29;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda29;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;)V

    .line 3869
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 3872
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3874
    .end local v1    # "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    :goto_0
    return-void
.end method

.method private showConfigurePolicyAndManageCredentialsPrompt()V
    .locals 8

    .line 3040
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3043
    :cond_0
    const-string v0, "appUriPolicy"

    .line 3044
    .local v0, "appUriPolicyName":Ljava/lang/String;
    const-string v1, "com.android.chrome#client.badssl.com:443#testAlias\ncom.android.chrome#prod.idrix.eu/secure#testAlias\nde.blinkt.openvpn#192.168.0.1#vpnAlias"

    .line 3048
    .local v1, "defaultPolicy":Ljava/lang/String;
    nop

    .line 3049
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 3050
    .local v2, "inputContainer":Landroid/widget/LinearLayout;
    sget v3, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 3051
    .local v3, "editText":Landroid/widget/EditText;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 3052
    const-string v5, "com.android.chrome#client.badssl.com:443#testAlias\ncom.android.chrome#prod.idrix.eu/secure#testAlias\nde.blinkt.openvpn#192.168.0.1#vpnAlias"

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3053
    nop

    .line 3054
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3055
    const-string v7, "appUriPolicy"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3053
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3057
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/afwsamples/testdpc/R$string;->request_manage_credentials:I

    .line 3058
    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 3059
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;

    invoke-direct {v6, p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 3060
    const v7, 0x104000a

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 3078
    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 3079
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3080
    return-void

    .line 3041
    .end local v0    # "appUriPolicyName":Ljava/lang/String;
    .end local v1    # "defaultPolicy":Ljava/lang/String;
    .end local v2    # "inputContainer":Landroid/widget/LinearLayout;
    .end local v3    # "editText":Landroid/widget/EditText;
    :cond_1
    :goto_0
    return-void
.end method

.method private showCreateAndManageUserPrompt()V
    .locals 9

    .line 2358
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2362
    :cond_0
    nop

    .line 2363
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2364
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->create_and_manage_user_dialog_prompt:I

    .line 2365
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2367
    .local v0, "dialogView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->user_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    .line 2368
    .local v5, "userNameEditText":Landroid/widget/EditText;
    sget v1, Lcom/afwsamples/testdpc/R$string;->enter_username_hint:I

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 2369
    sget v1, Lcom/afwsamples/testdpc/R$id;->skip_setup_wizard_checkbox:I

    .line 2370
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/CheckBox;

    .line 2371
    .local v6, "skipSetupWizardCheckBox":Landroid/widget/CheckBox;
    sget v1, Lcom/afwsamples/testdpc/R$id;->make_user_ephemeral_checkbox:I

    .line 2372
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/CheckBox;

    .line 2373
    .local v7, "makeUserEphemeralCheckBox":Landroid/widget/CheckBox;
    sget v1, Lcom/afwsamples/testdpc/R$id;->leave_all_system_apps_enabled_checkbox:I

    .line 2374
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/CheckBox;

    .line 2375
    .local v8, "leaveAllSystemAppsEnabled":Landroid/widget/CheckBox;
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v1, v3, :cond_1

    .line 2376
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2377
    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2380
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/afwsamples/testdpc/R$string;->create_and_manage_user:I

    .line 2381
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2382
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    .line 2383
    const v4, 0x104000a

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2410
    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2411
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2412
    return-void

    .line 2359
    .end local v0    # "dialogView":Landroid/view/View;
    .end local v5    # "userNameEditText":Landroid/widget/EditText;
    .end local v6    # "skipSetupWizardCheckBox":Landroid/widget/CheckBox;
    .end local v7    # "makeUserEphemeralCheckBox":Landroid/widget/CheckBox;
    .end local v8    # "leaveAllSystemAppsEnabled":Landroid/widget/CheckBox;
    :cond_2
    :goto_0
    return-void
.end method

.method private showCredentialManagerPolicyDialog(I)V
    .locals 5
    .param p1, "policyType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "policyType"
        }
    .end annotation

    .line 2971
    nop

    .line 2972
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2973
    .local v0, "inputContainer":Landroid/widget/LinearLayout;
    sget v1, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2975
    .local v1, "editText":Landroid/widget/EditText;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/afwsamples/testdpc/R$string;->credential_manager_policy_title:I

    .line 2976
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2977
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$19;

    invoke-direct {v3, p0, v1, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$19;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;I)V

    .line 2978
    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$18;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$18;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 2996
    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 3004
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3005
    return-void
.end method

.method private showDisableAccountTypeList()V
    .locals 6

    .line 2330
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2333
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabled()[Ljava/lang/String;

    move-result-object v0

    .line 2334
    .local v0, "disabledAccountTypeList":[Ljava/lang/String;
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2335
    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_0

    .line 2338
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/afwsamples/testdpc/R$string;->list_of_disabled_account_types:I

    .line 2339
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 2342
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1090003

    const v5, 0x1020014

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 2340
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2347
    const v2, 0x104000a

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2348
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 2336
    :cond_2
    :goto_0
    sget v1, Lcom/afwsamples/testdpc/R$string;->no_disabled_account:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 2350
    :goto_1
    return-void

    .line 2331
    .end local v0    # "disabledAccountTypeList":[Ljava/lang/String;
    :cond_3
    :goto_2
    return-void
.end method

.method private showEapTlsWifiConfigCreationDialog()V
    .locals 3

    .line 4254
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->newInstance(Landroid/net/wifi/WifiConfiguration;)Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;

    move-result-object v0

    .line 4255
    .local v0, "fragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 4256
    return-void
.end method

.method private showEnableSystemAppByPackageNamePrompt()V
    .locals 6

    .line 3009
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3012
    :cond_0
    nop

    .line 3013
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3014
    .local v0, "inputContainer":Landroid/widget/LinearLayout;
    sget v1, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 3015
    .local v1, "editText":Landroid/widget/EditText;
    sget v3, Lcom/afwsamples/testdpc/R$string;->package_name_hints:I

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3017
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/afwsamples/testdpc/R$string;->enable_system_apps_title:I

    .line 3018
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 3019
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda73;

    invoke-direct {v4, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda73;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 3020
    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 3035
    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 3036
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3037
    return-void

    .line 3010
    .end local v0    # "inputContainer":Landroid/widget/LinearLayout;
    .end local v1    # "editText":Landroid/widget/EditText;
    :cond_1
    :goto_0
    return-void
.end method

.method private showEnableSystemAppsPrompt()V
    .locals 5

    .line 3538
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getDisabledSystemApps()Ljava/util/List;

    move-result-object v0

    .line 3540
    .local v0, "disabledSystemApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3541
    sget v1, Lcom/afwsamples/testdpc/R$string;->no_disabled_system_apps:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 3543
    :cond_0
    new-instance v1, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;

    .line 3544
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/afwsamples/testdpc/R$id;->pkg_name:I

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 3545
    .local v1, "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/afwsamples/testdpc/R$string;->enable_system_apps_title:I

    .line 3546
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda53;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda53;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;)V

    .line 3547
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 3560
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3562
    .end local v1    # "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    :goto_0
    return-void
.end method

.method private showFragment(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fragment"
        }
    .end annotation

    .line 4190
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 4191
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    nop

    .line 4192
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 4193
    const-class v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$id;->container:I

    .line 4194
    invoke-virtual {v1, v2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 4195
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 4196
    return-void
.end method

.method private showFragment(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "fragment",
            "tag"
        }
    .end annotation

    .line 4199
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 4200
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    nop

    .line 4201
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 4202
    const-class v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$id;->container:I

    .line 4203
    invoke-virtual {v1, v2, p1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 4204
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 4205
    return-void
.end method

.method private showGrantKeyPairToAppDialog()V
    .locals 7

    .line 4536
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4540
    :cond_0
    nop

    .line 4541
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->grant_key_pair_to_app_prompt:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4543
    .local v0, "dialogView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->keyPairAlias:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 4544
    .local v1, "keyPairAliasTextEdit":Landroid/widget/EditText;
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4545
    sget v4, Lcom/afwsamples/testdpc/R$id;->packageName:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 4546
    .local v4, "packageNameTextEdit":Landroid/widget/EditText;
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4548
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/afwsamples/testdpc/R$string;->grant_key_pair_title:I

    .line 4549
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4550
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v5, Lcom/afwsamples/testdpc/R$string;->grant_button:I

    new-instance v6, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda27;

    invoke-direct {v6, p0, v1, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda27;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 4551
    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4568
    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 4569
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4570
    return-void

    .line 4537
    .end local v0    # "dialogView":Landroid/view/View;
    .end local v1    # "keyPairAliasTextEdit":Landroid/widget/EditText;
    .end local v4    # "packageNameTextEdit":Landroid/widget/EditText;
    :cond_1
    :goto_0
    return-void
.end method

.method private showHideAppsOnParentPrompt(Z)V
    .locals 10
    .param p1, "showHiddenApps"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "showHiddenApps"
        }
    .end annotation

    .line 3706
    if-eqz p1, :cond_0

    .line 3708
    sget v0, Lcom/afwsamples/testdpc/R$string;->unhide_apps_parent_title:I

    .line 3709
    .local v0, "dialogTitleResId":I
    sget v1, Lcom/afwsamples/testdpc/R$string;->unhide_apps_success:I

    .line 3710
    .local v1, "successResId":I
    sget v2, Lcom/afwsamples/testdpc/R$string;->unhide_apps_failure:I

    .line 3711
    .local v2, "failureResId":I
    sget v3, Lcom/afwsamples/testdpc/R$string;->unhide_apps_system_failure:I

    move v5, v1

    move v6, v2

    move v7, v3

    .local v3, "failureSystemResId":I
    goto :goto_0

    .line 3714
    .end local v0    # "dialogTitleResId":I
    .end local v1    # "successResId":I
    .end local v2    # "failureResId":I
    .end local v3    # "failureSystemResId":I
    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$string;->hide_apps_parent_title:I

    .line 3715
    .restart local v0    # "dialogTitleResId":I
    sget v1, Lcom/afwsamples/testdpc/R$string;->hide_apps_success:I

    .line 3716
    .restart local v1    # "successResId":I
    sget v2, Lcom/afwsamples/testdpc/R$string;->hide_apps_failure:I

    .line 3717
    .restart local v2    # "failureResId":I
    sget v3, Lcom/afwsamples/testdpc/R$string;->hide_apps_system_failure:I

    move v5, v1

    move v6, v2

    move v7, v3

    .line 3720
    .end local v1    # "successResId":I
    .end local v2    # "failureResId":I
    .local v5, "successResId":I
    .local v6, "failureResId":I
    .local v7, "failureSystemResId":I
    :goto_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 3721
    .local v8, "view":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/EditText;

    .line 3722
    .local v3, "input":Landroid/widget/EditText;
    sget v1, Lcom/afwsamples/testdpc/R$string;->input_package_name_hints:I

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3724
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3725
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3726
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda19;

    move-object v2, p0

    move v4, p1

    .end local p1    # "showHiddenApps":Z
    .local v4, "showHiddenApps":Z
    invoke-direct/range {v1 .. v7}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda19;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;ZIII)V

    .line 3727
    const p1, 0x104000a

    invoke-virtual {v9, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda20;-><init>()V

    .line 3743
    const/high16 v2, 0x1040000

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3744
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3745
    return-void
.end method

.method private showHideAppsPrompt(Z)V
    .locals 9
    .param p1, "showHiddenApps"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "showHiddenApps"
        }
    .end annotation

    .line 3641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 3642
    .local v3, "showApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 3644
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getAllInstalledApplicationsSorted()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 3645
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/app/admin/DevicePolicyManager;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3647
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3649
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_2

    .line 3652
    :cond_2
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getAllLauncherIntentResolversSorted()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 3653
    .local v1, "res":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3654
    invoke-virtual {v2, v4, v5}, Landroid/app/admin/DevicePolicyManager;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3656
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3658
    .end local v1    # "res":Landroid/content/pm/ResolveInfo;
    :cond_3
    goto :goto_1

    .line 3661
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3662
    if-eqz p1, :cond_5

    sget v0, Lcom/afwsamples/testdpc/R$string;->unhide_apps_empty:I

    goto :goto_3

    :cond_5
    sget v0, Lcom/afwsamples/testdpc/R$string;->hide_apps_empty:I

    :goto_3
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    move v4, p1

    goto :goto_5

    .line 3664
    :cond_6
    new-instance v0, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;

    .line 3665
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$id;->pkg_name:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 3669
    .local v0, "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    if-eqz p1, :cond_7

    .line 3671
    sget v1, Lcom/afwsamples/testdpc/R$string;->unhide_apps_title:I

    .line 3672
    .local v1, "dialogTitleResId":I
    sget v2, Lcom/afwsamples/testdpc/R$string;->unhide_apps_success:I

    .line 3673
    .local v2, "successResId":I
    sget v4, Lcom/afwsamples/testdpc/R$string;->unhide_apps_failure:I

    move v7, v1

    move v5, v2

    move v6, v4

    .local v4, "failureResId":I
    goto :goto_4

    .line 3676
    .end local v1    # "dialogTitleResId":I
    .end local v2    # "successResId":I
    .end local v4    # "failureResId":I
    :cond_7
    sget v1, Lcom/afwsamples/testdpc/R$string;->hide_apps_title:I

    .line 3677
    .restart local v1    # "dialogTitleResId":I
    sget v2, Lcom/afwsamples/testdpc/R$string;->hide_apps_success:I

    .line 3678
    .restart local v2    # "successResId":I
    sget v4, Lcom/afwsamples/testdpc/R$string;->hide_apps_failure:I

    move v7, v1

    move v5, v2

    move v6, v4

    .line 3680
    .end local v1    # "dialogTitleResId":I
    .end local v2    # "successResId":I
    .local v5, "successResId":I
    .local v6, "failureResId":I
    .local v7, "dialogTitleResId":I
    :goto_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3681
    invoke-virtual {p0, v7}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$29;

    move-object v2, p0

    move v4, p1

    .end local p1    # "showHiddenApps":Z
    .local v4, "showHiddenApps":Z
    invoke-direct/range {v1 .. v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$29;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;ZII)V

    .line 3682
    invoke-virtual {v8, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3696
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3698
    .end local v0    # "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    .end local v5    # "successResId":I
    .end local v6    # "failureResId":I
    .end local v7    # "dialogTitleResId":I
    :goto_5
    return-void
.end method

.method private showInstallExistingPackagePrompt()V
    .locals 6

    .line 3567
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3570
    :cond_0
    nop

    .line 3571
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3572
    .local v0, "inputContainer":Landroid/widget/LinearLayout;
    sget v1, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 3573
    .local v1, "editText":Landroid/widget/EditText;
    sget v3, Lcom/afwsamples/testdpc/R$string;->package_name_hints:I

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3575
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/afwsamples/testdpc/R$string;->install_existing_packages_title:I

    .line 3576
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 3577
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda9;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 3578
    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 3591
    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 3592
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3593
    return-void

    .line 3568
    .end local v0    # "inputContainer":Landroid/widget/LinearLayout;
    .end local v1    # "editText":Landroid/widget/EditText;
    :cond_1
    :goto_0
    return-void
.end method

.method private showLockNowPrompt()V
    .locals 8

    .line 1575
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1576
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/afwsamples/testdpc/R$layout;->lock_now_dialog_prompt:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1577
    .local v1, "dialogView":Landroid/view/View;
    sget v3, Lcom/afwsamples/testdpc/R$id;->lock_parent_checkbox:I

    .line 1578
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 1579
    .local v3, "lockParentCheckBox":Landroid/widget/CheckBox;
    sget v4, Lcom/afwsamples/testdpc/R$id;->evict_ce_key_checkbox:I

    .line 1580
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 1582
    .local v4, "evictKeyCheckBox":Landroid/widget/CheckBox;
    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda34;

    invoke-direct {v5, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda34;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1584
    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda35;

    invoke-direct {v5, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda35;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1587
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/afwsamples/testdpc/R$string;->lock_now:I

    .line 1588
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1589
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda36;

    invoke-direct {v6, p0, v4, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda36;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    .line 1590
    const v7, 0x104000a

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1604
    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1605
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1606
    return-void
.end method

.method private showManageLockTaskListPrompt(ILcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;)V
    .locals 9
    .param p1, "dialogTitle"    # I
    .param p2, "callback"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "dialogTitle",
            "callback"
        }
    .end annotation

    .line 1941
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1944
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->getLauncherIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1945
    .local v0, "launcherIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1946
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1947
    .local v1, "primaryUserAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1948
    .local v3, "homeIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1950
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 1951
    .local v4, "defaultLauncher":Landroid/content/pm/ResolveInfo;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1952
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1953
    sget v5, Lcom/afwsamples/testdpc/R$string;->no_primary_app_available:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v5, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1955
    :cond_1
    new-instance v2, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v2, v5}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1956
    new-instance v2, Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;

    .line 1957
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget v6, Lcom/afwsamples/testdpc/R$id;->pkg_name:I

    invoke-direct {v2, v5, v6, v1}, Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1958
    .local v2, "appInfoArrayAdapter":Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;
    new-instance v5, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1959
    .local v5, "listView":Landroid/widget/ListView;
    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1960
    new-instance v6, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$4;

    invoke-direct {v6, p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$4;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1968
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1969
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1970
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$6;

    invoke-direct {v7, p0, v2, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$6;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;)V

    .line 1971
    const v8, 0x104000a

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$5;

    invoke-direct {v7, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$5;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 1980
    const/high16 v8, 0x1040000

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1988
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1990
    .end local v2    # "appInfoArrayAdapter":Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;
    .end local v5    # "listView":Landroid/widget/ListView;
    :goto_0
    return-void

    .line 1942
    .end local v0    # "launcherIntent":Landroid/content/Intent;
    .end local v1    # "primaryUserAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "homeIntent":Landroid/content/Intent;
    .end local v4    # "defaultLauncher":Landroid/content/pm/ResolveInfo;
    :cond_2
    :goto_1
    return-void
.end method

.method private showMtePolicyDialog()V
    .locals 4

    .line 1459
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1463
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getMtePolicy()I

    move-result v0

    .line 1464
    .local v0, "policy":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/afwsamples/testdpc/R$string;->mte_policy:I

    .line 1465
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$array;->mte_policy_options:I

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda56;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda56;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 1466
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$string;->close:I

    .line 1470
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1471
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1472
    return-void

    .line 1460
    .end local v0    # "policy":I
    :cond_1
    :goto_0
    return-void
.end method

.method private showNearbyAppStreamingDialog()V
    .locals 4

    .line 4337
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4341
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getNearbyAppStreamingPolicy()I

    move-result v0

    .line 4342
    .local v0, "policy":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/afwsamples/testdpc/R$string;->nearby_app_streaming:I

    .line 4343
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$array;->nearby_streaming_policies:I

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda21;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 4344
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$string;->close:I

    .line 4348
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 4349
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4350
    return-void

    .line 4338
    .end local v0    # "policy":I
    :cond_1
    :goto_0
    return-void
.end method

.method private showNearbyNotificationStreamingDialog()V
    .locals 4

    .line 4321
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4325
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getNearbyNotificationStreamingPolicy()I

    move-result v0

    .line 4326
    .local v0, "policy":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/afwsamples/testdpc/R$string;->nearby_notification_streaming:I

    .line 4327
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$array;->nearby_streaming_policies:I

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda26;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda26;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 4328
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$string;->close:I

    .line 4332
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 4333
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4334
    return-void

    .line 4322
    .end local v0    # "policy":I
    :cond_1
    :goto_0
    return-void
.end method

.method private showPendingSystemUpdate()V
    .locals 11

    .line 1531
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 1532
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v0

    .line 1533
    .local v0, "updateInfo":Landroid/app/admin/SystemUpdateInfo;
    if-nez v0, :cond_0

    .line 1534
    sget v1, Lcom/afwsamples/testdpc/R$string;->update_info_no_update_toast:I

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 1536
    :cond_0
    invoke-virtual {v0}, Landroid/app/admin/SystemUpdateInfo;->getReceivedTime()J

    move-result-wide v1

    .line 1537
    .local v1, "timestamp":J
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1538
    .local v3, "date":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/admin/SystemUpdateInfo;->getSecurityPatchState()I

    move-result v4

    .line 1540
    .local v4, "securityState":I
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    .line 1541
    sget v7, Lcom/afwsamples/testdpc/R$string;->update_info_security_false:I

    invoke-virtual {p0, v7}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1542
    :cond_1
    if-ne v4, v5, :cond_2

    .line 1543
    sget v7, Lcom/afwsamples/testdpc/R$string;->update_info_security_true:I

    invoke-virtual {p0, v7}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1544
    :cond_2
    sget v7, Lcom/afwsamples/testdpc/R$string;->update_info_security_unknown:I

    invoke-virtual {p0, v7}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    nop

    .line 1546
    .local v7, "securityText":Ljava/lang/String;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v9, Lcom/afwsamples/testdpc/R$string;->update_info_title:I

    .line 1547
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lcom/afwsamples/testdpc/R$string;->update_info_received:I

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v5, v10

    aput-object v7, v5, v6

    .line 1548
    invoke-virtual {p0, v9, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1549
    const v6, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1550
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1552
    .end local v1    # "timestamp":J
    .end local v3    # "date":Ljava/lang/String;
    .end local v4    # "securityState":I
    .end local v7    # "securityText":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private showPromptForCertificatePassword(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "attempts"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "intent",
            "attempts"
        }
    .end annotation

    .line 3157
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3160
    :cond_0
    nop

    .line 3161
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->certificate_password_prompt:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3162
    .local v0, "passwordInputView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->password_input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 3163
    .local v1, "input":Landroid/widget/EditText;
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    .line 3164
    sget v2, Lcom/afwsamples/testdpc/R$id;->incorrect_password:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3166
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/afwsamples/testdpc/R$string;->certificate_password_prompt_title:I

    .line 3167
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 3168
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/content/Intent;I)V

    .line 3169
    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$21;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$21;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 3179
    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 3187
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3188
    return-void

    .line 3158
    .end local v0    # "passwordInputView":Landroid/view/View;
    .end local v1    # "input":Landroid/widget/EditText;
    :cond_2
    :goto_0
    return-void
.end method

.method private showPromptForGeneratedKeyAlias(Ljava/lang/String;)V
    .locals 17
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 3254
    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v1, p1

    goto/16 :goto_3

    .line 3258
    :cond_0
    nop

    .line 3259
    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->key_generation_prompt:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3260
    .local v0, "aliasNamingView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->alias_input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    .line 3261
    .local v5, "input":Landroid/widget/EditText;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3262
    move-object/from16 v1, p1

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3263
    invoke-virtual {v5}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 3261
    :cond_1
    move-object/from16 v1, p1

    .line 3266
    :goto_0
    sget v3, Lcom/afwsamples/testdpc/R$id;->alias_user_selectable:I

    .line 3267
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/widget/CheckBox;

    .line 3268
    .local v6, "userSelectableCheckbox":Landroid/widget/CheckBox;
    sget v3, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v4, 0x1c

    const/4 v8, 0x0

    if-ge v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3270
    sget v3, Lcom/afwsamples/testdpc/R$id;->generate_ec_key:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/CheckBox;

    .line 3273
    .local v15, "ecKeyCheckbox":Landroid/widget/CheckBox;
    sget v3, Lcom/afwsamples/testdpc/R$id;->include_key_attestation_challenge:I

    .line 3274
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 3275
    .local v3, "includeAttestationChallengeCheckbox":Landroid/widget/CheckBox;
    sget v4, Lcom/afwsamples/testdpc/R$id;->include_device_brand_attestation:I

    .line 3276
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/widget/CheckBox;

    .line 3277
    .local v9, "deviceBrandAttestationCheckbox":Landroid/widget/CheckBox;
    sget v4, Lcom/afwsamples/testdpc/R$id;->include_device_serial_in_attestation:I

    .line 3278
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/widget/CheckBox;

    .line 3279
    .local v10, "deviceSerialAttestationCheckbox":Landroid/widget/CheckBox;
    sget v4, Lcom/afwsamples/testdpc/R$id;->include_device_imei_in_attestation:I

    .line 3280
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/CheckBox;

    .line 3281
    .local v11, "deviceImeiAttestationCheckbox":Landroid/widget/CheckBox;
    sget v4, Lcom/afwsamples/testdpc/R$id;->include_device_meid_in_attestation:I

    .line 3282
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/widget/CheckBox;

    .line 3283
    .local v12, "deviceMeidAttestationCheckbox":Landroid/widget/CheckBox;
    sget v4, Lcom/afwsamples/testdpc/R$id;->use_strongbox:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/widget/CheckBox;

    .line 3284
    .local v14, "useStrongBoxCheckbox":Landroid/widget/CheckBox;
    sget v4, Lcom/afwsamples/testdpc/R$id;->use_individual_attestation:I

    .line 3285
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/widget/CheckBox;

    .line 3286
    .local v13, "useIndividualAttestationCheckbox":Landroid/widget/CheckBox;
    sget v4, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v7, 0x1e

    if-lt v4, v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v13, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 3289
    sget v4, Lcom/afwsamples/testdpc/R$id;->custom_challenge_input:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/widget/EditText;

    .line 3291
    .local v8, "customChallengeInput":Landroid/widget/EditText;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/afwsamples/testdpc/R$string;->certificate_alias_prompt_title:I

    .line 3292
    move-object/from16 v2, p0

    invoke-virtual {v2, v7}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 3293
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object v7, v3

    .end local v3    # "includeAttestationChallengeCheckbox":Landroid/widget/CheckBox;
    .local v7, "includeAttestationChallengeCheckbox":Landroid/widget/CheckBox;
    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;

    move-object/from16 v16, v4

    move-object v4, v2

    move-object/from16 v2, v16

    invoke-direct/range {v3 .. v15}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    .line 3294
    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 3333
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 3334
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3335
    return-void

    .line 3254
    .end local v0    # "aliasNamingView":Landroid/view/View;
    .end local v5    # "input":Landroid/widget/EditText;
    .end local v6    # "userSelectableCheckbox":Landroid/widget/CheckBox;
    .end local v7    # "includeAttestationChallengeCheckbox":Landroid/widget/CheckBox;
    .end local v8    # "customChallengeInput":Landroid/widget/EditText;
    .end local v9    # "deviceBrandAttestationCheckbox":Landroid/widget/CheckBox;
    .end local v10    # "deviceSerialAttestationCheckbox":Landroid/widget/CheckBox;
    .end local v11    # "deviceImeiAttestationCheckbox":Landroid/widget/CheckBox;
    .end local v12    # "deviceMeidAttestationCheckbox":Landroid/widget/CheckBox;
    .end local v13    # "useIndividualAttestationCheckbox":Landroid/widget/CheckBox;
    .end local v14    # "useStrongBoxCheckbox":Landroid/widget/CheckBox;
    .end local v15    # "ecKeyCheckbox":Landroid/widget/CheckBox;
    :cond_4
    move-object/from16 v1, p1

    .line 3255
    :goto_3
    return-void
.end method

.method private showPromptForKeyCertificateAlias(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "certificate"    # Ljava/security/cert/Certificate;
    .param p3, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "key",
            "certificate",
            "alias"
        }
    .end annotation

    .line 3200
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3201
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    goto/16 :goto_2

    .line 3206
    :cond_0
    nop

    .line 3207
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->certificate_alias_prompt:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3208
    .local v0, "passwordInputView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->alias_input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    .line 3209
    .local v4, "input":Landroid/widget/EditText;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3210
    invoke-virtual {v4, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3211
    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 3214
    :cond_1
    sget v1, Lcom/afwsamples/testdpc/R$id;->alias_user_selectable:I

    .line 3215
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/CheckBox;

    .line 3216
    .local v5, "userSelectableCheckbox":Landroid/widget/CheckBox;
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v6, 0x1c

    if-lt v1, v6, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 3217
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    if-ge v1, v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3219
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/afwsamples/testdpc/R$string;->certificate_alias_prompt_title:I

    .line 3220
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3221
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    .end local p1    # "key":Ljava/security/PrivateKey;
    .end local p2    # "certificate":Ljava/security/cert/Certificate;
    .local v6, "key":Ljava/security/PrivateKey;
    .local v7, "certificate":Ljava/security/cert/Certificate;
    invoke-direct/range {v2 .. v7}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/CheckBox;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;)V

    .line 3222
    const p1, 0x104000a

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;

    invoke-direct {p2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 3237
    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3245
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3246
    return-void

    .line 3201
    .end local v0    # "passwordInputView":Landroid/view/View;
    .end local v4    # "input":Landroid/widget/EditText;
    .end local v5    # "userSelectableCheckbox":Landroid/widget/CheckBox;
    .end local v6    # "key":Ljava/security/PrivateKey;
    .end local v7    # "certificate":Ljava/security/cert/Certificate;
    .restart local p1    # "key":Ljava/security/PrivateKey;
    .restart local p2    # "certificate":Ljava/security/cert/Certificate;
    :cond_4
    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    .end local p1    # "key":Ljava/security/PrivateKey;
    .end local p2    # "certificate":Ljava/security/cert/Certificate;
    .restart local v6    # "key":Ljava/security/PrivateKey;
    .restart local v7    # "certificate":Ljava/security/cert/Certificate;
    goto :goto_2

    .line 3200
    .end local v6    # "key":Ljava/security/PrivateKey;
    .end local v7    # "certificate":Ljava/security/cert/Certificate;
    .restart local p1    # "key":Ljava/security/PrivateKey;
    .restart local p2    # "certificate":Ljava/security/cert/Certificate;
    :cond_5
    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    .line 3204
    .end local p1    # "key":Ljava/security/PrivateKey;
    .end local p2    # "certificate":Ljava/security/cert/Certificate;
    .restart local v6    # "key":Ljava/security/PrivateKey;
    .restart local v7    # "certificate":Ljava/security/cert/Certificate;
    :goto_2
    return-void
.end method

.method private showRemoveDeviceOwnerPrompt()V
    .locals 3

    .line 2147
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/afwsamples/testdpc/R$string;->remove_device_owner_title:I

    .line 2148
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->remove_device_owner_confirmation:I

    .line 2149
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda42;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 2150
    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2161
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2162
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2163
    return-void
.end method

.method private showRemoveUserPrompt()V
    .locals 2

    .line 2459
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2460
    sget v0, Lcom/afwsamples/testdpc/R$string;->remove_user:I

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda57;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda57;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showChooseUserPrompt(ILcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;)V

    goto :goto_0

    .line 2462
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showRemoveUserPromptLegacy()V

    .line 2464
    :goto_0
    return-void
.end method

.method private showRemoveUserPromptLegacy()V
    .locals 5

    .line 2418
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2421
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2422
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2423
    .local v1, "input":Landroid/widget/EditText;
    sget v2, Lcom/afwsamples/testdpc/R$string;->enter_user_id:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 2424
    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 2426
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/afwsamples/testdpc/R$string;->remove_user:I

    .line 2427
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2428
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$15;

    invoke-direct {v3, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$15;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 2429
    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2443
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2444
    return-void

    .line 2419
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "input":Landroid/widget/EditText;
    :cond_1
    :goto_0
    return-void
.end method

.method private showResetPasswordPrompt()V
    .locals 8

    .line 2039
    nop

    .line 2040
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->reset_password_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2042
    .local v0, "dialogView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->password:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2043
    .local v1, "passwordView":Landroid/widget/EditText;
    sget v3, Lcom/afwsamples/testdpc/R$id;->require_password_entry_checkbox:I

    .line 2044
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 2045
    .local v3, "requireEntry":Landroid/widget/CheckBox;
    sget v4, Lcom/afwsamples/testdpc/R$id;->dont_require_password_on_boot_checkbox:I

    .line 2046
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 2048
    .local v4, "dontRequireOnBoot":Landroid/widget/CheckBox;
    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;

    invoke-direct {v5, p0, v1, v3, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    .line 2077
    .local v5, "resetListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/afwsamples/testdpc/R$string;->reset_password:I

    .line 2078
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 2079
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 2080
    const v7, 0x104000a

    invoke-virtual {v6, v7, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 2081
    const/high16 v7, 0x1040000

    invoke-virtual {v6, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2082
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2083
    return-void
.end method

.method private showSetDisableAccountManagementPrompt()V
    .locals 6

    .line 2285
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2288
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2289
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2290
    .local v1, "input":Landroid/widget/EditText;
    sget v3, Lcom/afwsamples/testdpc/R$string;->account_type_hint:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 2292
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/afwsamples/testdpc/R$string;->set_disable_account_management:I

    .line 2293
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2294
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/afwsamples/testdpc/R$string;->disable:I

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$13;

    invoke-direct {v5, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$13;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 2295
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/afwsamples/testdpc/R$string;->enable:I

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$12;

    invoke-direct {v5, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$12;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 2304
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2313
    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2314
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2315
    return-void

    .line 2286
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "input":Landroid/widget/EditText;
    :cond_1
    :goto_0
    return-void
.end method

.method private showSetGlobalHttpProxyDialog()V
    .locals 8

    .line 3447
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3451
    :cond_0
    nop

    .line 3452
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->proxy_config_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3453
    .local v0, "dialogView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->proxy_host:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 3454
    .local v1, "hostEditText":Landroid/widget/EditText;
    sget v3, Lcom/afwsamples/testdpc/R$id;->proxy_port:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 3455
    .local v3, "portEditText":Landroid/widget/EditText;
    const-string v4, "http.proxyHost"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3456
    .local v4, "host":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3457
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3458
    const-string v5, "http.proxyPort"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3461
    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/afwsamples/testdpc/R$string;->set_global_http_proxy:I

    .line 3462
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 3463
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, v1, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda4;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 3464
    const v7, 0x104000a

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 3485
    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 3486
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3487
    return-void

    .line 3448
    .end local v0    # "dialogView":Landroid/view/View;
    .end local v1    # "hostEditText":Landroid/widget/EditText;
    .end local v3    # "portEditText":Landroid/widget/EditText;
    .end local v4    # "host":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method private showSetMeteredDataPrompt()V
    .locals 8

    .line 3816
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3817
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3821
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3822
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 3823
    .local v1, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3824
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v3, v4}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3825
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 3826
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 3827
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 3828
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3829
    .end local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 3830
    :cond_1
    new-instance v3, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;

    .line 3832
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getMeteredDataRestrictedPkgs()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 3833
    .local v3, "meteredDataRestrictionInfoAdapter":Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;
    new-instance v4, Landroid/widget/ListView;

    invoke-direct {v4, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 3834
    .local v4, "listView":Landroid/widget/ListView;
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3835
    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda48;

    invoke-direct {v5, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda48;-><init>(Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3839
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/afwsamples/testdpc/R$string;->metered_data_restriction:I

    .line 3840
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 3841
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/afwsamples/testdpc/R$string;->update_pkgs:I

    .line 3842
    invoke-virtual {v5, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/afwsamples/testdpc/R$string;->close:I

    .line 3843
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 3844
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3845
    return-void

    .line 3818
    .end local v1    # "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "meteredDataRestrictionInfoAdapter":Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;
    .end local v4    # "listView":Landroid/widget/ListView;
    :cond_2
    :goto_1
    return-void
.end method

.method private showSetOrganizationIdDialog()V
    .locals 6

    .line 4508
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4512
    :cond_0
    nop

    .line 4513
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4514
    .local v0, "dialogView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 4515
    .local v1, "organizationIdTextEdit":Landroid/widget/EditText;
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4517
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/afwsamples/testdpc/R$string;->set_organization_id:I

    .line 4518
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4519
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda10;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 4520
    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4530
    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 4531
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4532
    return-void

    .line 4509
    .end local v0    # "dialogView":Landroid/view/View;
    .end local v1    # "organizationIdTextEdit":Landroid/widget/EditText;
    :cond_1
    :goto_0
    return-void
.end method

.method private showSetPermissionPolicyDialog()V
    .locals 6

    .line 2235
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2238
    :cond_0
    nop

    .line 2239
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->set_permission_policy:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2240
    .local v0, "setPermissionPolicyView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->set_permission_group:I

    .line 2241
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 2243
    .local v1, "permissionGroup":Landroid/widget/RadioGroup;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPermissionPolicy(Landroid/content/ComponentName;)I

    move-result v2

    .line 2244
    .local v2, "permissionPolicy":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2252
    :pswitch_0
    sget v3, Lcom/afwsamples/testdpc/R$id;->deny:I

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->toggle()V

    goto :goto_0

    .line 2249
    :pswitch_1
    sget v3, Lcom/afwsamples/testdpc/R$id;->accept:I

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->toggle()V

    .line 2250
    goto :goto_0

    .line 2246
    :pswitch_2
    sget v3, Lcom/afwsamples/testdpc/R$id;->prompt:I

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->toggle()V

    .line 2247
    nop

    .line 2256
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/afwsamples/testdpc/R$string;->set_default_permission_policy:I

    .line 2257
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2258
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$11;

    invoke-direct {v4, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$11;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/RadioGroup;)V

    .line 2259
    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2277
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2278
    return-void

    .line 2236
    .end local v0    # "setPermissionPolicyView":Landroid/view/View;
    .end local v1    # "permissionGroup":Landroid/widget/RadioGroup;
    .end local v2    # "permissionPolicy":I
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showSetProfileNameDialog()V
    .locals 6

    .line 4479
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4483
    :cond_0
    nop

    .line 4484
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4485
    .local v0, "dialogView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 4486
    .local v1, "profileNameEditText":Landroid/widget/EditText;
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4488
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/afwsamples/testdpc/R$string;->set_profile_name:I

    .line 4489
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4490
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda32;

    invoke-direct {v4, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda32;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 4491
    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4501
    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 4502
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4503
    return-void

    .line 4480
    .end local v0    # "dialogView":Landroid/view/View;
    .end local v1    # "profileNameEditText":Landroid/widget/EditText;
    :cond_1
    :goto_0
    return-void
.end method

.method private showSetScreenBrightnessDialog()V
    .locals 7

    .line 4281
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4285
    :cond_0
    nop

    .line 4286
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4287
    .local v0, "dialogView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 4288
    .local v1, "brightnessEditText":Landroid/widget/EditText;
    nop

    .line 4290
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4289
    const-string v4, "screen_brightness"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4291
    .local v3, "oldBrightness":Ljava/lang/String;
    sget v4, Lcom/afwsamples/testdpc/R$string;->set_screen_brightness_hint:I

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 4292
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4293
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4296
    :cond_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/afwsamples/testdpc/R$string;->set_screen_brightness:I

    .line 4297
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 4298
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda25;

    invoke-direct {v5, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda25;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 4299
    const v6, 0x104000a

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 4316
    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 4317
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4318
    return-void

    .line 4282
    .end local v0    # "dialogView":Landroid/view/View;
    .end local v1    # "brightnessEditText":Landroid/widget/EditText;
    .end local v3    # "oldBrightness":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method private showSetScreenOffTimeoutDialog()V
    .locals 8

    .line 4359
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4363
    :cond_0
    nop

    .line 4364
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4365
    .local v0, "dialogView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 4366
    .local v1, "timeoutEditText":Landroid/widget/EditText;
    nop

    .line 4368
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4367
    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4369
    .local v3, "oldTimeout":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4370
    .local v4, "oldTimeoutValue":I
    sget v5, Lcom/afwsamples/testdpc/R$string;->set_screen_off_timeout_hint:I

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 4371
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4372
    div-int/lit16 v5, v4, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4375
    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/afwsamples/testdpc/R$string;->set_screen_off_timeout:I

    .line 4376
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 4377
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda14;

    invoke-direct {v6, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda14;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 4378
    const v7, 0x104000a

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 4397
    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 4398
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4399
    return-void

    .line 4360
    .end local v0    # "dialogView":Landroid/view/View;
    .end local v1    # "timeoutEditText":Landroid/widget/EditText;
    .end local v3    # "oldTimeout":Ljava/lang/String;
    .end local v4    # "oldTimeoutValue":I
    :cond_2
    :goto_0
    return-void
.end method

.method private showSetTimeDialog()V
    .locals 7

    .line 4404
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4408
    :cond_0
    nop

    .line 4409
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4410
    .local v0, "dialogView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 4411
    .local v1, "timeEditText":Landroid/widget/EditText;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 4412
    .local v3, "currentTime":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4414
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/afwsamples/testdpc/R$string;->set_time:I

    .line 4415
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 4416
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda43;

    invoke-direct {v5, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda43;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 4417
    const v6, 0x104000a

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 4434
    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 4435
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4436
    return-void

    .line 4405
    .end local v0    # "dialogView":Landroid/view/View;
    .end local v1    # "timeEditText":Landroid/widget/EditText;
    .end local v3    # "currentTime":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private showSetTimeZoneDialog()V
    .locals 7

    .line 4444
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4448
    :cond_0
    nop

    .line 4449
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4450
    .local v0, "dialogView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 4451
    .local v1, "timezoneEditText":Landroid/widget/EditText;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    .line 4452
    .local v3, "currentTimezone":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4454
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/afwsamples/testdpc/R$string;->set_time_zone:I

    .line 4455
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 4456
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda60;

    invoke-direct {v5, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda60;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 4457
    const v6, 0x104000a

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 4472
    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 4473
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4474
    return-void

    .line 4445
    .end local v0    # "dialogView":Landroid/view/View;
    .end local v1    # "timezoneEditText":Landroid/widget/EditText;
    .end local v3    # "currentTimezone":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private showSetWifiMinSecurityLevelDialog()V
    .locals 6

    .line 4592
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 4595
    :cond_0
    nop

    .line 4596
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->set_wifi_min_security_level:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4597
    .local v0, "setSecurityLevelView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->set_security_level_group:I

    .line 4598
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 4600
    .local v1, "securityLevelGroup":Landroid/widget/RadioGroup;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getMinimumRequiredWifiSecurityLevel()I

    move-result v2

    .line 4601
    .local v2, "securityLevel":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 4612
    :pswitch_0
    sget v3, Lcom/afwsamples/testdpc/R$id;->enterprise_192:I

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->toggle()V

    goto :goto_0

    .line 4609
    :pswitch_1
    sget v3, Lcom/afwsamples/testdpc/R$id;->enterprise_eap:I

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->toggle()V

    .line 4610
    goto :goto_0

    .line 4606
    :pswitch_2
    sget v3, Lcom/afwsamples/testdpc/R$id;->personal:I

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->toggle()V

    .line 4607
    goto :goto_0

    .line 4603
    :pswitch_3
    sget v3, Lcom/afwsamples/testdpc/R$id;->open:I

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->toggle()V

    .line 4604
    nop

    .line 4616
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/afwsamples/testdpc/R$string;->set_wifi_min_security_level:I

    .line 4617
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4618
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$31;

    invoke-direct {v4, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$31;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/RadioGroup;)V

    .line 4619
    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4639
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4640
    return-void

    .line 4593
    .end local v0    # "setSecurityLevelView":Landroid/view/View;
    .end local v1    # "securityLevelGroup":Landroid/widget/RadioGroup;
    .end local v2    # "securityLevel":I
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showSetWifiSsidRestrictionDialog()V
    .locals 6

    .line 4647
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4650
    :cond_0
    nop

    .line 4651
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->set_wifi_ssid_restriction:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4652
    .local v0, "setSsidRestrictionView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->set_list_type_group:I

    .line 4653
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 4654
    .local v1, "listTypeGroup":Landroid/widget/RadioGroup;
    sget v2, Lcom/afwsamples/testdpc/R$id;->ssids:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 4655
    .local v2, "ssidsTextEdit":Landroid/widget/EditText;
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4657
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/afwsamples/testdpc/R$string;->set_wifi_ssid_restriction:I

    .line 4658
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4659
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$32;

    invoke-direct {v4, p0, v2, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$32;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/RadioGroup;)V

    .line 4660
    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4692
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4693
    return-void

    .line 4648
    .end local v0    # "setSsidRestrictionView":Landroid/view/View;
    .end local v1    # "listTypeGroup":Landroid/widget/RadioGroup;
    .end local v2    # "ssidsTextEdit":Landroid/widget/EditText;
    :cond_1
    :goto_0
    return-void
.end method

.method private showSetupManagement()V
    .locals 3

    .line 4271
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/afwsamples/testdpc/SetupManagementActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4272
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4273
    return-void
.end method

.method private showStartUserInBackgroundPrompt()V
    .locals 2

    .line 2485
    sget v0, Lcom/afwsamples/testdpc/R$string;->start_user_in_background:I

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda61;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda61;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showChooseUserPrompt(ILcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;)V

    .line 2496
    return-void
.end method

.method private showStopUserPrompt()V
    .locals 2

    .line 2501
    sget v0, Lcom/afwsamples/testdpc/R$string;->stop_user:I

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda31;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showChooseUserPrompt(ILcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;)V

    .line 2509
    return-void
.end method

.method private showSuspendAppsPrompt(Z)V
    .locals 9
    .param p1, "forUnsuspending"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "forUnsuspending"
        }
    .end annotation

    .line 3750
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 3751
    .local v3, "showApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 3753
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getAllInstalledApplicationsSorted()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 3754
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isPackageSuspended(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3755
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3757
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_2

    .line 3760
    :cond_2
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getAllLauncherIntentResolversSorted()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 3761
    .local v1, "res":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3762
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isPackageSuspended(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3763
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3765
    .end local v1    # "res":Landroid/content/pm/ResolveInfo;
    :cond_3
    goto :goto_1

    .line 3768
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3769
    if-eqz p1, :cond_5

    sget v0, Lcom/afwsamples/testdpc/R$string;->unsuspend_apps_empty:I

    goto :goto_3

    :cond_5
    sget v0, Lcom/afwsamples/testdpc/R$string;->suspend_apps_empty:I

    :goto_3
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    move v4, p1

    goto :goto_5

    .line 3771
    :cond_6
    new-instance v0, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;

    .line 3772
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$id;->pkg_name:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 3776
    .local v0, "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    if-eqz p1, :cond_7

    .line 3778
    sget v1, Lcom/afwsamples/testdpc/R$string;->unsuspend_apps_title:I

    .line 3779
    .local v1, "dialogTitleResId":I
    sget v2, Lcom/afwsamples/testdpc/R$string;->unsuspend_apps_success:I

    .line 3780
    .local v2, "successResId":I
    sget v4, Lcom/afwsamples/testdpc/R$string;->unsuspend_apps_failure:I

    move v7, v1

    move v5, v2

    move v6, v4

    .local v4, "failureResId":I
    goto :goto_4

    .line 3783
    .end local v1    # "dialogTitleResId":I
    .end local v2    # "successResId":I
    .end local v4    # "failureResId":I
    :cond_7
    sget v1, Lcom/afwsamples/testdpc/R$string;->suspend_apps_title:I

    .line 3784
    .restart local v1    # "dialogTitleResId":I
    sget v2, Lcom/afwsamples/testdpc/R$string;->suspend_apps_success:I

    .line 3785
    .restart local v2    # "successResId":I
    sget v4, Lcom/afwsamples/testdpc/R$string;->suspend_apps_failure:I

    move v7, v1

    move v5, v2

    move v6, v4

    .line 3787
    .end local v1    # "dialogTitleResId":I
    .end local v2    # "successResId":I
    .local v5, "successResId":I
    .local v6, "failureResId":I
    .local v7, "dialogTitleResId":I
    :goto_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3788
    invoke-virtual {p0, v7}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;

    move-object v2, p0

    move v4, p1

    .end local p1    # "forUnsuspending":Z
    .local v4, "forUnsuspending":Z
    invoke-direct/range {v1 .. v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;ZII)V

    .line 3789
    invoke-virtual {v8, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3809
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3811
    .end local v0    # "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    .end local v5    # "successResId":I
    .end local v6    # "failureResId":I
    .end local v7    # "dialogTitleResId":I
    :goto_5
    return-void
.end method

.method private showSwitchUserPrompt()V
    .locals 2

    .line 2469
    sget v0, Lcom/afwsamples/testdpc/R$string;->switch_user:I

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda45;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showChooseUserPrompt(ILcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;)V

    .line 2477
    return-void
.end method

.method private varargs showToast(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msgId"    # I
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msgId",
            "args"
        }
    .end annotation

    .line 3915
    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    .line 3916
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 3919
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;I)V

    .line 3920
    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msg",
            "duration"
        }
    .end annotation

    .line 3923
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3924
    .local v0, "activity":Landroid/app/Activity;
    const-string v1, "PolicyManagement"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3928
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing toast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3929
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3930
    return-void

    .line 3925
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not toasting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' as activity is finishing or finished"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    return-void
.end method

.method private showUninstallPackagePrompt()V
    .locals 5

    .line 3614
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3615
    .local v0, "installedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getAllLauncherIntentResolversSorted()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 3616
    .local v2, "res":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3617
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3619
    .end local v2    # "res":Landroid/content/pm/ResolveInfo;
    :cond_0
    goto :goto_0

    .line 3620
    :cond_1
    new-instance v1, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;

    .line 3621
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/afwsamples/testdpc/R$id;->pkg_name:I

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 3622
    .local v1, "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/afwsamples/testdpc/R$string;->uninstall_packages_title:I

    .line 3623
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;)V

    .line 3624
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 3633
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3634
    return-void
.end method

.method private showWifiConfigCreationDialog()V
    .locals 3

    .line 4249
    invoke-static {}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->newInstance()Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;

    move-result-object v0

    .line 4250
    .local v0, "dialog":Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "wifi_config_creation"

    invoke-virtual {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 4251
    return-void
.end method

.method private showWifiMacAddress()V
    .locals 5

    .line 2168
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 2170
    .local v0, "macAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2171
    move-object v1, v0

    goto :goto_0

    .line 2172
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$string;->show_wifi_mac_address_not_available_msg:I

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 2173
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/afwsamples/testdpc/R$string;->show_wifi_mac_address_title:I

    .line 2174
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2175
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2176
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2177
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2178
    return-void
.end method

.method private showWipeDataPrompt(Z)V
    .locals 8
    .param p1, "wipeDevice"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wipeDevice"
        }
    .end annotation

    .line 2090
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2091
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/afwsamples/testdpc/R$layout;->wipe_data_dialog_prompt:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2092
    .local v1, "dialogView":Landroid/view/View;
    sget v3, Lcom/afwsamples/testdpc/R$id;->external_storage_checkbox:I

    .line 2093
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 2094
    .local v3, "externalStorageCheckBox":Landroid/widget/CheckBox;
    sget v4, Lcom/afwsamples/testdpc/R$id;->reset_protection_checkbox:I

    .line 2095
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 2097
    .local v4, "resetProtectionCheckBox":Landroid/widget/CheckBox;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2099
    if-eqz p1, :cond_0

    .line 2100
    sget v6, Lcom/afwsamples/testdpc/R$string;->factory_reset_device_title:I

    goto :goto_0

    .line 2101
    :cond_0
    sget v6, Lcom/afwsamples/testdpc/R$string;->remove_managed_profile_title:I

    .line 2098
    :goto_0
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 2102
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;

    invoke-direct {v6, p0, v3, v4, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Z)V

    .line 2103
    const v7, 0x104000a

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 2141
    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2142
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2143
    return-void
.end method

.method private startKioskMode([Ljava/lang/String;)V
    .locals 4
    .param p1, "lockTaskArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lockTaskArray"
        }
    .end annotation

    .line 4230
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4233
    .local v0, "customLauncher":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 4239
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 4240
    invoke-static {}, Lcom/afwsamples/testdpc/common/Util;->getHomeIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    .line 4239
    invoke-virtual {v1, v2, v3, v0}, Landroid/app/admin/DevicePolicyManager;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    .line 4241
    invoke-static {}, Lcom/afwsamples/testdpc/common/Util;->getHomeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 4242
    .local v1, "launchIntent":Landroid/content/Intent;
    const-string v2, "com.afwsamples.testdpc.policy.locktask.LOCKED_APP_PACKAGE_LIST"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 4244
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->startActivity(Landroid/content/Intent;)V

    .line 4245
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 4246
    return-void
.end method

.method private testKeyCanBeUsedForSigning()V
    .locals 6

    .line 1504
    nop

    .line 1505
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 1504
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1527
    return-void
.end method

.method private updateStayOnWhilePluggedInPreference()V
    .locals 6

    .line 2195
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mStayOnWhilePluggedInSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/SwitchPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2196
    return-void

    .line 2199
    :cond_0
    const/4 v0, 0x0

    .line 2200
    .local v0, "checked":Z
    nop

    .line 2202
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2201
    const-string/jumbo v2, "stay_on_while_plugged_in"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2203
    .local v1, "currentState":I
    and-int/lit8 v4, v1, 0x7

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 2209
    .end local v0    # "checked":Z
    .local v3, "checked":Z
    :cond_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 2212
    if-eqz v3, :cond_2

    sget-object v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->BATTERY_PLUGGED_ANY:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v5, "0"

    .line 2209
    :goto_0
    invoke-virtual {v0, v4, v2, v5}, Landroid/app/admin/DevicePolicyManager;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mStayOnWhilePluggedInSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 2214
    return-void
.end method

.method private validateAffiliatedUserAfterP()I
    .locals 2

    .line 4738
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 4739
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isAffiliatedUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4740
    sget v0, Lcom/afwsamples/testdpc/R$string;->require_affiliated_user:I

    return v0

    .line 4743
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private validateBrightnessControlConstraint()I
    .locals 2

    .line 4801
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mIsOrganizationOwnedProfileOwner:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x23

    if-ge v0, v1, :cond_0

    .line 4802
    sget v0, Lcom/afwsamples/testdpc/R$string;->requires_android_v:I

    return v0

    .line 4804
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private validateDeviceOwnerBeforeO()I
    .locals 2

    .line 4753
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 4754
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4755
    sget v0, Lcom/afwsamples/testdpc/R$string;->requires_device_owner:I

    return v0

    .line 4758
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private validateDeviceOwnerBeforeP()I
    .locals 2

    .line 4762
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 4763
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4764
    sget v0, Lcom/afwsamples/testdpc/R$string;->requires_device_owner:I

    return v0

    .line 4767
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private validateDeviceOwnerBeforeQ()I
    .locals 2

    .line 4771
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 4772
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4773
    sget v0, Lcom/afwsamples/testdpc/R$string;->requires_device_owner:I

    return v0

    .line 4776
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private validateDeviceOwnerOrDelegationNetworkLoggingBeforeS()I
    .locals 2

    .line 4780
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isDeviceOwner()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->hasNetworkLoggingDelegation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4781
    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$string;->requires_device_owner_or_delegation_network_logging:I

    return v0

    .line 4783
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private validateInstallNonMarketApps()I
    .locals 2

    .line 4787
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 4788
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_0

    .line 4789
    sget v0, Lcom/afwsamples/testdpc/R$string;->deprecated_since_oreo:I

    return v0

    .line 4791
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_install_unknown_sources_globally"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUserManager:Landroid/os/UserManager;

    .line 4792
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4795
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 4793
    :cond_2
    :goto_0
    sget v0, Lcom/afwsamples/testdpc/R$string;->user_restricted:I

    return v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "prefix",
            "pw",
            "args"
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const-string v0, "%smAdminComponentName: %s\n"

    invoke-virtual {p2, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 905
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mImageUri:Landroid/net/Uri;

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object v0, v2, v4

    const-string v0, "%smImageUri: %s\n"

    invoke-virtual {p2, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 906
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mVideoUri:Landroid/net/Uri;

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object v0, v2, v4

    const-string v0, "%smmVideoUri: %s\n"

    invoke-virtual {p2, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 907
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mVideoUri:Landroid/net/Uri;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object v2, v5, v4

    invoke-virtual {p2, v0, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 908
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isManagedProfileOwner()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object v0, v2, v4

    const-string v0, "%sisManagedProfileOwner(): %s\n"

    invoke-virtual {p2, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 909
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->isDeviceOwner(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object v0, v2, v4

    const-string v0, "%sisDeviceOwner(): %s\n"

    invoke-virtual {p2, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 910
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object v0, v2, v4

    const-string v0, "%sisSystemUser(): %s\n"

    invoke-virtual {p2, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 911
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->isPrimaryUser(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object v0, v2, v4

    const-string v0, "%sisPrimaryUser(): %s\n"

    invoke-virtual {p2, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 912
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->isRunningOnTvDevice(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object v0, v2, v4

    const-string v0, "%sisRunningOnTvDevice(): %s\n"

    invoke-virtual {p2, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 913
    nop

    .line 915
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->isRunningOnAutomotiveDevice(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object v0, v2, v4

    .line 913
    const-string v0, "%sisRunningOnAutomotiveDevice(): %s\n"

    invoke-virtual {p2, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 916
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    .line 917
    nop

    .line 919
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object v0, v1, v4

    .line 917
    const-string v0, "%sisHeadlessSystemUserMode(): %s\n"

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 921
    :cond_0
    return-void
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1007
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 3403
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 3405
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 3406
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3424
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->installApkPackageFromIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 3419
    :pswitch_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mVideoUri:Landroid/net/Uri;

    .line 3420
    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->newInstance(ILandroid/net/Uri;)Lcom/afwsamples/testdpc/common/MediaDisplayFragment;

    move-result-object v0

    .line 3419
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 3422
    goto :goto_0

    .line 3414
    :pswitch_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mImageUri:Landroid/net/Uri;

    .line 3415
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->newInstance(ILandroid/net/Uri;)Lcom/afwsamples/testdpc/common/MediaDisplayFragment;

    move-result-object v0

    .line 3414
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 3417
    goto :goto_0

    .line 3411
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->importCaCertificateFromIntent(Landroid/content/Intent;)V

    .line 3412
    goto :goto_0

    .line 3408
    :pswitch_4
    const-string v0, ""

    invoke-direct {p0, p3, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->importKeyCertificateFromIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3409
    nop

    .line 3427
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1e09
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 565
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 566
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 567
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 568
    nop

    .line 569
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isManagedProfileOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    goto :goto_0

    .line 571
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mParentDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 572
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUserManager:Landroid/os/UserManager;

    .line 573
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 574
    new-instance v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const-class v1, Landroid/location/LocationManager;

    .line 579
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/location/LocationManager;

    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-direct/range {v2 .. v7}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Landroid/content/pm/PackageManager;Landroid/location/LocationManager;Landroid/content/ComponentName;)V

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 581
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isProfileOwnerApp()Z

    move-result v1

    iput-boolean v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mIsProfileOwner:Z

    .line 582
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mIsProfileOwner:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 585
    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mIsOrganizationOwnedProfileOwner:Z

    .line 587
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 588
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAccountManager:Landroid/accounts/AccountManager;

    .line 589
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    .line 591
    const-string v1, "image.jpg"

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getStorageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mImageUri:Landroid/net/Uri;

    .line 592
    const-string/jumbo v1, "video.mp4"

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getStorageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mVideoUri:Landroid/net/Uri;

    .line 594
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 595
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "savedInstanceState",
            "rootKey"
        }
    .end annotation

    .line 599
    sget v0, Lcom/afwsamples/testdpc/R$xml;->device_policy_header:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->addPreferencesFromResource(I)V

    .line 601
    nop

    .line 602
    const-string v0, "override_key_selection"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    .line 603
    .local v0, "overrideKeySelectionPreference":Landroidx/preference/EditTextPreference;
    invoke-virtual {v0, p0}, Landroidx/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 604
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 605
    const-string v1, "manage_lock_task"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mManageLockTaskListPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 606
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mManageLockTaskListPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v1, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 607
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mManageLockTaskListPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda22;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 608
    const-string v1, "check_lock_task_permitted"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 609
    const-string v1, "set_lock_task_features"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLockTaskFeaturesPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 610
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLockTaskFeaturesPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v1, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 611
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLockTaskFeaturesPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda22;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 612
    const-string/jumbo v1, "start_lock_task"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 613
    const-string v1, "relaunch_in_lock_task"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 614
    const-string/jumbo v1, "stop_lock_task"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 615
    const-string v1, "create_managed_profile"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 616
    const-string v1, "create_and_manage_user"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 617
    const-string v1, "remove_user"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 618
    const-string/jumbo v1, "switch_user"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 619
    const-string/jumbo v1, "start_user_in_background"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 620
    const-string/jumbo v1, "stop_user"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 621
    const-string v1, "enable_logout"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableLogoutPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 622
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableLogoutPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 623
    const-string v1, "set_user_session_message"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 624
    const-string v1, "logout_user"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mLogoutUserPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 625
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mLogoutUserPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v1, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 626
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mLogoutUserPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda22;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 627
    const-string v1, "set_affiliation_ids"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 628
    const-string v1, "affiliated_user"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAffiliatedUserPreference:Landroidx/preference/Preference;

    .line 629
    const-string v1, "ephemeral_user"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEphemeralUserPreference:Landroidx/preference/Preference;

    .line 630
    const-string v1, "disable_camera"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableCameraSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 631
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableCameraSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 632
    nop

    .line 633
    const-string v1, "disable_camera_on_parent"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableCameraOnParentSwitchPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 634
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableCameraOnParentSwitchPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 635
    const-string v1, "capture_image"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 636
    const-string v1, "capture_video"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 637
    nop

    .line 638
    const-string v1, "disable_screen_capture"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableScreenCaptureSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 639
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableScreenCaptureSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 640
    nop

    .line 641
    const-string v1, "disable_screen_capture_on_parent"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableScreenCaptureOnParentSwitchPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 642
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableScreenCaptureOnParentSwitchPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 643
    const-string v1, "mute_audio"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mMuteAudioSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 644
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mMuteAudioSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 646
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isManagedProfileOwner()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    .line 647
    nop

    .line 648
    const-string v1, "set_get_preferential_network_service_status"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPreferentialNetworkServiceSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 649
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPreferentialNetworkServiceSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 650
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPreferentialNetworkServiceSwitchPreference:Landroidx/preference/SwitchPreference;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 651
    invoke-interface {v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isPreferentialNetworkServiceEnabled()Z

    move-result v2

    .line 650
    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 653
    :cond_1
    const-string v1, "lock_screen_policy"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 654
    const-string v1, "password_constraints"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 655
    const-string v1, "reset_password"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 656
    const-string v1, "lock_now"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 657
    const-string/jumbo v1, "system_update_policy"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 658
    const-string/jumbo v1, "system_update_pending"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 659
    const-string v1, "set_always_on_vpn"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 660
    const-string v1, "set_global_http_proxy"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 661
    const-string v1, "clear_global_http_proxy"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 662
    const-string v1, "set_private_dns_mode"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 663
    const-string v1, "network_stats"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 664
    const-string v1, "manage_cert_installer"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 665
    const-string v1, "disable_status_bar"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 666
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v1, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 667
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda22;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 668
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda33;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 669
    const-string v1, "reenable_status_bar"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 670
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v1, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 671
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda22;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 672
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda33;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 673
    const-string v1, "disable_keyguard"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 674
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v1, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 675
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda22;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 676
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda33;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 677
    const-string v1, "reenable_keyguard"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 678
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v1, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 679
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda22;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 680
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda33;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 681
    const-string/jumbo v1, "start_kiosk_mode"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 682
    nop

    .line 683
    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mStayOnWhilePluggedInSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 684
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mStayOnWhilePluggedInSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 685
    const-string v1, "remove_managed_profile"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 686
    const-string v1, "factory_reset_device"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 687
    const-string v1, "remove_device_owner"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 688
    const-string v1, "enable_backup_service"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableBackupServicePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 689
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableBackupServicePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 690
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableBackupServicePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda44;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda44;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 691
    const-string v1, "common_criteria_mode"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mCommonCriteriaModePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 692
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mCommonCriteriaModePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 693
    nop

    .line 694
    const-string v1, "enable_usb_data_signaling"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableUsbDataSignalingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 695
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableUsbDataSignalingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 696
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->canUsbDataSignalingBeDisabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 697
    const-string v1, "PolicyManagement"

    const-string v2, "USB data signaling cannot be disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableUsbDataSignalingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 699
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableUsbDataSignalingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda55;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda55;-><init>()V

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 701
    :cond_2
    const-string v1, "request_bugreport"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 702
    const-string v1, "enable_security_logging"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableSecurityLoggingPreference:Landroidx/preference/SwitchPreference;

    .line 703
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableSecurityLoggingPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 704
    const-string v1, "request_security_logs"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 705
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v1, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 706
    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda66;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda66;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 708
    .local v1, "securityLoggingChecker":Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v2, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 709
    nop

    .line 710
    const-string v2, "request_pre_reboot_security_logs"

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestPreRebootSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 711
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestPreRebootSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v2, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 712
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestPreRebootSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v2, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 713
    const-string v2, "enable_network_logging"

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableNetworkLoggingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 714
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableNetworkLoggingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v2, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 715
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableNetworkLoggingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda77;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda77;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 717
    const-string v2, "request_network_logs"

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestNetworkLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 718
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestNetworkLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v2, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 719
    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda79;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda79;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 721
    .local v2, "networkLoggingChecker":Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestNetworkLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v3, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 722
    const-string v3, "set_accessibility_services"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 723
    const-string v3, "set_input_methods"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 724
    const-string v3, "set_input_methods_on_parent"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 725
    const-string v3, "set_notification_listeners"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 726
    const-string v3, "set_notification_listeners_text"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 727
    const-string v3, "set_disable_account_management"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 728
    const-string v3, "get_disable_account_management"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 729
    const-string v3, "add_account"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 730
    const-string v3, "remove_account"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 731
    const-string v3, "block_uninstallation_by_pkg"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 732
    const-string v3, "block_uninstallation_list"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 733
    const-string v3, "app_feedback_notifications"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 734
    nop

    .line 735
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableAppFeedbackNotificationsPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 736
    const-string v3, "enable_system_apps"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 737
    const-string v3, "enable_system_apps_by_package_name"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 738
    const-string v3, "enable_system_apps_by_intent"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 739
    nop

    .line 740
    const-string v3, "install_existing_packages"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mInstallExistingPackagePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 741
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mInstallExistingPackagePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v3, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 742
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mInstallExistingPackagePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda22;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda22;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v3, v4}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 743
    const-string v3, "install_apk_package"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 744
    const-string/jumbo v3, "uninstall_package"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 745
    const-string v3, "hide_apps"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 746
    const-string v3, "hide_apps_parent"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mHideAppsParentPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 747
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mHideAppsParentPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v3, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 748
    const-string/jumbo v3, "unhide_apps"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 749
    const-string/jumbo v3, "unhide_apps_parent"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUnhideAppsParentPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 750
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUnhideAppsParentPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v3, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 751
    const-string/jumbo v3, "suspend_apps"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 752
    const-string/jumbo v3, "unsuspend_apps"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 753
    const-string v3, "clear_app_data"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 754
    const-string v3, "keep_uninstalled_packages"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 755
    const-string v3, "managed_configurations"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 756
    const-string v3, "disable_metered_data"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 757
    const-string v3, "generic_delegation"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 758
    const-string v3, "app_restrictions_managing_package"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 759
    const-string v3, "request_manage_credentials"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 760
    const-string v3, "install_key_certificate"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 761
    const-string v3, "generate_key_and_certificate"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 762
    const-string v3, "remove_key_certificate"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 763
    const-string/jumbo v3, "test_key_usability"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 764
    const-string v3, "install_ca_certificate"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 765
    const-string v3, "get_ca_certificates"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 766
    const-string v3, "remove_all_ca_certificates"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 767
    const-string v3, "managed_profile_policies"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 768
    const-string v3, "set_permission_policy"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 769
    const-string v3, "manage_app_permissions"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 770
    const-string v3, "create_wifi_configuration"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 771
    const-string v3, "create_eap_tls_wifi_configuration"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 772
    nop

    .line 773
    const-string v3, "enable_wifi_config_lockdown"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mLockdownAdminConfiguredNetworksPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 774
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mLockdownAdminConfiguredNetworksPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v3, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 775
    const-string v3, "modify_wifi_configuration"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 776
    const-string v3, "modify_owned_wifi_configuration"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 777
    const-string v3, "remove_not_owned_wifi_configurations"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 778
    const-string/jumbo v3, "transfer_ownership_to_component"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 779
    const-string/jumbo v3, "show_wifi_mac_address"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 780
    nop

    .line 781
    const-string v3, "install_nonmarket_apps"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mInstallNonMarketAppsPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 782
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mInstallNonMarketAppsPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda80;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda80;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v3, v4}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 783
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mInstallNonMarketAppsPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v3, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 784
    const-string v3, "set_user_restrictions"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 785
    nop

    .line 786
    const-string v3, "set_user_restrictions_parent"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUserRestrictionsParentPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 787
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUserRestrictionsParentPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v3, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 789
    const-string v3, "reboot"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 790
    const-string v3, "set_short_support_message"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 791
    const-string v3, "set_long_support_message"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 792
    const-string v3, "set_new_password"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 793
    const-string v3, "set_profile_parent_new_password"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 794
    const-string v3, "set_profile_parent_new_password_device_requirement"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    .line 795
    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 796
    const-string v3, "cross_profile_apps"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 797
    const-string v3, "cross_profile_apps_allowlist"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 799
    const-string v3, "set_screen_brightness"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 800
    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 801
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 802
    const-string v3, "auto_brightness"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAutoBrightnessPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 803
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAutoBrightnessPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v3, v4}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 804
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAutoBrightnessPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v3, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 805
    const-string v3, "set_screen_off_timeout"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 806
    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 807
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 809
    const-string v3, "set_time"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 810
    const-string v3, "set_time_zone"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 812
    const-string v3, "set_profile_name"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 814
    const-string v3, "manage_override_apn"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 815
    const-string v3, "managed_system_updates"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 817
    const-string v3, "cross_profile_calendar"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 818
    const-string v3, "enterprise_slice"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 819
    const-string v3, "set_factory_reset_protection_policy"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 820
    const-string v3, "set_organization_id"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 822
    const-string v3, "nearby_notification_streaming"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 823
    const-string v3, "nearby_app_streaming"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 825
    const-string v3, "grant_key_pair_to_app"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 826
    const-string v3, "set_wifi_min_security_level"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 827
    const-string v3, "set_wifi_ssid_restriction"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 828
    const-string v3, "mte_policy"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 830
    const-string v3, "credential_manager_set_allowlist"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 831
    const-string v3, "credential_manager_set_allowlist_and_system"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    .line 832
    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 833
    const-string v3, "credential_manager_set_blocklist"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 834
    const-string v3, "credential_manager_clear_policy"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 835
    const-string v3, "manage_esim"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 837
    nop

    .line 838
    const-string v3, "bind_device_admin_policies"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 839
    .local v3, "bindDeviceAdminPreference":Lcom/afwsamples/testdpc/common/preference/DpcPreference;
    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda2;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v3, v4}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 844
    invoke-virtual {v3, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 846
    nop

    .line 847
    const-string v4, "set_auto_time_required"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimeRequiredPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 848
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimeRequiredPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda3;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 849
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimeRequiredPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 850
    const-string v4, "set_auto_time"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 851
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 852
    const-string v4, "set_auto_time_zone"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimeZonePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 853
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimeZonePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 855
    nop

    .line 856
    const-string v4, "set_device_organization_name"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/EditTextPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetDeviceOrganizationNamePreference:Landroidx/preference/Preference;

    .line 857
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetDeviceOrganizationNamePreference:Landroidx/preference/Preference;

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 859
    const-string v4, "set_location_enabled"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLocationEnabledPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 860
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLocationEnabledPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 862
    const-string v4, "set_location_mode"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLocationModePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 863
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLocationModePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 865
    const-string/jumbo v4, "suspend_personal_apps"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSuspendPersonalApps:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 866
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSuspendPersonalApps:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 868
    const-string v4, "profile_max_time_off"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mProfileMaxTimeOff:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    .line 869
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mProfileMaxTimeOff:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 870
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->maybeUpdateProfileMaxTimeOff()V

    .line 872
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onCreateSetNewPasswordWithComplexityPreference()V

    .line 873
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onCreateSetRequiredPasswordComplexityPreference()V

    .line 874
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onCreateSetRequiredPasswordComplexityOnParentPreference()V

    .line 875
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->constrainSpecialCasePreferences()V

    .line 877
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->maybeDisableLockTaskPreferences()V

    .line 878
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadAppFeedbackNotifications()V

    .line 879
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadAppStatus()V

    .line 880
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadSecurityPatch()V

    .line 881
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadEnrollmentSpecificId()V

    .line 882
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadIsEphemeralUserUi()V

    .line 883
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadCameraDisableUi()V

    .line 884
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadScreenCaptureDisableUi()V

    .line 885
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadMuteAudioUi()V

    .line 886
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableBackupServiceUi()V

    .line 887
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadCommonCriteriaModeUi()V

    .line 888
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableUsbDataSignalingUi()V

    .line 889
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableSecurityLoggingUi()V

    .line 890
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableNetworkLoggingUi()V

    .line 891
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadSetAutoTimeRequiredUi()V

    .line 892
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadSetAutoTimeUi()V

    .line 893
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadSetAutoTimeZoneUi()V

    .line 894
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableLogoutUi()V

    .line 895
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadAutoBrightnessUi()V

    .line 896
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadPersonalAppsSuspendedUi()V

    .line 897
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "preference",
            "newValue"
        }
    .end annotation

    .line 1611
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1613
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string/jumbo v2, "stay_on_while_plugged_in"

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1672
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1613
    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "override_key_selection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "set_location_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "mute_audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "disable_camera_on_parent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "set_location_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "app_feedback_notifications"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "set_required_password_complexity_on_parent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "disable_camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "enable_logout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "enable_usb_data_signaling"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "enable_wifi_config_lockdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "auto_brightness"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "profile_max_time_off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1c

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "set_get_preferential_network_service_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "set_device_organization_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "set_auto_time_zone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "set_auto_time_required"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "disable_screen_capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "set_new_password_with_complexity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    goto :goto_1

    :sswitch_14
    const-string v1, "disable_screen_capture_on_parent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_15
    const-string v1, "enable_security_logging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_16
    const-string v1, "enable_network_logging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_17
    const-string/jumbo v1, "suspend_personal_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1b

    goto :goto_1

    :sswitch_18
    const-string v1, "install_nonmarket_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_1

    :sswitch_19
    const-string v1, "set_auto_time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto :goto_1

    :sswitch_1a
    const-string v1, "enable_backup_service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1b
    const-string v1, "set_required_password_complexity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    goto :goto_1

    :sswitch_1c
    const-string v1, "common_criteria_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v6, "1"

    const-string v7, "0"

    packed-switch v1, :pswitch_data_0

    .line 1768
    return v3

    .line 1762
    :pswitch_0
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1763
    .local v1, "timeoutSec":J
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1764
    invoke-virtual {v6, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 1763
    invoke-virtual {v3, v5, v6, v7}, Landroid/app/admin/DevicePolicyManager;->setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V

    .line 1765
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->maybeUpdateProfileMaxTimeOff()V

    .line 1766
    return v4

    .line 1758
    .end local v1    # "timeoutSec":J
    :pswitch_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V

    .line 1759
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadPersonalAppsSuspendedUi()V

    .line 1760
    return v4

    .line 1745
    :pswitch_2
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1746
    const/4 v1, 0x3

    .local v1, "locationMode":I
    goto :goto_2

    .line 1748
    .end local v1    # "locationMode":I
    :cond_1
    const/4 v1, 0x0

    .line 1750
    .restart local v1    # "locationMode":I
    :goto_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 1753
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v7, v8, v3

    const-string v3, "%d"

    invoke-static {v6, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1750
    const-string v6, "location_mode"

    invoke-virtual {v2, v5, v6, v3}, Landroid/app/admin/DevicePolicyManager;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadLocationEnabledUi()V

    .line 1755
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadLocationModeUi()V

    .line 1756
    return v4

    .line 1739
    .end local v1    # "locationMode":I
    :pswitch_3
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setLocationEnabled(Landroid/content/ComponentName;Z)V

    .line 1740
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadLocationEnabledUi()V

    .line 1741
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadLocationModeUi()V

    .line 1742
    return v4

    .line 1733
    :pswitch_4
    nop

    .line 1734
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1735
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget v2, Lcom/afwsamples/testdpc/R$string;->app_feedback_notifications:I

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1736
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1737
    return v4

    .line 1729
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_5
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1730
    .local v1, "requiredParentComplexity":I
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setRequiredPasswordComplexityOnParent(I)V

    .line 1731
    return v4

    .line 1725
    .end local v1    # "requiredParentComplexity":I
    :pswitch_6
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1726
    .local v1, "requiredComplexity":I
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setRequiredPasswordComplexity(I)V

    .line 1727
    return v4

    .line 1719
    .end local v1    # "requiredComplexity":I
    :pswitch_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1720
    .local v1, "intent":Landroid/content/Intent;
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 1721
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1720
    const-string v3, "android.app.extra.PASSWORD_COMPLEXITY"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1722
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->startActivity(Landroid/content/Intent;)V

    .line 1723
    return v4

    .line 1711
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_8
    iget-boolean v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mIsOrganizationOwnedProfileOwner:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mParentDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    :goto_3
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 1715
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    move-object v6, v7

    .line 1712
    :goto_4
    const-string v3, "screen_brightness_mode"

    invoke-virtual {v1, v2, v3, v6}, Landroid/app/admin/DevicePolicyManager;->setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadAutoBrightnessUi()V

    .line 1717
    return v4

    .line 1707
    :pswitch_9
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setLogoutEnabled(Landroid/content/ComponentName;Z)V

    .line 1708
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableLogoutUi()V

    .line 1709
    return v4

    .line 1700
    :pswitch_a
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda7;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda8;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v1, v2, v3, v5}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setOrganizationName(Ljava/lang/CharSequence;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1704
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetDeviceOrganizationNamePreference:Landroidx/preference/Preference;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1705
    return v4

    .line 1696
    :pswitch_b
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setAutoTimeZoneEnabled(Z)V

    .line 1697
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadSetAutoTimeZoneUi()V

    .line 1698
    return v4

    .line 1692
    :pswitch_c
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setAutoTimeEnabled(Z)V

    .line 1693
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadSetAutoTimeUi()V

    .line 1694
    return v4

    .line 1688
    :pswitch_d
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V

    .line 1689
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadSetAutoTimeRequiredUi()V

    .line 1690
    return v4

    .line 1681
    :pswitch_e
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 1684
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    move-object v6, v7

    .line 1681
    :goto_5
    const-string v3, "install_non_market_apps"

    invoke-virtual {v1, v2, v3, v6}, Landroid/app/admin/DevicePolicyManager;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->updateInstallNonMarketAppsPreference()V

    .line 1686
    return v4

    .line 1676
    :pswitch_f
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 1677
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1676
    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setConfiguredNetworksLockdownState(Landroid/content/ComponentName;Z)V

    .line 1678
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadLockdownAdminConfiguredNetworksUi()V

    .line 1679
    return v4

    .line 1669
    :pswitch_10
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 1672
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v7, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->BATTERY_PLUGGED_ANY:Ljava/lang/String;

    .line 1669
    :cond_5
    invoke-virtual {v1, v3, v2, v7}, Landroid/app/admin/DevicePolicyManager;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->updateStayOnWhilePluggedInPreference()V

    .line 1674
    return v4

    .line 1660
    :pswitch_11
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    .line 1661
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda5;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda6;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 1660
    invoke-interface {v1, v2, v3, v5}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPreferentialNetworkServiceEnabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1667
    return v4

    .line 1656
    :pswitch_12
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    .line 1657
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadMuteAudioUi()V

    .line 1658
    return v4

    .line 1652
    :pswitch_13
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setScreenCaptureDisabledOnParent(Z)V

    .line 1653
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadScreenCaptureDisableOnParentUi()V

    .line 1654
    return v4

    .line 1647
    :pswitch_14
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setScreenCaptureDisabled(Z)V

    .line 1649
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadScreenCaptureDisableUi()V

    .line 1650
    return v4

    .line 1643
    :pswitch_15
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setNetworkLoggingEnabled(Z)V

    .line 1644
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableNetworkLoggingUi()V

    .line 1645
    return v4

    .line 1639
    :pswitch_16
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setSecurityLoggingEnabled(Z)V

    .line 1640
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableSecurityLoggingUi()V

    .line 1641
    return v4

    .line 1635
    :pswitch_17
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setUsbDataSignalingEnabled(Z)V

    .line 1636
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableUsbDataSignalingUi()V

    .line 1637
    return v4

    .line 1631
    :pswitch_18
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setCommonCriteriaModeEnabled(Z)V

    .line 1632
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadCommonCriteriaModeUi()V

    .line 1633
    return v4

    .line 1627
    :pswitch_19
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setBackupServiceEnabled(Z)V

    .line 1628
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableBackupServiceUi()V

    .line 1629
    return v4

    .line 1623
    :pswitch_1a
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setCameraDisabledOnParent(Z)V

    .line 1624
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadCameraDisableOnParentUi()V

    .line 1625
    return v4

    .line 1618
    :pswitch_1b
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setCameraDisabled(Z)V

    .line 1620
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadCameraDisableUi()V

    .line 1621
    return v4

    .line 1615
    :pswitch_1c
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1616
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6dc064d1 -> :sswitch_1c
        -0x6d10d7c1 -> :sswitch_1b
        -0x61e7cc8c -> :sswitch_1a
        -0x50267840 -> :sswitch_19
        -0x4e324934 -> :sswitch_18
        -0x49a461b2 -> :sswitch_17
        -0x3d1d2c6e -> :sswitch_16
        -0x3258c364 -> :sswitch_15
        -0x2a84c24b -> :sswitch_14
        -0x23eb0211 -> :sswitch_13
        -0xcc4df56 -> :sswitch_12
        -0xc0672c2 -> :sswitch_11
        -0x4e6d335 -> :sswitch_10
        0x90415ab -> :sswitch_f
        0xe42eb0d -> :sswitch_e
        0x1571f84e -> :sswitch_d
        0x15fd2d14 -> :sswitch_c
        0x176690e1 -> :sswitch_b
        0x366d64bc -> :sswitch_a
        0x3f39ca3c -> :sswitch_9
        0x3f8943c6 -> :sswitch_8
        0x4a92085c -> :sswitch_7
        0x4e2e8f0a -> :sswitch_6
        0x5411d58c -> :sswitch_5
        0x587c16d0 -> :sswitch_4
        0x5da1aee7 -> :sswitch_3
        0x5f139a30 -> :sswitch_2
        0x675202f4 -> :sswitch_1
        0x769e3879 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroidx/preference/Preference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preference"
        }
    .end annotation

    .line 1029
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, "key":Ljava/lang/String;
    const-string v1, "manage_lock_task"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1031
    sget v1, Lcom/afwsamples/testdpc/R$string;->lock_task_title:I

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda64;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda64;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-direct {p0, v1, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showManageLockTaskListPrompt(ILcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;)V

    .line 1040
    return v2

    .line 1041
    :cond_0
    const-string v1, "check_lock_task_permitted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1042
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showCheckLockTaskPermittedPrompt()V

    .line 1043
    return v2

    .line 1044
    :cond_1
    const-string v1, "set_lock_task_features"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1045
    new-instance v1, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1046
    return v2

    .line 1047
    :cond_2
    const-string v1, "reset_password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 1048
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v1, v4, :cond_3

    .line 1049
    new-instance v1, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1050
    return v2

    .line 1052
    :cond_3
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showResetPasswordPrompt()V

    .line 1053
    return v3

    .line 1055
    :cond_4
    const-string v1, "lock_now"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1056
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lockNow()V

    .line 1057
    return v2

    .line 1058
    :cond_5
    const-string/jumbo v1, "start_lock_task"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1059
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->startLockTask()V

    .line 1060
    return v2

    .line 1061
    :cond_6
    const-string v1, "relaunch_in_lock_task"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1062
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->relaunchInLockTaskMode()V

    .line 1063
    return v2

    .line 1064
    :cond_7
    const-string/jumbo v1, "stop_lock_task"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1066
    :try_start_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->stopLockTask()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    goto :goto_0

    .line 1067
    :catch_0
    move-exception v1

    .line 1070
    :goto_0
    return v2

    .line 1071
    :cond_8
    const-string v1, "remove_managed_profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1072
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showWipeDataPrompt(Z)V

    .line 1073
    return v2

    .line 1074
    :cond_9
    const-string v1, "factory_reset_device"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1075
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showWipeDataPrompt(Z)V

    .line 1076
    return v2

    .line 1077
    :cond_a
    const-string v1, "remove_device_owner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1078
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showRemoveDeviceOwnerPrompt()V

    .line 1079
    return v2

    .line 1080
    :cond_b
    const-string v1, "request_bugreport"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1081
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->requestBugReport()V

    .line 1082
    return v2

    .line 1083
    :cond_c
    const-string v1, "request_network_logs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1084
    new-instance v1, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1085
    return v2

    .line 1086
    :cond_d
    const-string v1, "request_security_logs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1087
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->newInstance(Z)Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1088
    return v2

    .line 1089
    :cond_e
    const-string v1, "request_pre_reboot_security_logs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1090
    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->newInstance(Z)Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1091
    return v2

    .line 1092
    :cond_f
    const-string v1, "set_accessibility_services"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1093
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetAccessibilityServicesTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetAccessibilityServicesTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1094
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetAccessibilityServicesTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;->cancel(Z)Z

    .line 1096
    :cond_10
    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetAccessibilityServicesTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;

    .line 1097
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetAccessibilityServicesTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1098
    return v2

    .line 1099
    :cond_11
    const-string v1, "set_input_methods"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1100
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetInputMethodsTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetInputMethodsTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1101
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetInputMethodsTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;->cancel(Z)Z

    .line 1103
    :cond_12
    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetInputMethodsTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;

    .line 1104
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetInputMethodsTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1105
    return v2

    .line 1106
    :cond_13
    const-string v1, "set_input_methods_on_parent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1107
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setPermittedInputMethodsOnParent()V

    .line 1108
    return v2

    .line 1109
    :cond_14
    const-string v1, "set_notification_listeners"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1110
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetNotificationListenersTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetNotificationListenersTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1111
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetNotificationListenersTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;->cancel(Z)Z

    .line 1113
    :cond_15
    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetNotificationListenersTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;

    .line 1114
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetNotificationListenersTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1115
    return v2

    .line 1116
    :cond_16
    const-string v1, "set_notification_listeners_text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1117
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setNotificationAllowlistEditBox()V

    .line 1118
    return v2

    .line 1119
    :cond_17
    const-string v1, "set_disable_account_management"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1120
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetDisableAccountManagementPrompt()V

    .line 1121
    return v2

    .line 1122
    :cond_18
    const-string v1, "get_disable_account_management"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1123
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showDisableAccountTypeList()V

    .line 1124
    return v2

    .line 1125
    :cond_19
    const-string v1, "add_account"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1126
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/afwsamples/testdpc/AddAccountActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1127
    return v2

    .line 1128
    :cond_1a
    const-string v1, "remove_account"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1129
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->chooseAccount()V

    .line 1130
    return v2

    .line 1131
    :cond_1b
    const-string v1, "create_managed_profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1132
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetupManagement()V

    .line 1133
    return v2

    .line 1134
    :cond_1c
    const-string v1, "create_and_manage_user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1135
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showCreateAndManageUserPrompt()V

    .line 1136
    return v2

    .line 1137
    :cond_1d
    const-string v1, "remove_user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1138
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showRemoveUserPrompt()V

    .line 1139
    return v2

    .line 1140
    :cond_1e
    const-string/jumbo v1, "switch_user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1141
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSwitchUserPrompt()V

    .line 1142
    return v2

    .line 1143
    :cond_1f
    const-string/jumbo v1, "start_user_in_background"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1144
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showStartUserInBackgroundPrompt()V

    .line 1145
    return v2

    .line 1146
    :cond_20
    const-string/jumbo v1, "stop_user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1147
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showStopUserPrompt()V

    .line 1148
    return v2

    .line 1149
    :cond_21
    const-string v1, "logout_user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1150
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->logoutUser()V

    .line 1151
    return v2

    .line 1152
    :cond_22
    const-string v1, "set_user_session_message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1153
    new-instance v1, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1154
    return v2

    .line 1155
    :cond_23
    const-string v1, "set_affiliation_ids"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1156
    new-instance v1, Lcom/afwsamples/testdpc/policy/ManageAffiliationIdsFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/ManageAffiliationIdsFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1157
    return v2

    .line 1158
    :cond_24
    const-string v1, "block_uninstallation_by_pkg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1159
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showBlockUninstallationByPackageNamePrompt()V

    .line 1160
    return v2

    .line 1161
    :cond_25
    const-string v1, "block_uninstallation_list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1162
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showBlockUninstallationPrompt()V

    .line 1163
    return v2

    .line 1164
    :cond_26
    const-string v1, "enable_system_apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1165
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showEnableSystemAppsPrompt()V

    .line 1166
    return v2

    .line 1167
    :cond_27
    const-string v1, "enable_system_apps_by_package_name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1168
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showEnableSystemAppByPackageNamePrompt()V

    .line 1169
    return v2

    .line 1170
    :cond_28
    const-string v1, "enable_system_apps_by_intent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1171
    new-instance v1, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1172
    return v2

    .line 1173
    :cond_29
    const-string v1, "install_existing_packages"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1174
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showInstallExistingPackagePrompt()V

    .line 1175
    return v2

    .line 1176
    :cond_2a
    const-string v1, "install_apk_package"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1177
    const/16 v1, 0x1e0d

    invoke-static {p0, v1}, Lcom/afwsamples/testdpc/common/Util;->showFileViewer(Landroidx/preference/PreferenceFragment;I)V

    .line 1178
    return v2

    .line 1179
    :cond_2b
    const-string/jumbo v1, "uninstall_package"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1180
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showUninstallPackagePrompt()V

    .line 1181
    return v2

    .line 1182
    :cond_2c
    const-string v1, "hide_apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1183
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showHideAppsPrompt(Z)V

    .line 1184
    return v2

    .line 1185
    :cond_2d
    const-string v1, "hide_apps_parent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1186
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showHideAppsOnParentPrompt(Z)V

    .line 1187
    return v2

    .line 1188
    :cond_2e
    const-string/jumbo v1, "unhide_apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1189
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showHideAppsPrompt(Z)V

    .line 1190
    return v2

    .line 1191
    :cond_2f
    const-string/jumbo v1, "unhide_apps_parent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1192
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showHideAppsOnParentPrompt(Z)V

    .line 1193
    return v2

    .line 1194
    :cond_30
    const-string/jumbo v1, "suspend_apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1195
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSuspendAppsPrompt(Z)V

    .line 1196
    return v2

    .line 1197
    :cond_31
    const-string/jumbo v1, "unsuspend_apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1198
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSuspendAppsPrompt(Z)V

    .line 1199
    return v2

    .line 1200
    :cond_32
    const-string v1, "clear_app_data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1201
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showClearAppDataPrompt()V

    .line 1202
    return v2

    .line 1203
    :cond_33
    const-string v1, "keep_uninstalled_packages"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1204
    new-instance v1, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1205
    return v2

    .line 1206
    :cond_34
    const-string v1, "managed_configurations"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1207
    new-instance v1, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1208
    return v2

    .line 1209
    :cond_35
    const-string v1, "disable_metered_data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1210
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetMeteredDataPrompt()V

    .line 1211
    return v2

    .line 1212
    :cond_36
    const-string v1, "generic_delegation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1213
    new-instance v1, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1214
    return v2

    .line 1215
    :cond_37
    const-string v1, "app_restrictions_managing_package"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1216
    new-instance v1, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1217
    return v2

    .line 1218
    :cond_38
    const-string v1, "set_permission_policy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1219
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetPermissionPolicyDialog()V

    .line 1220
    return v2

    .line 1221
    :cond_39
    const-string v1, "manage_app_permissions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1222
    new-instance v1, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1223
    return v2

    .line 1224
    :cond_3a
    const-string v1, "request_manage_credentials"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1225
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showConfigurePolicyAndManageCredentialsPrompt()V

    .line 1226
    return v2

    .line 1227
    :cond_3b
    const-string v1, "install_key_certificate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1228
    const/16 v1, 0x1e09

    invoke-static {p0, v1}, Lcom/afwsamples/testdpc/common/Util;->showFileViewer(Landroidx/preference/PreferenceFragment;I)V

    .line 1229
    return v2

    .line 1230
    :cond_3c
    const-string v1, "remove_key_certificate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1231
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->choosePrivateKeyForRemoval()V

    .line 1232
    return v2

    .line 1233
    :cond_3d
    const-string v1, "generate_key_and_certificate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1234
    const-string v1, "generated-key-testdpc-1"

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showPromptForGeneratedKeyAlias(Ljava/lang/String;)V

    .line 1235
    return v2

    .line 1236
    :cond_3e
    const-string/jumbo v1, "test_key_usability"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1237
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->testKeyCanBeUsedForSigning()V

    .line 1238
    return v2

    .line 1239
    :cond_3f
    const-string v1, "install_ca_certificate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1240
    const/16 v1, 0x1e0a

    invoke-static {p0, v1}, Lcom/afwsamples/testdpc/common/Util;->showFileViewer(Landroidx/preference/PreferenceFragment;I)V

    .line 1241
    return v2

    .line 1242
    :cond_40
    const-string v1, "get_ca_certificates"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1243
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showCaCertificateList()V

    .line 1244
    return v2

    .line 1245
    :cond_41
    const-string v1, "remove_all_ca_certificates"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1246
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->uninstallAllUserCaCerts(Landroid/content/ComponentName;)V

    .line 1247
    sget v1, Lcom/afwsamples/testdpc/R$string;->all_ca_certificates_removed:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 1248
    return v2

    .line 1249
    :cond_42
    const-string v1, "managed_profile_policies"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1250
    new-instance v1, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;-><init>()V

    const-string v3, "ProfilePolicyManagementFragment"

    invoke-direct {p0, v1, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 1252
    return v2

    .line 1253
    :cond_43
    const-string v1, "lock_screen_policy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1254
    new-instance v1, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$Container;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$Container;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1255
    return v2

    .line 1256
    :cond_44
    const-string v1, "password_constraints"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1257
    new-instance v1, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$Container;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$Container;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1258
    return v2

    .line 1259
    :cond_45
    const-string/jumbo v1, "system_update_policy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1260
    new-instance v1, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1261
    return v2

    .line 1262
    :cond_46
    const-string/jumbo v1, "system_update_pending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1263
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showPendingSystemUpdate()V

    .line 1264
    return v2

    .line 1265
    :cond_47
    const-string v1, "set_always_on_vpn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1266
    new-instance v1, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1267
    return v2

    .line 1268
    :cond_48
    const-string v1, "set_global_http_proxy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1269
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetGlobalHttpProxyDialog()V

    .line 1270
    return v2

    .line 1271
    :cond_49
    const-string v1, "clear_global_http_proxy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1272
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    .line 1273
    return v2

    .line 1274
    :cond_4a
    const-string v1, "set_private_dns_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1275
    new-instance v1, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1276
    return v2

    .line 1277
    :cond_4b
    const-string v1, "network_stats"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1278
    new-instance v1, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1279
    return v2

    .line 1280
    :cond_4c
    const-string v1, "manage_cert_installer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1281
    new-instance v1, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1282
    return v2

    .line 1283
    :cond_4d
    const-string v1, "disable_status_bar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1284
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setStatusBarDisabled(Z)V

    .line 1285
    return v2

    .line 1286
    :cond_4e
    const-string v1, "reenable_status_bar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1287
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setStatusBarDisabled(Z)V

    .line 1288
    return v2

    .line 1289
    :cond_4f
    const-string v1, "disable_keyguard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1290
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setKeyGuardDisabled(Z)V

    .line 1291
    return v2

    .line 1292
    :cond_50
    const-string v1, "reenable_keyguard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1293
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setKeyGuardDisabled(Z)V

    .line 1294
    return v2

    .line 1295
    :cond_51
    const-string/jumbo v1, "start_kiosk_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1296
    sget v1, Lcom/afwsamples/testdpc/R$string;->kiosk_select_title:I

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$1;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$1;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-direct {p0, v1, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showManageLockTaskListPrompt(ILcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;)V

    .line 1304
    return v2

    .line 1305
    :cond_52
    const-string v1, "capture_image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1306
    const/16 v1, 0x1e0b

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mImageUri:Landroid/net/Uri;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p0, v4, v1, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->dispatchCaptureIntent(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 1307
    return v2

    .line 1308
    :cond_53
    const-string v1, "capture_video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1309
    const/16 v1, 0x1e0c

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mVideoUri:Landroid/net/Uri;

    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {p0, v4, v1, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->dispatchCaptureIntent(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 1310
    return v2

    .line 1311
    :cond_54
    const-string v1, "create_wifi_configuration"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1312
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showWifiConfigCreationDialog()V

    .line 1313
    return v2

    .line 1314
    :cond_55
    const-string v1, "create_eap_tls_wifi_configuration"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1315
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showEapTlsWifiConfigCreationDialog()V

    .line 1316
    return v2

    .line 1317
    :cond_56
    const-string v1, "modify_wifi_configuration"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1318
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->createFragment(Z)Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1319
    return v2

    .line 1320
    :cond_57
    const-string v1, "modify_owned_wifi_configuration"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1321
    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->createFragment(Z)Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1322
    return v2

    .line 1323
    :cond_58
    const-string v1, "remove_not_owned_wifi_configurations"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1324
    nop

    .line 1325
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->removeNonCallerConfiguredNetworks()Z

    move-result v1

    .line 1326
    .local v1, "removed":Z
    if-eqz v1, :cond_59

    .line 1327
    const-string v3, "One or more networks are removed"

    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 1329
    :cond_59
    const-string v3, "No network is removed"

    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    .line 1331
    :goto_1
    return v2

    .line 1332
    .end local v1    # "removed":Z
    :cond_5a
    const-string/jumbo v1, "show_wifi_mac_address"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1333
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showWifiMacAddress()V

    .line 1334
    return v2

    .line 1335
    :cond_5b
    const-string v1, "set_user_restrictions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1336
    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1337
    return v2

    .line 1338
    :cond_5c
    const-string v1, "set_user_restrictions_parent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1339
    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1340
    return v2

    .line 1341
    :cond_5d
    const-string v1, "reboot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1342
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reboot()V

    .line 1343
    return v2

    .line 1344
    :cond_5e
    const-string v1, "set_short_support_message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1345
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->newInstance(I)Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1346
    return v2

    .line 1347
    :cond_5f
    const-string v1, "set_long_support_message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 1348
    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->newInstance(I)Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1349
    return v2

    .line 1350
    :cond_60
    const-string v1, "set_new_password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1351
    const-string v1, "PolicyManagement"

    const-string/jumbo v3, "starting android.app.action.SET_NEW_PASSWORD"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->startActivity(Landroid/content/Intent;)V

    .line 1353
    return v2

    .line 1354
    :cond_61
    const-string v1, "set_profile_parent_new_password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    if-eqz v1, :cond_62

    .line 1355
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->startActivity(Landroid/content/Intent;)V

    .line 1356
    return v2

    .line 1357
    :cond_62
    const-string v1, "set_profile_parent_new_password_device_requirement"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1358
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1360
    const-string v3, "android.app.extra.DEVICE_PASSWORD_REQUIREMENT_ONLY"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 1358
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->startActivity(Landroid/content/Intent;)V

    .line 1361
    return v2

    .line 1362
    :cond_63
    const-string v1, "bind_device_admin_policies"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1363
    new-instance v1, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1364
    return v2

    .line 1365
    :cond_64
    const-string v1, "cross_profile_apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1366
    new-instance v1, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1367
    return v2

    .line 1368
    :cond_65
    const-string v1, "cross_profile_apps_allowlist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1369
    new-instance v1, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1370
    return v2

    .line 1371
    :cond_66
    const-string v1, "set_screen_brightness"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 1372
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetScreenBrightnessDialog()V

    .line 1373
    return v2

    .line 1374
    :cond_67
    const-string v1, "nearby_notification_streaming"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1375
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showNearbyNotificationStreamingDialog()V

    .line 1376
    return v2

    .line 1377
    :cond_68
    const-string v1, "nearby_app_streaming"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1378
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showNearbyAppStreamingDialog()V

    .line 1379
    return v2

    .line 1380
    :cond_69
    const-string v1, "set_screen_off_timeout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1381
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetScreenOffTimeoutDialog()V

    .line 1382
    return v2

    .line 1383
    :cond_6a
    const-string/jumbo v1, "transfer_ownership_to_component"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 1384
    new-instance v1, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1385
    return v2

    .line 1386
    :cond_6b
    const-string v1, "set_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "0"

    const/16 v5, 0x1e

    if-eqz v1, :cond_6d

    .line 1387
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    if-lt v1, v5, :cond_6c

    .line 1388
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setAutoTimeEnabled(Z)V

    goto :goto_2

    .line 1390
    :cond_6c
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const-string v5, "auto_time"

    invoke-virtual {v1, v3, v5, v4}, Landroid/app/admin/DevicePolicyManager;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    :goto_2
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetTimeDialog()V

    .line 1393
    return v2

    .line 1394
    :cond_6d
    const-string v1, "set_time_zone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1395
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    if-lt v1, v5, :cond_6e

    .line 1396
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setAutoTimeZoneEnabled(Z)V

    goto :goto_3

    .line 1398
    :cond_6e
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const-string v5, "auto_time_zone"

    invoke-virtual {v1, v3, v5, v4}, Landroid/app/admin/DevicePolicyManager;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    :goto_3
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetTimeZoneDialog()V

    .line 1401
    return v2

    .line 1402
    :cond_6f
    const-string v1, "manage_override_apn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 1403
    new-instance v1, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1404
    return v2

    .line 1405
    :cond_70
    const-string v1, "managed_system_updates"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1406
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->promptInstallUpdate()V

    .line 1407
    return v2

    .line 1408
    :cond_71
    const-string v1, "cross_profile_calendar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1409
    new-instance v1, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1410
    return v2

    .line 1411
    :cond_72
    const-string v1, "enterprise_slice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 1412
    new-instance v1, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1413
    return v2

    .line 1414
    :cond_73
    const-string v1, "set_profile_name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 1415
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetProfileNameDialog()V

    .line 1416
    return v2

    .line 1417
    :cond_74
    const-string v1, "set_factory_reset_protection_policy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 1418
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    if-lt v1, v5, :cond_75

    .line 1419
    new-instance v1, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1420
    return v2

    .line 1422
    :cond_75
    return v3

    .line 1423
    :cond_76
    const-string v1, "set_organization_id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1424
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetOrganizationIdDialog()V

    .line 1425
    return v2

    .line 1426
    :cond_77
    const-string v1, "grant_key_pair_to_app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1427
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showGrantKeyPairToAppDialog()V

    .line 1428
    return v2

    .line 1429
    :cond_78
    const-string v1, "set_wifi_min_security_level"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 1430
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetWifiMinSecurityLevelDialog()V

    .line 1431
    return v2

    .line 1432
    :cond_79
    const-string v1, "set_wifi_ssid_restriction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1433
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetWifiSsidRestrictionDialog()V

    .line 1434
    return v2

    .line 1435
    :cond_7a
    const-string v1, "mte_policy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1436
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showMtePolicyDialog()V

    .line 1437
    return v2

    .line 1438
    :cond_7b
    const-string v1, "credential_manager_set_allowlist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 1439
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showCredentialManagerPolicyDialog(I)V

    .line 1440
    return v2

    .line 1441
    :cond_7c
    const-string v1, "credential_manager_set_allowlist_and_system"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1442
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showCredentialManagerPolicyDialog(I)V

    .line 1443
    return v2

    .line 1444
    :cond_7d
    const-string v1, "credential_manager_set_blocklist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1445
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showCredentialManagerPolicyDialog(I)V

    .line 1446
    return v2

    .line 1447
    :cond_7e
    const-string v1, "credential_manager_clear_policy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 1448
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->resetCredentialManagerPolicy()V

    .line 1449
    return v2

    .line 1450
    :cond_7f
    const-string v1, "manage_esim"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 1451
    new-instance v1, Lcom/afwsamples/testdpc/policy/EsimControlFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;-><init>()V

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    .line 1452
    return v2

    .line 1454
    :cond_80
    return v3
.end method

.method public onResume()V
    .locals 2

    .line 1012
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onResume()V

    .line 1013
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->policies_management:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1017
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->updateStayOnWhilePluggedInPreference()V

    .line 1018
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->updateInstallNonMarketAppsPreference()V

    .line 1019
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadPasswordCompliant()V

    .line 1020
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadPasswordComplexity()V

    .line 1021
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadRequiredPasswordComplexity()V

    .line 1022
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadSeparateChallenge()V

    .line 1023
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadAffiliatedApis()V

    .line 1024
    return-void
.end method

.method public updateInstallNonMarketAppsPreference()V
    .locals 3

    .line 2223
    nop

    .line 2225
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2224
    const-string v1, "install_non_market_apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2226
    .local v0, "isInstallNonMarketAppsAllowed":I
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mInstallNonMarketAppsPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2227
    return-void
.end method
