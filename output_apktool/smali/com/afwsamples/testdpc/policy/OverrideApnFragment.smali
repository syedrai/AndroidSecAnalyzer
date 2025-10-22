.class public Lcom/afwsamples/testdpc/policy/OverrideApnFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "OverrideApnFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ENABLE_OVERRIDE_APN_KEY:Ljava/lang/String; = "enable_override_apn"

.field private static final INSERT_OVERRIDE_APN_KEY:Ljava/lang/String; = "insert_override_apn"

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final REMOVE_OVERRIDE_APN_KEY:Ljava/lang/String; = "remove_override_apn"


# instance fields
.field private mAdminComponentName:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mEnableOverrideApnPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public static synthetic $r8$lambda$HI1OmF5Jf3rBESGN9SwjWPdiyAU(Lcom/afwsamples/testdpc/policy/OverrideApnFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->lambda$showInsertOverrideApnDialog$0(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-string v0, "OverrideApnFragment"

    sput-object v0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>()V

    return-void
.end method

.method private UriFromString(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private inetAddressFromString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .param p1, "inetAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inetAddress"
        }
    .end annotation

    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 290
    return-object v1

    .line 293
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/net/UnknownHostException;
    sget-object v2, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Can\'t parse InetAddress from string: unknown host."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget v2, Lcom/afwsamples/testdpc/R$string;->apn_wrong_inetaddress:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->showToast(I[Ljava/lang/Object;)V

    .line 297
    return-object v1
.end method

.method private synthetic lambda$showInsertOverrideApnDialog$0(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 22
    .param p1, "entryNameEditText"    # Landroid/widget/EditText;
    .param p2, "apnNameEditText"    # Landroid/widget/EditText;
    .param p3, "typeEditText"    # Landroid/widget/EditText;
    .param p4, "numericEditText"    # Landroid/widget/EditText;
    .param p5, "proxyEditText"    # Landroid/widget/EditText;
    .param p6, "portEditText"    # Landroid/widget/EditText;
    .param p7, "mmscEditText"    # Landroid/widget/EditText;
    .param p8, "mmsProxyEditText"    # Landroid/widget/EditText;
    .param p9, "mmsPortEditText"    # Landroid/widget/EditText;
    .param p10, "userEditText"    # Landroid/widget/EditText;
    .param p11, "passwordEditText"    # Landroid/widget/EditText;
    .param p12, "dialogView"    # Landroid/view/View;
    .param p13, "networkBitmaskEditText"    # Landroid/widget/EditText;
    .param p14, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p15, "i"    # I

    .line 169
    move-object/from16 v1, p0

    move-object/from16 v0, p12

    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "entryName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 171
    sget v2, Lcom/afwsamples/testdpc/R$string;->apn_entry_name_cannot_be_empty:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v1, v2, v4}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->showToast(I[Ljava/lang/Object;)V

    .line 172
    return-void

    .line 174
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "apnName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    sget v5, Lcom/afwsamples/testdpc/R$string;->apn_name_cannot_be_empty:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v1, v5, v4}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->showToast(I[Ljava/lang/Object;)V

    .line 177
    return-void

    .line 179
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->parseInt(Ljava/lang/String;I)I

    move-result v13

    .line 180
    .local v13, "apnTypeBitmask":I
    if-nez v13, :cond_2

    .line 181
    sget v5, Lcom/afwsamples/testdpc/R$string;->apn_type_cannot_be_zero:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v1, v5, v4}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->showToast(I[Ljava/lang/Object;)V

    .line 182
    return-void

    .line 185
    :cond_2
    nop

    .line 187
    invoke-virtual/range {p4 .. p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-virtual/range {p5 .. p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->inetAddressFromString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 191
    invoke-virtual/range {p6 .. p6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-direct {v1, v7, v8}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 192
    invoke-virtual/range {p7 .. p7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->UriFromString(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 193
    invoke-virtual/range {p8 .. p8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->inetAddressFromString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 194
    invoke-virtual/range {p9 .. p9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11, v8}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 195
    invoke-virtual/range {p10 .. p10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 196
    invoke-virtual/range {p11 .. p11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Lcom/afwsamples/testdpc/R$id;->apn_auth_type:I

    .line 202
    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Spinner;

    .line 203
    invoke-virtual {v15}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v15

    const/4 v8, 0x1

    sub-int/2addr v15, v8

    sget v4, Lcom/afwsamples/testdpc/R$id;->apn_protocol:I

    .line 206
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 207
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    sub-int/2addr v4, v8

    const/16 v18, 0x1

    sget v8, Lcom/afwsamples/testdpc/R$id;->apn_roaming_protocol:I

    .line 209
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 210
    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v19, v2

    .end local v2    # "apnName":Ljava/lang/String;
    .local v19, "apnName":Ljava/lang/String;
    sget v2, Lcom/afwsamples/testdpc/R$id;->apn_carrier_enabled:I

    .line 212
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 213
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    move-object/from16 v20, v3

    const/4 v3, 0x1

    .end local v3    # "entryName":Ljava/lang/String;
    .local v20, "entryName":Ljava/lang/String;
    if-ne v2, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 215
    :goto_0
    invoke-virtual/range {p13 .. p13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v21, v3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->parseInt(Ljava/lang/String;I)I

    move-result v17

    sget v2, Lcom/afwsamples/testdpc/R$id;->apn_mvno_type:I

    .line 216
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 217
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/16 v18, 0x1

    add-int/lit8 v18, v2, -0x1

    .line 186
    move v0, v15

    move v15, v8

    move-object v8, v10

    move-object v10, v12

    move v12, v0

    move-object v2, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v9

    move v9, v11

    move-object v11, v14

    move-object/from16 v3, v20

    move/from16 v16, v21

    const/4 v0, -0x1

    move v14, v4

    move-object/from16 v4, v19

    .end local v19    # "apnName":Ljava/lang/String;
    .end local v20    # "entryName":Ljava/lang/String;
    .restart local v3    # "entryName":Ljava/lang/String;
    .local v4, "apnName":Ljava/lang/String;
    invoke-direct/range {v1 .. v18}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->makeApnSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;ILandroid/net/Uri;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;IIIIZII)Landroid/telephony/data/ApnSetting;

    move-result-object v2

    .line 219
    .end local v4    # "apnName":Ljava/lang/String;
    .local v2, "apn":Landroid/telephony/data/ApnSetting;
    .restart local v19    # "apnName":Ljava/lang/String;
    iget-object v4, v1, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, v1, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5, v2}, Landroid/app/admin/DevicePolicyManager;->addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I

    move-result v4

    .line 220
    .local v4, "insertedId":I
    if-ne v4, v0, :cond_4

    .line 221
    sget v0, Lcom/afwsamples/testdpc/R$string;->insert_override_apn_error:I

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v1, v0, v5}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 223
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inserted APN id: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->showToast(Ljava/lang/String;)V

    .line 225
    :goto_1
    return-void
.end method

.method private makeApnSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;ILandroid/net/Uri;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;IIIIZII)Landroid/telephony/data/ApnSetting;
    .locals 16
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "entryName"    # Ljava/lang/String;
    .param p3, "apnName"    # Ljava/lang/String;
    .param p4, "proxyAddress"    # Ljava/net/InetAddress;
    .param p5, "proxyPort"    # I
    .param p6, "mmsc"    # Landroid/net/Uri;
    .param p7, "mmsProxyAddress"    # Ljava/net/InetAddress;
    .param p8, "mmsProxyPort"    # I
    .param p9, "user"    # Ljava/lang/String;
    .param p10, "password"    # Ljava/lang/String;
    .param p11, "authType"    # I
    .param p12, "apnTypeBitmask"    # I
    .param p13, "protocol"    # I
    .param p14, "roamingProtocol"    # I
    .param p15, "carrierEnabled"    # Z
    .param p16, "networkTypeBitmask"    # I
    .param p17, "mvnoType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "operatorNumeric",
            "entryName",
            "apnName",
            "proxyAddress",
            "proxyPort",
            "mmsc",
            "mmsProxyAddress",
            "mmsProxyPort",
            "user",
            "password",
            "authType",
            "apnTypeBitmask",
            "protocol",
            "roamingProtocol",
            "carrierEnabled",
            "networkTypeBitmask",
            "mvnoType"
        }
    .end annotation

    .line 263
    new-instance v0, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    .line 264
    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setOperatorNumeric(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 265
    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 266
    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 267
    move-object/from16 v4, p4

    invoke-virtual {v0, v4}, Landroid/telephony/data/ApnSetting$Builder;->setProxyAddress(Ljava/net/InetAddress;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 268
    move/from16 v5, p5

    invoke-virtual {v0, v5}, Landroid/telephony/data/ApnSetting$Builder;->setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 269
    move-object/from16 v6, p6

    invoke-virtual {v0, v6}, Landroid/telephony/data/ApnSetting$Builder;->setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 270
    move-object/from16 v7, p7

    invoke-virtual {v0, v7}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyAddress(Ljava/net/InetAddress;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 271
    move/from16 v8, p8

    invoke-virtual {v0, v8}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 272
    move-object/from16 v9, p9

    invoke-virtual {v0, v9}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 273
    move-object/from16 v10, p10

    invoke-virtual {v0, v10}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 274
    move/from16 v11, p11

    invoke-virtual {v0, v11}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 275
    move/from16 v12, p12

    invoke-virtual {v0, v12}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 276
    move/from16 v13, p13

    invoke-virtual {v0, v13}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 277
    move/from16 v14, p14

    invoke-virtual {v0, v14}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 278
    move/from16 v15, p15

    invoke-virtual {v0, v15}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 279
    move/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 280
    move/from16 v1, p16

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    .line 263
    return-object v0
.end method

.method private onRemoveOverrideApn()V
    .locals 6

    .line 231
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 232
    .local v0, "apnSettings":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/ApnSetting;

    .line 233
    .local v2, "apn":Landroid/telephony/data/ApnSetting;
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->removeOverrideApn(Landroid/content/ComponentName;I)Z

    .line 234
    .end local v2    # "apn":Landroid/telephony/data/ApnSetting;
    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method

.method private parseInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
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

    .line 239
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method private reloadEnableOverrideApnUi()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isOverrideApnEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 303
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mEnableOverrideApnPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mEnableOverrideApnPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 306
    :cond_0
    return-void
.end method

.method private varargs showToast(I[Ljava/lang/Object;)V
    .locals 2
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

    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->showToast(Ljava/lang/String;I)V

    .line 310
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

    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->showToast(Ljava/lang/String;I)V

    .line 314
    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 2
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

    .line 317
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 318
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 322
    return-void

    .line 319
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
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

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 62
    nop

    .line 63
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 64
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 65
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->override_apn_title:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 67
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
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

    .line 72
    sget v0, Lcom/afwsamples/testdpc/R$xml;->override_apn_preferences:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->addPreferencesFromResource(I)V

    .line 74
    const-string v0, "insert_override_apn"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 75
    const-string v0, "remove_override_apn"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    const-string v0, "enable_override_apn"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mEnableOverrideApnPreference:Landroidx/preference/SwitchPreference;

    .line 77
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mEnableOverrideApnPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
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

    .line 102
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v1, "enable_override_apn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 111
    return v2

    .line 106
    :pswitch_1
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 107
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v1}, Landroid/app/admin/DevicePolicyManager;->setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V

    .line 108
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->reloadEnableOverrideApnUi()V

    .line 109
    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x10c59068
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroidx/preference/Preference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preference"
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "remove_override_apn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "insert_override_apn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 96
    return v2

    .line 93
    :pswitch_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->onRemoveOverrideApn()V

    .line 94
    return v3

    .line 90
    :pswitch_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->showInsertOverrideApnDialog()V

    .line 91
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x10c6650e -> :sswitch_1
        0x583c6707 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setUpAllSpinners(Landroid/view/View;)V
    .locals 2
    .param p1, "dialogView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogView"
        }
    .end annotation

    .line 125
    sget v0, Lcom/afwsamples/testdpc/R$id;->apn_auth_type:I

    sget v1, Lcom/afwsamples/testdpc/R$array;->apn_auth_type_choices:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->setUpSpinner(Landroid/view/View;II)V

    .line 127
    sget v0, Lcom/afwsamples/testdpc/R$id;->apn_protocol:I

    sget v1, Lcom/afwsamples/testdpc/R$array;->apn_protocol_choices:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->setUpSpinner(Landroid/view/View;II)V

    .line 129
    sget v0, Lcom/afwsamples/testdpc/R$id;->apn_roaming_protocol:I

    sget v1, Lcom/afwsamples/testdpc/R$array;->apn_protocol_choices:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->setUpSpinner(Landroid/view/View;II)V

    .line 131
    sget v0, Lcom/afwsamples/testdpc/R$id;->apn_mvno_type:I

    sget v1, Lcom/afwsamples/testdpc/R$array;->apn_mvno_type_choices:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->setUpSpinner(Landroid/view/View;II)V

    .line 133
    sget v0, Lcom/afwsamples/testdpc/R$id;->apn_carrier_enabled:I

    sget v1, Lcom/afwsamples/testdpc/R$array;->apn_carrier_enabled_choices:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->setUpSpinner(Landroid/view/View;II)V

    .line 134
    return-void
.end method

.method setUpSpinner(Landroid/view/View;II)V
    .locals 3
    .param p1, "dialogView"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "textArrayId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dialogView",
            "viewId",
            "textArrayId"
        }
    .end annotation

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 116
    .local v0, "spinner":Landroid/widget/Spinner;
    nop

    .line 118
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 117
    const v2, 0x1090008

    invoke-static {v1, p3, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 119
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 121
    return-void
.end method

.method showInsertOverrideApnDialog()V
    .locals 18

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 141
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->insert_apn:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, "dialogView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->apn_entry_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    .line 143
    .local v5, "entryNameEditText":Landroid/widget/EditText;
    sget v1, Lcom/afwsamples/testdpc/R$id;->apn_apn_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    .line 144
    .local v6, "apnNameEditText":Landroid/widget/EditText;
    sget v1, Lcom/afwsamples/testdpc/R$id;->apn_proxy:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/EditText;

    .line 145
    .local v9, "proxyEditText":Landroid/widget/EditText;
    sget v1, Lcom/afwsamples/testdpc/R$id;->apn_port:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/EditText;

    .line 146
    .local v10, "portEditText":Landroid/widget/EditText;
    sget v1, Lcom/afwsamples/testdpc/R$id;->apn_mmsc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/EditText;

    .line 147
    .local v11, "mmscEditText":Landroid/widget/EditText;
    sget v1, Lcom/afwsamples/testdpc/R$id;->apn_mmsproxy:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/EditText;

    .line 148
    .local v12, "mmsProxyEditText":Landroid/widget/EditText;
    sget v1, Lcom/afwsamples/testdpc/R$id;->apn_mmsport:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/EditText;

    .line 149
    .local v13, "mmsPortEditText":Landroid/widget/EditText;
    sget v1, Lcom/afwsamples/testdpc/R$id;->apn_user:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/EditText;

    .line 150
    .local v14, "userEditText":Landroid/widget/EditText;
    sget v1, Lcom/afwsamples/testdpc/R$id;->apn_password:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/EditText;

    .line 151
    .local v15, "passwordEditText":Landroid/widget/EditText;
    sget v1, Lcom/afwsamples/testdpc/R$id;->apn_type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    .line 152
    .local v7, "typeEditText":Landroid/widget/EditText;
    sget v1, Lcom/afwsamples/testdpc/R$id;->apn_numeric:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/EditText;

    .line 153
    .local v8, "numericEditText":Landroid/widget/EditText;
    sget v1, Lcom/afwsamples/testdpc/R$id;->apn_network_bitmask:I

    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/widget/EditText;

    .line 155
    .local v17, "networkBitmaskEditText":Landroid/widget/EditText;
    move-object/from16 v4, p0

    invoke-virtual {v4, v0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->setUpAllSpinners(Landroid/view/View;)V

    .line 157
    sget v1, Lcom/afwsamples/testdpc/R$string;->apn_entry_name_cannot_be_empty:I

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 158
    sget v1, Lcom/afwsamples/testdpc/R$string;->apn_name_cannot_be_empty:I

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 159
    sget v1, Lcom/afwsamples/testdpc/R$string;->apn_type_cannot_be_zero:I

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 161
    sget v1, Lcom/afwsamples/testdpc/R$string;->apn_numeric_hint:I

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 163
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/afwsamples/testdpc/R$string;->insert_override_apn:I

    .line 164
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 165
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/afwsamples/testdpc/policy/OverrideApnFragment$$ExternalSyntheticLambda0;

    move-object/from16 v16, v0

    .end local v0    # "dialogView":Landroid/view/View;
    .local v16, "dialogView":Landroid/view/View;
    invoke-direct/range {v3 .. v17}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/policy/OverrideApnFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;Landroid/widget/EditText;)V

    .line 166
    const v0, 0x104000a

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 226
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 228
    return-void

    .line 138
    .end local v5    # "entryNameEditText":Landroid/widget/EditText;
    .end local v6    # "apnNameEditText":Landroid/widget/EditText;
    .end local v7    # "typeEditText":Landroid/widget/EditText;
    .end local v8    # "numericEditText":Landroid/widget/EditText;
    .end local v9    # "proxyEditText":Landroid/widget/EditText;
    .end local v10    # "portEditText":Landroid/widget/EditText;
    .end local v11    # "mmscEditText":Landroid/widget/EditText;
    .end local v12    # "mmsProxyEditText":Landroid/widget/EditText;
    .end local v13    # "mmsPortEditText":Landroid/widget/EditText;
    .end local v14    # "userEditText":Landroid/widget/EditText;
    .end local v15    # "passwordEditText":Landroid/widget/EditText;
    .end local v16    # "dialogView":Landroid/view/View;
    .end local v17    # "networkBitmaskEditText":Landroid/widget/EditText;
    :cond_1
    :goto_0
    return-void
.end method
