.class public Lcom/afwsamples/testdpc/policy/UserRestriction;
.super Ljava/lang/Object;
.source "UserRestriction.java"


# static fields
.field public static final ALL_USER_RESTRICTIONS:[Lcom/afwsamples/testdpc/policy/UserRestriction;

.field private static final DEVICE_OWNER_ONLY_RESTRICTIONS:[Ljava/lang/String;

.field public static final MANAGED_PROFILE_ONLY_RESTRICTIONS:[Ljava/lang/String;

.field public static MNC_PLUS_RESTRICTIONS:[Ljava/lang/String;

.field public static NON_MANAGED_PROFILE_RESTRICTIONS:[Ljava/lang/String;

.field public static NYC_PLUS_RESTRICTIONS:[Ljava/lang/String;

.field public static OC_PLUS_RESTRICTIONS:[Ljava/lang/String;

.field public static PIC_PLUS_RESTRICTIONS:[Ljava/lang/String;

.field public static final PRIMARY_USER_ONLY_RESTRICTIONS:[Ljava/lang/String;

.field public static final PROFILE_OWNER_ORG_DEVICE_RESTRICTIONS:[Ljava/lang/String;

.field public static QT_PLUS_RESTRICTIONS:[Ljava/lang/String;

.field public static SC_PLUS_RESTRICTIONS:[Ljava/lang/String;

.field public static TM_PLUS_RESTRICTIONS:[Ljava/lang/String;

.field public static UDC_PLUS_RESTRICTIONS:[Ljava/lang/String;

.field public static VIC_PLUS_PARENT_RESTRICTIONS:[Ljava/lang/String;

.field public static VIC_PLUS_RESTRICTIONS:[Ljava/lang/String;


# instance fields
.field public key:Ljava/lang/String;

.field public minSdkVersion:I

.field public permission:Ljava/lang/String;

.field public titleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 84

    .line 110
    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v1, "allow_parent_profile_app_linking"

    sget v2, Lcom/afwsamples/testdpc/R$string;->allow_parent_profile_app_linking:I

    invoke-direct {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "no_add_managed_profile"

    sget v3, Lcom/afwsamples/testdpc/R$string;->disallow_add_managed_profile:I

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v3, Lcom/afwsamples/testdpc/R$string;->disallow_add_user:I

    const-string v4, "android.permission.MANAGE_DEVICE_POLICY_MODIFY_USERS"

    const-string v5, "no_add_user"

    invoke-direct {v2, v5, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v4, "no_adjust_volume"

    sget v5, Lcom/afwsamples/testdpc/R$string;->disallow_adjust_volume:I

    invoke-direct {v3, v4, v5}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v5, Lcom/afwsamples/testdpc/R$string;->disallow_apps_control:I

    const-string v6, "android.permission.MANAGE_DEVICE_POLICY_APPS_CONTROL"

    const-string v7, "no_control_apps"

    invoke-direct {v4, v7, v5, v6}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v6, Lcom/afwsamples/testdpc/R$string;->disallow_bluetooth:I

    const-string v7, "no_bluetooth"

    invoke-direct {v5, v7, v6}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v8, Lcom/afwsamples/testdpc/R$string;->disallow_change_wifi_state:I

    const-string v9, "no_change_wifi_state"

    invoke-direct {v6, v9, v8}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v10, "no_config_bluetooth"

    sget v11, Lcom/afwsamples/testdpc/R$string;->disallow_config_bluetooth:I

    invoke-direct {v8, v10, v11}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v11, "no_config_cell_broadcasts"

    sget v12, Lcom/afwsamples/testdpc/R$string;->disallow_config_cell_broadcasts:I

    invoke-direct {v10, v11, v12}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v12, Lcom/afwsamples/testdpc/R$string;->disallow_config_credentials:I

    const-string v13, "android.permission.MANAGE_DEVICE_POLICY_LOCK_CREDENTIALS"

    const-string v14, "no_config_credentials"

    invoke-direct {v11, v14, v12, v13}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v12, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v13, Lcom/afwsamples/testdpc/R$string;->disallow_config_mobile_networks:I

    const-string v14, "android.permission.MANAGE_DEVICE_POLICY_MOBILE_NETWORK"

    const-string v15, "no_config_mobile_networks"

    invoke-direct {v12, v15, v13, v14}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v13, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v14, "no_config_tethering"

    sget v15, Lcom/afwsamples/testdpc/R$string;->disallow_config_tethering:I

    invoke-direct {v13, v14, v15}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v15, Lcom/afwsamples/testdpc/R$string;->disallow_config_vpn:I

    move-object/from16 v16, v0

    const-string v0, "android.permission.MANAGE_DEVICE_POLICY_VPN"

    move-object/from16 v17, v1

    const-string v1, "no_config_vpn"

    invoke-direct {v14, v1, v15, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v1, Lcom/afwsamples/testdpc/R$string;->disallow_config_wifi:I

    const-string v15, "android.permission.MANAGE_DEVICE_POLICY_WIFI"

    move-object/from16 v18, v2

    const-string v2, "no_config_wifi"

    invoke-direct {v0, v2, v1, v15}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "no_content_capture"

    sget v15, Lcom/afwsamples/testdpc/R$string;->disallow_content_capture:I

    invoke-direct {v1, v2, v15}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v15, "no_content_suggestions"

    move-object/from16 v19, v0

    sget v0, Lcom/afwsamples/testdpc/R$string;->disallow_content_suggestions:I

    invoke-direct {v2, v15, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v15, "no_create_windows"

    move-object/from16 v20, v1

    sget v1, Lcom/afwsamples/testdpc/R$string;->disallow_create_windows:I

    invoke-direct {v0, v15, v1}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v15, "no_system_error_dialogs"

    move-object/from16 v21, v0

    sget v0, Lcom/afwsamples/testdpc/R$string;->disallow_system_error_dialogs:I

    invoke-direct {v1, v15, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v15, "no_cross_profile_copy_paste"

    move-object/from16 v22, v1

    sget v1, Lcom/afwsamples/testdpc/R$string;->disallow_cross_profile_copy_paste:I

    invoke-direct {v0, v15, v1}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v15, Lcom/afwsamples/testdpc/R$string;->disallow_data_roaming:I

    move-object/from16 v23, v0

    const-string v0, "no_data_roaming"

    invoke-direct {v1, v0, v15}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/afwsamples/testdpc/policy/UserRestriction;

    move-object/from16 v24, v0

    const-string v0, "no_debugging_features"

    move-object/from16 v25, v1

    sget v1, Lcom/afwsamples/testdpc/R$string;->disallow_debugging_features:I

    invoke-direct {v15, v0, v1}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v1, "no_factory_reset"

    move-object/from16 v26, v2

    sget v2, Lcom/afwsamples/testdpc/R$string;->disallow_factory_reset:I

    invoke-direct {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "no_fun"

    move-object/from16 v27, v0

    sget v0, Lcom/afwsamples/testdpc/R$string;->disallow_fun:I

    invoke-direct {v1, v2, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v2, Lcom/afwsamples/testdpc/R$string;->disallow_install_apps:I

    move-object/from16 v28, v1

    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_APPS_CONTROL"

    move-object/from16 v29, v3

    const-string v3, "no_install_apps"

    invoke-direct {v0, v3, v2, v1}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v2, Lcom/afwsamples/testdpc/R$string;->disallow_install_unknown_sources:I

    const-string v3, "android.permission.MANAGE_DEVICE_POLICY_INSTALL_UNKNOWN_SOURCES"

    move-object/from16 v30, v0

    const-string v0, "no_install_unknown_sources"

    invoke-direct {v1, v0, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v2, Lcom/afwsamples/testdpc/R$string;->disallow_install_unknown_sources_globally:I

    const-string v3, "android.permission.MANAGE_DEVICE_POLICY_INSTALL_UNKNOWN_SOURCES"

    move-object/from16 v31, v1

    const-string v1, "no_install_unknown_sources_globally"

    invoke-direct {v0, v1, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v2, Lcom/afwsamples/testdpc/R$string;->disallow_modify_accounts:I

    const-string v3, "android.permission.MANAGE_DEVICE_POLICY_ACCOUNT_MANAGEMENT"

    move-object/from16 v32, v0

    const-string v0, "no_modify_accounts"

    invoke-direct {v1, v0, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "no_physical_media"

    sget v3, Lcom/afwsamples/testdpc/R$string;->disallow_mount_physical_media:I

    invoke-direct {v0, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_network_reset"

    move-object/from16 v33, v0

    sget v0, Lcom/afwsamples/testdpc/R$string;->disallow_network_reset:I

    invoke-direct {v2, v3, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_outgoing_beam"

    move-object/from16 v34, v1

    sget v1, Lcom/afwsamples/testdpc/R$string;->disallow_outgoing_beam:I

    invoke-direct {v0, v3, v1}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_outgoing_calls"

    move-object/from16 v35, v0

    sget v0, Lcom/afwsamples/testdpc/R$string;->disallow_outgoing_calls:I

    invoke-direct {v1, v3, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_remove_managed_profile"

    move-object/from16 v36, v1

    sget v1, Lcom/afwsamples/testdpc/R$string;->disallow_remove_managed_profile:I

    invoke-direct {v0, v3, v1}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v3, Lcom/afwsamples/testdpc/R$string;->disallow_remove_user:I

    move-object/from16 v37, v0

    const-string v0, "android.permission.MANAGE_DEVICE_POLICY_MODIFY_USERS"

    move-object/from16 v38, v2

    const-string v2, "no_remove_user"

    invoke-direct {v1, v2, v3, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v2, Lcom/afwsamples/testdpc/R$string;->disallow_safe_boot:I

    const-string v3, "android.permission.MANAGE_DEVICE_POLICY_SAFE_BOOT"

    move-object/from16 v39, v1

    const-string v1, "no_safe_boot"

    invoke-direct {v0, v1, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v3, Lcom/afwsamples/testdpc/R$string;->disallow_set_user_icon:I

    move-object/from16 v40, v0

    const-string v0, "android.permission.MANAGE_DEVICE_POLICY_MODIFY_USERS"

    move-object/from16 v41, v1

    const-string v1, "no_set_user_icon"

    invoke-direct {v2, v1, v3, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v1, Lcom/afwsamples/testdpc/R$string;->disallow_set_wallpaper:I

    const-string v3, "android.permission.MANAGE_DEVICE_POLICY_WALLPAPER"

    move-object/from16 v42, v2

    const-string v2, "no_set_wallpaper"

    invoke-direct {v0, v2, v1, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "no_share_location"

    sget v3, Lcom/afwsamples/testdpc/R$string;->disallow_share_location:I

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v3, Lcom/afwsamples/testdpc/R$string;->disallow_sms:I

    move-object/from16 v43, v0

    const-string v0, "android.permission.MANAGE_DEVICE_POLICY_SMS"

    move-object/from16 v44, v1

    const-string v1, "no_sms"

    invoke-direct {v2, v1, v3, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v1, Lcom/afwsamples/testdpc/R$string;->disallow_uninstall_apps:I

    const-string v3, "android.permission.MANAGE_DEVICE_POLICY_APPS_CONTROL"

    move-object/from16 v45, v2

    const-string v2, "no_uninstall_apps"

    invoke-direct {v0, v2, v1, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "no_unmute_microphone"

    sget v3, Lcom/afwsamples/testdpc/R$string;->disallow_unmute_microphone:I

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_usb_file_transfer"

    move-object/from16 v46, v0

    sget v0, Lcom/afwsamples/testdpc/R$string;->disallow_usb_file_transfer:I

    invoke-direct {v2, v3, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "ensure_verify_apps"

    move-object/from16 v47, v1

    sget v1, Lcom/afwsamples/testdpc/R$string;->ensure_verify_apps:I

    invoke-direct {v0, v3, v1}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v3, Lcom/afwsamples/testdpc/R$string;->disallow_autofill:I

    move-object/from16 v48, v0

    const-string v0, "android.permission.MANAGE_DEVICE_POLICY_AUTOFILL"

    move-object/from16 v49, v2

    const-string v2, "no_autofill"

    invoke-direct {v1, v2, v3, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "no_bluetooth_sharing"

    sget v3, Lcom/afwsamples/testdpc/R$string;->disallow_bluetooth_sharing:I

    invoke-direct {v0, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_unified_password"

    move-object/from16 v50, v0

    sget v0, Lcom/afwsamples/testdpc/R$string;->disallow_unified_password:I

    invoke-direct {v2, v3, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_user_switch"

    move-object/from16 v51, v1

    sget v1, Lcom/afwsamples/testdpc/R$string;->disallow_user_switch:I

    invoke-direct {v0, v3, v1}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v3, Lcom/afwsamples/testdpc/R$string;->disallow_config_location:I

    move-object/from16 v52, v0

    const-string v0, "android.permission.MANAGE_DEVICE_POLICY_LOCATION"

    move-object/from16 v53, v2

    const-string v2, "no_config_location"

    invoke-direct {v1, v2, v3, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v2, Lcom/afwsamples/testdpc/R$string;->disallow_airplane_mode:I

    const-string v3, "no_airplane_mode"

    invoke-direct {v0, v3, v2}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    move-object/from16 v54, v0

    sget v0, Lcom/afwsamples/testdpc/R$string;->disallow_config_brightness:I

    move-object/from16 v55, v1

    const-string v1, "no_config_brightness"

    invoke-direct {v2, v1, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    move-object/from16 v56, v1

    sget v1, Lcom/afwsamples/testdpc/R$string;->disallow_config_date_time:I

    move-object/from16 v57, v2

    const-string v2, "android.permission.MANAGE_DEVICE_POLICY_TIME"

    move-object/from16 v58, v3

    const-string v3, "no_config_date_time"

    invoke-direct {v0, v3, v1, v2}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v2, Lcom/afwsamples/testdpc/R$string;->disallow_config_screen_timeout:I

    move-object/from16 v59, v0

    const-string v0, "android.permission.MANAGE_DEVICE_POLICY_DISPLAY"

    move-object/from16 v60, v3

    const-string v3, "no_config_screen_timeout"

    invoke-direct {v1, v3, v2, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v2, Lcom/afwsamples/testdpc/R$string;->disallow_ambient_display:I

    move-object/from16 v61, v1

    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_DISPLAY"

    move-object/from16 v62, v3

    const-string v3, "no_ambient_display"

    invoke-direct {v0, v3, v2, v1}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "no_sharing_into_profile"

    sget v3, Lcom/afwsamples/testdpc/R$string;->disallow_share_into_work_profile:I

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_printing"

    move-object/from16 v63, v0

    sget v0, Lcom/afwsamples/testdpc/R$string;->disallow_printing:I

    invoke-direct {v2, v3, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v3, Lcom/afwsamples/testdpc/R$string;->disallow_config_private_dns:I

    move-object/from16 v64, v1

    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_RESTRICT_PRIVATE_DNS"

    move-object/from16 v65, v2

    const-string v2, "disallow_config_private_dns"

    invoke-direct {v0, v2, v3, v1}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "disallow_microphone_toggle"

    move-object/from16 v66, v0

    sget v0, Lcom/afwsamples/testdpc/R$string;->disallow_microphone_toggle:I

    invoke-direct {v1, v3, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v3, Lcom/afwsamples/testdpc/R$string;->disallow_camera_toggle:I

    move-object/from16 v67, v1

    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_CAMERA_TOGGLE"

    move-object/from16 v68, v2

    const-string v2, "disallow_camera_toggle"

    invoke-direct {v0, v2, v3, v1}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v2, Lcom/afwsamples/testdpc/R$string;->disallow_wifi_tethering:I

    const-string v3, "no_wifi_tethering"

    invoke-direct {v1, v3, v2}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    move-object/from16 v69, v0

    sget v0, Lcom/afwsamples/testdpc/R$string;->disallow_sharing_admin_configured_wifi:I

    move-object/from16 v70, v1

    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_WIFI"

    move-object/from16 v71, v3

    const-string v3, "no_sharing_admin_configured_wifi"

    invoke-direct {v2, v3, v0, v1}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v1, Lcom/afwsamples/testdpc/R$string;->disallow_wifi_direct:I

    const-string v3, "no_wifi_direct"

    invoke-direct {v0, v3, v1}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    move-object/from16 v72, v0

    sget v0, Lcom/afwsamples/testdpc/R$string;->disallow_add_wifi_config:I

    move-object/from16 v73, v2

    const-string v2, "android.permission.MANAGE_DEVICE_POLICY_WIFI"

    move-object/from16 v74, v3

    const-string v3, "no_add_wifi_config"

    invoke-direct {v1, v3, v0, v2}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v2, Lcom/afwsamples/testdpc/R$string;->disallow_cellular_2g:I

    move-object/from16 v75, v1

    const-string v1, "no_cellular_2g"

    invoke-direct {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    move-object/from16 v76, v0

    const-string v0, "disallow_config_default_apps"

    move-object/from16 v77, v1

    sget v1, Lcom/afwsamples/testdpc/R$string;->disallow_config_default_apps:I

    invoke-direct {v2, v0, v1}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v1, Lcom/afwsamples/testdpc/R$string;->disallow_config_locale:I

    move-object/from16 v78, v2

    const-string v2, "android.permission.MANAGE_DEVICE_POLICY_LOCALE"

    move-object/from16 v79, v3

    const-string v3, "no_config_locale"

    invoke-direct {v0, v3, v1, v2}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "no_ultra_wideband_radio"

    sget v3, Lcom/afwsamples/testdpc/R$string;->disallow_ultra_wideband_radio:I

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_assist_content"

    move-object/from16 v80, v0

    sget v0, Lcom/afwsamples/testdpc/R$string;->disallow_assist_content:I

    invoke-direct {v2, v3, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_sim_globally"

    move-object/from16 v81, v1

    sget v1, Lcom/afwsamples/testdpc/R$string;->disallow_sim_globally:I

    invoke-direct {v0, v3, v1}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    sget v3, Lcom/afwsamples/testdpc/R$string;->disallow_add_private_profile:I

    move-object/from16 v82, v0

    const-string v0, "android.permission.MANAGE_DEVICE_POLICY_PROFILES"

    move-object/from16 v83, v2

    const-string v2, "no_add_private_profile"

    invoke-direct {v1, v2, v3, v0}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x44

    new-array v0, v0, [Lcom/afwsamples/testdpc/policy/UserRestriction;

    const/4 v2, 0x0

    aput-object v16, v0, v2

    const/4 v3, 0x1

    aput-object v17, v0, v3

    const/16 v16, 0x0

    const/4 v2, 0x2

    aput-object v18, v0, v2

    const/16 v17, 0x1

    const/4 v3, 0x3

    aput-object v29, v0, v3

    const/16 v18, 0x3

    const/4 v3, 0x4

    aput-object v4, v0, v3

    const/4 v4, 0x5

    aput-object v5, v0, v4

    const/4 v5, 0x6

    aput-object v6, v0, v5

    const/4 v6, 0x7

    aput-object v8, v0, v6

    const/16 v8, 0x8

    aput-object v10, v0, v8

    const/16 v10, 0x9

    aput-object v11, v0, v10

    const/16 v10, 0xa

    aput-object v12, v0, v10

    const/16 v10, 0xb

    aput-object v13, v0, v10

    const/16 v10, 0xc

    aput-object v14, v0, v10

    const/16 v10, 0xd

    aput-object v19, v0, v10

    const/16 v10, 0xe

    aput-object v20, v0, v10

    const/16 v10, 0xf

    aput-object v26, v0, v10

    const/16 v10, 0x10

    aput-object v21, v0, v10

    const/16 v10, 0x11

    aput-object v22, v0, v10

    const/16 v10, 0x12

    aput-object v23, v0, v10

    const/16 v10, 0x13

    aput-object v25, v0, v10

    const/16 v10, 0x14

    aput-object v15, v0, v10

    const/16 v10, 0x15

    aput-object v27, v0, v10

    const/16 v10, 0x16

    aput-object v28, v0, v10

    const/16 v10, 0x17

    aput-object v30, v0, v10

    const/16 v10, 0x18

    aput-object v31, v0, v10

    const/16 v10, 0x19

    aput-object v32, v0, v10

    const/16 v10, 0x1a

    aput-object v34, v0, v10

    const/16 v10, 0x1b

    aput-object v33, v0, v10

    const/16 v10, 0x1c

    aput-object v38, v0, v10

    const/16 v10, 0x1d

    aput-object v35, v0, v10

    const/16 v10, 0x1e

    aput-object v36, v0, v10

    const/16 v10, 0x1f

    aput-object v37, v0, v10

    const/16 v10, 0x20

    aput-object v39, v0, v10

    const/16 v10, 0x21

    aput-object v40, v0, v10

    const/16 v10, 0x22

    aput-object v42, v0, v10

    const/16 v10, 0x23

    aput-object v43, v0, v10

    const/16 v10, 0x24

    aput-object v44, v0, v10

    const/16 v10, 0x25

    aput-object v45, v0, v10

    const/16 v10, 0x26

    aput-object v46, v0, v10

    const/16 v10, 0x27

    aput-object v47, v0, v10

    const/16 v10, 0x28

    aput-object v49, v0, v10

    const/16 v10, 0x29

    aput-object v48, v0, v10

    const/16 v10, 0x2a

    aput-object v51, v0, v10

    const/16 v10, 0x2b

    aput-object v50, v0, v10

    const/16 v10, 0x2c

    aput-object v53, v0, v10

    const/16 v10, 0x2d

    aput-object v52, v0, v10

    const/16 v10, 0x2e

    aput-object v55, v0, v10

    const/16 v10, 0x2f

    aput-object v54, v0, v10

    const/16 v10, 0x30

    aput-object v57, v0, v10

    const/16 v10, 0x31

    aput-object v59, v0, v10

    const/16 v10, 0x32

    aput-object v61, v0, v10

    const/16 v10, 0x33

    aput-object v63, v0, v10

    const/16 v10, 0x34

    aput-object v64, v0, v10

    const/16 v10, 0x35

    aput-object v65, v0, v10

    const/16 v10, 0x36

    aput-object v66, v0, v10

    const/16 v10, 0x37

    aput-object v67, v0, v10

    const/16 v10, 0x38

    aput-object v69, v0, v10

    const/16 v10, 0x39

    aput-object v70, v0, v10

    const/16 v10, 0x3a

    aput-object v73, v0, v10

    const/16 v10, 0x3b

    aput-object v72, v0, v10

    const/16 v10, 0x3c

    aput-object v75, v0, v10

    const/16 v10, 0x3d

    aput-object v76, v0, v10

    const/16 v10, 0x3e

    aput-object v78, v0, v10

    const/16 v10, 0x3f

    aput-object v80, v0, v10

    const/16 v10, 0x40

    aput-object v81, v0, v10

    const/16 v10, 0x41

    aput-object v83, v0, v10

    const/16 v10, 0x42

    aput-object v82, v0, v10

    const/16 v10, 0x43

    aput-object v1, v0, v10

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->ALL_USER_RESTRICTIONS:[Lcom/afwsamples/testdpc/policy/UserRestriction;

    .line 236
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    aput-object v60, v0, v16

    const-string v1, "no_config_tethering"

    aput-object v1, v0, v17

    aput-object v24, v0, v2

    const-string v1, "no_debugging_features"

    aput-object v1, v0, v18

    aput-object v7, v0, v3

    const-string v1, "no_bluetooth_sharing"

    aput-object v1, v0, v4

    aput-object v9, v0, v5

    const-string v1, "no_config_bluetooth"

    aput-object v1, v0, v6

    const-string v1, "no_config_cell_broadcasts"

    aput-object v1, v0, v8

    const/16 v1, 0x9

    const-string v10, "no_config_location"

    aput-object v10, v0, v1

    const/16 v1, 0xa

    const-string v10, "no_config_mobile_networks"

    aput-object v10, v0, v1

    const/16 v1, 0xb

    aput-object v68, v0, v1

    const/16 v1, 0xc

    const-string v10, "no_config_wifi"

    aput-object v10, v0, v1

    const/16 v1, 0xd

    const-string v10, "no_content_capture"

    aput-object v10, v0, v1

    const/16 v1, 0xe

    const-string v10, "no_content_suggestions"

    aput-object v10, v0, v1

    const/16 v1, 0xf

    aput-object v41, v0, v1

    const/16 v1, 0x10

    const-string v10, "no_share_location"

    aput-object v10, v0, v1

    const/16 v1, 0x11

    const-string v10, "no_sms"

    aput-object v10, v0, v1

    const/16 v1, 0x12

    const-string v10, "no_usb_file_transfer"

    aput-object v10, v0, v1

    const/16 v1, 0x13

    aput-object v58, v0, v1

    const/16 v1, 0x14

    const-string v10, "no_physical_media"

    aput-object v10, v0, v1

    const/16 v1, 0x15

    const-string v10, "no_outgoing_calls"

    aput-object v10, v0, v1

    const/16 v1, 0x16

    const-string v10, "no_unmute_microphone"

    aput-object v10, v0, v1

    const/16 v1, 0x17

    aput-object v71, v0, v1

    const/16 v1, 0x18

    aput-object v74, v0, v1

    const/16 v1, 0x19

    aput-object v79, v0, v1

    const/16 v1, 0x1a

    aput-object v77, v0, v1

    const/16 v1, 0x1b

    const-string v10, "disallow_config_default_apps"

    aput-object v10, v0, v1

    const/16 v1, 0x1c

    const-string v10, "no_ultra_wideband_radio"

    aput-object v10, v0, v1

    const/16 v1, 0x1d

    aput-object v56, v0, v1

    const/16 v1, 0x1e

    aput-object v62, v0, v1

    const/16 v1, 0x1f

    const-string v10, "no_add_private_profile"

    aput-object v10, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->PROFILE_OWNER_ORG_DEVICE_RESTRICTIONS:[Ljava/lang/String;

    .line 272
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "no_add_managed_profile"

    aput-object v1, v0, v16

    const-string v1, "no_add_user"

    aput-object v1, v0, v17

    const-string v1, "no_adjust_volume"

    aput-object v1, v0, v2

    aput-object v7, v0, v18

    const-string v1, "no_config_bluetooth"

    aput-object v1, v0, v3

    const-string v1, "no_config_cell_broadcasts"

    aput-object v1, v0, v4

    const-string v1, "no_config_mobile_networks"

    aput-object v1, v0, v5

    const-string v1, "no_config_tethering"

    aput-object v1, v0, v6

    const-string v1, "no_config_wifi"

    aput-object v1, v0, v8

    const/16 v1, 0x9

    const-string v10, "no_create_windows"

    aput-object v10, v0, v1

    const/16 v1, 0xa

    const-string v10, "no_system_error_dialogs"

    aput-object v10, v0, v1

    const/16 v1, 0xb

    aput-object v24, v0, v1

    const/16 v1, 0xc

    const-string v10, "no_factory_reset"

    aput-object v10, v0, v1

    const/16 v1, 0xd

    const-string v10, "no_fun"

    aput-object v10, v0, v1

    const/16 v1, 0xe

    const-string v10, "no_physical_media"

    aput-object v10, v0, v1

    const/16 v1, 0xf

    const-string v10, "no_network_reset"

    aput-object v10, v0, v1

    const/16 v1, 0x10

    const-string v10, "no_outgoing_calls"

    aput-object v10, v0, v1

    const/16 v1, 0x11

    const-string v10, "no_remove_managed_profile"

    aput-object v10, v0, v1

    const/16 v1, 0x12

    aput-object v41, v0, v1

    const/16 v1, 0x13

    const-string v10, "no_sms"

    aput-object v10, v0, v1

    const/16 v1, 0x14

    const-string v10, "no_unmute_microphone"

    aput-object v10, v0, v1

    const/16 v1, 0x15

    const-string v10, "no_usb_file_transfer"

    aput-object v10, v0, v1

    const/16 v1, 0x16

    aput-object v58, v0, v1

    const/16 v1, 0x17

    aput-object v68, v0, v1

    const/16 v1, 0x18

    const-string v10, "no_ultra_wideband_radio"

    aput-object v10, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->PRIMARY_USER_ONLY_RESTRICTIONS:[Ljava/lang/String;

    .line 301
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "no_user_switch"

    aput-object v1, v0, v16

    const-string v1, "disallow_microphone_toggle"

    aput-object v1, v0, v17

    const-string v1, "disallow_camera_toggle"

    aput-object v1, v0, v2

    aput-object v9, v0, v18

    aput-object v71, v0, v3

    aput-object v74, v0, v4

    aput-object v79, v0, v5

    aput-object v77, v0, v6

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->DEVICE_OWNER_ONLY_RESTRICTIONS:[Ljava/lang/String;

    .line 313
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "allow_parent_profile_app_linking"

    aput-object v1, v0, v16

    const-string v1, "no_cross_profile_copy_paste"

    aput-object v1, v0, v17

    const-string v1, "no_unified_password"

    aput-object v1, v0, v2

    const-string v1, "no_sharing_into_profile"

    aput-object v1, v0, v18

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->MANAGED_PROFILE_ONLY_RESTRICTIONS:[Ljava/lang/String;

    .line 321
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "no_remove_user"

    aput-object v1, v0, v16

    const-string v1, "no_set_wallpaper"

    aput-object v1, v0, v17

    aput-object v60, v0, v2

    aput-object v58, v0, v18

    aput-object v62, v0, v3

    aput-object v56, v0, v4

    const-string v1, "no_ambient_display"

    aput-object v1, v0, v5

    const-string v1, "no_add_private_profile"

    aput-object v1, v0, v6

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->NON_MANAGED_PROFILE_RESTRICTIONS:[Ljava/lang/String;

    .line 333
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "allow_parent_profile_app_linking"

    aput-object v1, v0, v16

    aput-object v41, v0, v17

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->MNC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    .line 337
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    aput-object v24, v1, v16

    const-string v0, "no_set_user_icon"

    aput-object v0, v1, v17

    const-string v0, "no_set_wallpaper"

    aput-object v0, v1, v2

    sput-object v1, Lcom/afwsamples/testdpc/policy/UserRestriction;->NYC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    .line 341
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "no_add_managed_profile"

    aput-object v1, v0, v16

    aput-object v7, v0, v17

    const-string v1, "no_remove_managed_profile"

    aput-object v1, v0, v2

    const-string v1, "no_autofill"

    const/16 v18, 0x3

    aput-object v1, v0, v18

    const-string v1, "no_bluetooth_sharing"

    aput-object v1, v0, v3

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->OC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    .line 349
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "no_unified_password"

    aput-object v1, v0, v16

    const-string v1, "no_system_error_dialogs"

    aput-object v1, v0, v17

    const-string v1, "no_user_switch"

    aput-object v1, v0, v2

    const-string v1, "no_config_location"

    const/16 v18, 0x3

    aput-object v1, v0, v18

    aput-object v58, v0, v3

    aput-object v60, v0, v4

    aput-object v56, v0, v5

    aput-object v62, v0, v6

    const-string v1, "no_ambient_display"

    aput-object v1, v0, v8

    const/16 v1, 0x9

    const-string v5, "no_sharing_into_profile"

    aput-object v5, v0, v1

    const/16 v1, 0xa

    const-string v5, "no_printing"

    aput-object v5, v0, v1

    const/16 v1, 0xb

    const-string v5, "no_config_locale"

    aput-object v5, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->PIC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    .line 364
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "no_install_unknown_sources_globally"

    aput-object v1, v0, v16

    aput-object v68, v0, v17

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->QT_PLUS_RESTRICTIONS:[Ljava/lang/String;

    .line 368
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "disallow_microphone_toggle"

    aput-object v1, v0, v16

    const-string v1, "disallow_camera_toggle"

    aput-object v1, v0, v17

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->SC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    .line 372
    new-array v0, v4, [Ljava/lang/String;

    aput-object v9, v0, v16

    aput-object v71, v0, v17

    const-string v1, "no_sharing_admin_configured_wifi"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object v74, v0, v1

    aput-object v79, v0, v3

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->TM_PLUS_RESTRICTIONS:[Ljava/lang/String;

    .line 380
    new-array v0, v1, [Ljava/lang/String;

    aput-object v77, v0, v16

    const-string v1, "disallow_config_default_apps"

    aput-object v1, v0, v17

    const-string v1, "no_ultra_wideband_radio"

    aput-object v1, v0, v2

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->UDC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    .line 384
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v4, "no_sim_globally"

    aput-object v4, v1, v16

    sput-object v1, Lcom/afwsamples/testdpc/policy/UserRestriction;->VIC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    .line 386
    new-array v1, v3, [Ljava/lang/String;

    aput-object v56, v1, v16

    aput-object v62, v1, v0

    const-string v0, "no_assist_content"

    aput-object v0, v1, v2

    const-string v0, "no_add_private_profile"

    const/16 v18, 0x3

    aput-object v0, v1, v18

    sput-object v1, Lcom/afwsamples/testdpc/policy/UserRestriction;->VIC_PLUS_PARENT_RESTRICTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "titleResId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "titleResId"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/UserRestriction;->key:Ljava/lang/String;

    .line 101
    iput p2, p0, Lcom/afwsamples/testdpc/policy/UserRestriction;->titleResId:I

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "titleResId"    # I
    .param p3, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "titleResId",
            "permission"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/UserRestriction;->key:Ljava/lang/String;

    .line 106
    iput p2, p0, Lcom/afwsamples/testdpc/policy/UserRestriction;->titleResId:I

    .line 107
    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/UserRestriction;->permission:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public static getRestriction(Ljava/lang/String;)Lcom/afwsamples/testdpc/policy/UserRestriction;
    .locals 2
    .param p0, "restrictionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "restrictionKey"
        }
    .end annotation

    .line 394
    sget-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->ALL_USER_RESTRICTIONS:[Lcom/afwsamples/testdpc/policy/UserRestriction;

    invoke-static {v0}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/UserRestriction$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 396
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    .line 397
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/policy/UserRestriction;

    .line 394
    return-object v0
.end method

.method public static isDeviceOwnerOnlyRestriction(Lcom/afwsamples/testdpc/policy/UserRestriction;)Z
    .locals 3
    .param p0, "restriction"    # Lcom/afwsamples/testdpc/policy/UserRestriction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "restriction"
        }
    .end annotation

    .line 401
    sget-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->DEVICE_OWNER_ONLY_RESTRICTIONS:[Ljava/lang/String;

    invoke-static {v0}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/UserRestriction;->key:Ljava/lang/String;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/afwsamples/testdpc/policy/UserRestriction$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getRestriction$0(Ljava/lang/String;Lcom/afwsamples/testdpc/policy/UserRestriction;)Z
    .locals 1
    .param p0, "restrictionKey"    # Ljava/lang/String;
    .param p1, "r"    # Lcom/afwsamples/testdpc/policy/UserRestriction;

    .line 395
    iget-object v0, p1, Lcom/afwsamples/testdpc/policy/UserRestriction;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
