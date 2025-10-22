.class public Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;
.super Ljava/lang/Object;
.source "PartnerConfigHelper.java"


# static fields
.field public static final APPLY_GLIF_THEME_CONTROLLED_TRANSITION_METHOD:Ljava/lang/String; = "applyGlifThemeControlledTransition"

.field public static final EMBEDDED_ACTIVITY_RESOURCE_SUFFIX:Ljava/lang/String; = "_embedded_activity"

.field static final FORCE_TWO_PANE_SUFFIX:Ljava/lang/String; = "_two_pane"

.field public static final GET_SUW_DEFAULT_THEME_STRING_METHOD:Ljava/lang/String; = "suwDefaultThemeString"

.field public static final GLIF_EXPRESSIVE_RESOURCE_SUFFIX:Ljava/lang/String; = "_expressive"

.field public static final IS_DYNAMIC_COLOR_ENABLED_METHOD:Ljava/lang/String; = "isDynamicColorEnabled"

.field public static final IS_EMBEDDED_ACTIVITY_ONE_PANE_ENABLED_METHOD:Ljava/lang/String; = "isEmbeddedActivityOnePaneEnabled"

.field public static final IS_ENHANCED_SETUP_DESIGN_METRICS_ENABLED:Ljava/lang/String; = "isEnhancedSetupDesignMetricsEnabled"

.field public static final IS_EXTENDED_PARTNER_CONFIG_ENABLED_METHOD:Ljava/lang/String; = "isExtendedPartnerConfigEnabled"

.field public static final IS_FONT_WEIGHT_ENABLED_METHOD:Ljava/lang/String; = "isFontWeightEnabled"

.field public static final IS_FORCE_TWO_PANE_ENABLED_METHOD:Ljava/lang/String; = "isForceTwoPaneEnabled"

.field public static final IS_FULL_DYNAMIC_COLOR_ENABLED_METHOD:Ljava/lang/String; = "isFullDynamicColorEnabled"

.field public static final IS_GLIF_EXPRESSIVE_ENABLED:Ljava/lang/String; = "isGlifExpressiveEnabled"

.field public static final IS_KEYBOARD_FOCUS_ENHANCEMENT_ENABLED_METHOD:Ljava/lang/String; = "isKeyboardFocusEnhancementEnabled"

.field public static final IS_MATERIAL_YOU_STYLE_ENABLED_METHOD:Ljava/lang/String; = "IsMaterialYouStyleEnabled"

.field public static final IS_NEUTRAL_BUTTON_STYLE_ENABLED_METHOD:Ljava/lang/String; = "isNeutralButtonStyleEnabled"

.field public static final IS_SUW_DAY_NIGHT_ENABLED_METHOD:Ljava/lang/String; = "isSuwDayNightEnabled"

.field public static final KEY_FALLBACK_CONFIG:Ljava/lang/String; = "fallbackConfig"

.field public static final MATERIAL_YOU_RESOURCE_SUFFIX:Ljava/lang/String; = "_material_you"

.field public static final SUW_AUTHORITY:Ljava/lang/String; = "com.google.android.setupwizard.partner"

.field public static final SUW_GET_PARTNER_CONFIG_METHOD:Ljava/lang/String; = "getOverlayConfig"

.field public static final SUW_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.setupwizard"

.field private static final TAG:Ljava/lang/String;

.field public static applyDynamicColorBundle:Landroid/os/Bundle;

.field public static applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle;

.field public static applyExtendedPartnerConfigBundle:Landroid/os/Bundle;

.field public static applyFontWeightBundle:Landroid/os/Bundle;

.field public static applyForceTwoPaneBundle:Landroid/os/Bundle;

.field public static applyFullDynamicColorBundle:Landroid/os/Bundle;

.field public static applyGlifExpressiveBundle:Landroid/os/Bundle;

.field public static applyMaterialYouConfigBundle:Landroid/os/Bundle;

.field public static applyNeutralButtonStyleBundle:Landroid/os/Bundle;

.field static applyTransitionBundle:Landroid/os/Bundle;

.field private static contentObserver:Landroid/database/ContentObserver;

.field public static enableMetricsLoggingBundle:Landroid/os/Bundle;

.field private static instance:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

.field static isAnySetupWizard:Z

.field public static keyboardFocusEnhancementBundle:Landroid/os/Bundle;

.field private static savedConfigEmbeddedActivityMode:Z

.field private static savedConfigUiMode:I

.field public static savedOrientation:I

.field public static savedScreenHeight:I

.field public static savedScreenWidth:I

.field public static suwDayNightEnabledBundle:Landroid/os/Bundle;

.field public static suwDefaultThemeBundle:Landroid/os/Bundle;


# instance fields
.field final partnerResourceCache:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field resultBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    const-class v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDayNightEnabledBundle:Landroid/os/Bundle;

    .line 116
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyExtendedPartnerConfigBundle:Landroid/os/Bundle;

    .line 118
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    .line 120
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;

    .line 121
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyFullDynamicColorBundle:Landroid/os/Bundle;

    .line 123
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;

    .line 125
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyFontWeightBundle:Landroid/os/Bundle;

    .line 127
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle;

    .line 129
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    .line 131
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->keyboardFocusEnhancementBundle:Landroid/os/Bundle;

    .line 133
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->instance:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 146
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isAnySetupWizard:Z

    .line 148
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyTransitionBundle:Landroid/os/Bundle;

    .line 152
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyForceTwoPaneBundle:Landroid/os/Bundle;

    .line 154
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyGlifExpressiveBundle:Landroid/os/Bundle;

    .line 156
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->enableMetricsLoggingBundle:Landroid/os/Bundle;

    .line 158
    sput v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedOrientation:I

    .line 168
    const/4 v0, 0x0

    sput v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenHeight:I

    .line 170
    sput v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenWidth:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    .line 137
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 215
    invoke-direct {p0, p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getPartnerConfigBundle(Landroid/content/Context;)V

    .line 217
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->registerContentObserver(Landroid/content/Context;)V

    .line 218
    return-void
.end method

.method private static adjustResourceEntryDayNightMode(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceEntry"    # Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceEntry"
        }
    .end annotation

    .line 670
    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 671
    .local v0, "resource":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 672
    .local v1, "configuration":Landroid/content/res/Configuration;
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/Util;->isNightMode(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 673
    if-nez p1, :cond_0

    .line 674
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v3, "resourceEntry is null, skip to force day mode."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-object p1

    .line 677
    :cond_0
    iget v2, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x31

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 680
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 683
    :cond_1
    return-object p1
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    monitor-enter v0

    .line 176
    :try_start_0
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isValidInstance(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->instance:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 179
    :cond_0
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->instance:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 175
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static getContentUri()Landroid/net/Uri;
    .locals 2

    .line 1265
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 1266
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1267
    const-string v1, "com.google.android.setupwizard.partner"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1268
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1265
    return-object v0
.end method

.method private static getDimensionFromTypedValue(Landroid/content/Context;Landroid/util/TypedValue;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    .line 1286
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1287
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method private getPartnerConfigBundle(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 599
    :cond_0
    nop

    .line 601
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 603
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "getOverlayConfig"

    .line 602
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    .line 607
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    .line 608
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    .line 609
    iget-object v1, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "(null)"

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PartnerConfigsBundle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    goto :goto_2

    .line 610
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 611
    .local v0, "exception":Ljava/lang/RuntimeException;
    :goto_1
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v2, "Fail to get config from suw provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .end local v0    # "exception":Ljava/lang/RuntimeException;
    :cond_2
    :goto_2
    return-void
.end method

.method public static getSuwDefaultThemeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 962
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    const-string v1, "suwDefaultThemeString"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 964
    :cond_0
    nop

    .line 966
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 968
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 967
    invoke-virtual {v0, v3, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    nop

    .line 978
    :cond_1
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 981
    :cond_2
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 979
    :cond_3
    :goto_0
    return-object v2

    .line 972
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 973
    .local v0, "exception":Ljava/lang/RuntimeException;
    :goto_1
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v3, "SetupWizard default theme status unknown; return as null."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    sput-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    .line 975
    return-object v2
.end method

.method private static getTypedValueFromResource(Landroid/content/res/Resources;II)Landroid/util/TypedValue;
    .locals 6
    .param p0, "resource"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resource",
            "resId",
            "type"
        }
    .end annotation

    .line 1272
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1273
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1274
    iget v1, v0, Landroid/util/TypedValue;->type:I

    if-ne v1, p2, :cond_0

    .line 1282
    return-object v0

    .line 1275
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    .line 1277
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->type:I

    .line 1279
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " type #0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1032
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle;

    const-string v1, "isEmbeddedActivityOnePaneEnabled"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1034
    nop

    .line 1036
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1038
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 1037
    invoke-virtual {v3, v4, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    goto :goto_1

    .line 1042
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1043
    .local v1, "exception":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v4, "SetupWizard one-pane support in embedded activity status unknown; return as false."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle;

    .line 1047
    return v2

    .line 1051
    .end local v1    # "exception":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle;

    .line 1052
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    nop

    .line 1051
    :goto_2
    return v2
.end method

.method public static isEnhancedSetupDesignMetricsEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1239
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->enableMetricsLoggingBundle:Landroid/os/Bundle;

    const-string v1, "isEnhancedSetupDesignMetricsEnabled"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->enableMetricsLoggingBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1241
    :cond_0
    nop

    .line 1243
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1245
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 1244
    invoke-virtual {v3, v4, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->enableMetricsLoggingBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    nop

    .line 1256
    :cond_1
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->enableMetricsLoggingBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->enableMetricsLoggingBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1257
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->enableMetricsLoggingBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 1260
    :cond_2
    return v2

    .line 1249
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1250
    .local v1, "exception":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v4, "Method isEnhancedSetupDesignMetricsEnabled is unknown"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->enableMetricsLoggingBundle:Landroid/os/Bundle;

    .line 1252
    return v2
.end method

.method public static isFontWeightEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1081
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyFontWeightBundle:Landroid/os/Bundle;

    const-string v1, "isFontWeightEnabled"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1083
    nop

    .line 1085
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1087
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 1086
    invoke-virtual {v3, v4, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyFontWeightBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    goto :goto_1

    .line 1091
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1092
    .local v1, "exception":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v4, "Font weight supporting status unknown; return as false."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyFontWeightBundle:Landroid/os/Bundle;

    .line 1094
    return v2

    .line 1098
    .end local v1    # "exception":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyFontWeightBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyFontWeightBundle:Landroid/os/Bundle;

    .line 1099
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    nop

    .line 1098
    :goto_2
    return v2
.end method

.method public static isForceTwoPaneEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1132
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyForceTwoPaneBundle:Landroid/os/Bundle;

    const-string v1, "isForceTwoPaneEnabled"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyForceTwoPaneBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1134
    :cond_0
    nop

    .line 1136
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1138
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 1137
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyForceTwoPaneBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    goto :goto_1

    .line 1142
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1143
    .local v0, "exception":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v3, "isForceTwoPaneEnabled status is unknown; return as false."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    .end local v0    # "exception":Ljava/lang/RuntimeException;
    :cond_1
    :goto_1
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyForceTwoPaneBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyForceTwoPaneBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1147
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyForceTwoPaneBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 1149
    :cond_2
    return v2
.end method

.method public static isGlifExpressiveEnabled(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1180
    const/4 v0, 0x0

    .line 1181
    .local v0, "isRequery":Z
    const/4 v1, 0x0

    .line 1183
    .local v1, "activity":Landroid/app/Activity;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1186
    goto :goto_0

    .line 1184
    :catch_0
    move-exception v2

    .line 1185
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to lookup activity from context: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    const/4 v2, 0x0

    .line 1189
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 1190
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 1191
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v3

    .line 1194
    .local v3, "currentIsAnySetupWizard":Z
    sget-boolean v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isAnySetupWizard:Z

    if-eq v4, v3, :cond_0

    .line 1195
    sput-boolean v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isAnySetupWizard:Z

    .line 1196
    const/4 v0, 0x1

    .line 1197
    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v5, "Need to requery the flag isGlifExpressiveEnabled from provider"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :cond_0
    const-string v4, "isSetupFlow"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1202
    .end local v3    # "currentIsAnySetupWizard":Z
    :cond_1
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyGlifExpressiveBundle:Landroid/os/Bundle;

    const-string v4, "isGlifExpressiveEnabled"

    if-eqz v3, :cond_2

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyGlifExpressiveBundle:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    .line 1204
    :cond_2
    nop

    .line 1206
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1208
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    .line 1207
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v4, v6, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyGlifExpressiveBundle:Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1214
    goto :goto_2

    .line 1212
    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    .line 1213
    .local v3, "exception":Ljava/lang/RuntimeException;
    :goto_1
    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v6, "isGlifExpressiveEnabled status is unknown; return as false."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    .end local v3    # "exception":Ljava/lang/RuntimeException;
    :cond_3
    :goto_2
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyGlifExpressiveBundle:Landroid/os/Bundle;

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyGlifExpressiveBundle:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1218
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyGlifExpressiveBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 1220
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1221
    nop

    .line 1223
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/google/android/setupcompat/partnerconfig/R$attr;->sucGlifExpressiveStyleEnabled:I

    filled-new-array {v4}, [I

    move-result-object v4

    .line 1224
    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 1225
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 1226
    .local v4, "isGlifExpressiveStyleEnabled":Z
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 1227
    sget-object v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isGlifExpressiveStyleEnabled is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    if-eqz v4, :cond_5

    .line 1229
    const/4 v5, 0x1

    return v5

    .line 1234
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "isGlifExpressiveStyleEnabled":Z
    :cond_5
    return v5
.end method

.method public static isGlifThemeControlledTransitionApplied(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1107
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyTransitionBundle:Landroid/os/Bundle;

    const-string v1, "applyGlifThemeControlledTransition"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyTransitionBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    :cond_0
    nop

    .line 1111
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1113
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 1112
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyTransitionBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    goto :goto_1

    .line 1117
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1118
    .local v0, "exception":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v3, "applyGlifThemeControlledTransition unknown; return applyGlifThemeControlledTransition as default value"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    .end local v0    # "exception":Ljava/lang/RuntimeException;
    :cond_1
    :goto_1
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyTransitionBundle:Landroid/os/Bundle;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyTransitionBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1125
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyTransitionBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 1127
    :cond_2
    return v2
.end method

.method public static isKeyboardFocusEnhancementEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1154
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->keyboardFocusEnhancementBundle:Landroid/os/Bundle;

    const-string v1, "isKeyboardFocusEnhancementEnabled"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->keyboardFocusEnhancementBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1156
    :cond_0
    nop

    .line 1158
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1160
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 1159
    invoke-virtual {v3, v4, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->keyboardFocusEnhancementBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    nop

    .line 1170
    :cond_1
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->keyboardFocusEnhancementBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->keyboardFocusEnhancementBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1173
    :cond_2
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->keyboardFocusEnhancementBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1171
    :cond_3
    :goto_0
    return v2

    .line 1164
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1165
    .local v1, "exception":Ljava/lang/RuntimeException;
    :goto_1
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v4, "SetupWizard keyboard focus enhancement status unknown; return as false."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->keyboardFocusEnhancementBundle:Landroid/os/Bundle;

    .line 1167
    return v2
.end method

.method public static isNeutralButtonStyleEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1058
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;

    const-string v1, "isNeutralButtonStyleEnabled"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1060
    nop

    .line 1062
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1064
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 1063
    invoke-virtual {v3, v4, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    goto :goto_1

    .line 1068
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1069
    .local v1, "exception":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v4, "Neutral button style supporting status unknown; return as false."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;

    .line 1071
    return v2

    .line 1075
    .end local v1    # "exception":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;

    .line 1076
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    nop

    .line 1075
    :goto_2
    return v2
.end method

.method public static isSetupWizardDayNightEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 875
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDayNightEnabledBundle:Landroid/os/Bundle;

    const-string v1, "isSuwDayNightEnabled"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 877
    nop

    .line 879
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 881
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 880
    invoke-virtual {v3, v4, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDayNightEnabledBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    goto :goto_1

    .line 885
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 886
    .local v1, "exception":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v4, "SetupWizard DayNight supporting status unknown; return as false."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDayNightEnabledBundle:Landroid/os/Bundle;

    .line 888
    return v2

    .line 892
    .end local v1    # "exception":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDayNightEnabledBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDayNightEnabledBundle:Landroid/os/Bundle;

    .line 893
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    nop

    .line 892
    :goto_2
    return v2
.end method

.method public static isSetupWizardDynamicColorEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 986
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;

    const-string v1, "isDynamicColorEnabled"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 988
    nop

    .line 990
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 992
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 991
    invoke-virtual {v3, v4, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    goto :goto_1

    .line 996
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 997
    .local v1, "exception":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v4, "SetupWizard dynamic color supporting status unknown; return as false."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;

    .line 999
    return v2

    .line 1003
    .end local v1    # "exception":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;

    .line 1004
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    nop

    .line 1003
    :goto_2
    return v2
.end method

.method public static isSetupWizardFullDynamicColorEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1009
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyFullDynamicColorBundle:Landroid/os/Bundle;

    const-string v1, "isFullDynamicColorEnabled"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1011
    nop

    .line 1013
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1015
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 1014
    invoke-virtual {v3, v4, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyFullDynamicColorBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    goto :goto_1

    .line 1019
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1020
    .local v1, "exception":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v4, "SetupWizard full dynamic color supporting status unknown; return as false."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyFullDynamicColorBundle:Landroid/os/Bundle;

    .line 1022
    return v2

    .line 1026
    .end local v1    # "exception":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyFullDynamicColorBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyFullDynamicColorBundle:Landroid/os/Bundle;

    .line 1027
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    nop

    .line 1026
    :goto_2
    return v2
.end method

.method private static isValidInstance(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 184
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->instance:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 185
    nop

    .line 186
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastU()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedConfigEmbeddedActivityMode:Z

    .line 187
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    sput v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedConfigUiMode:I

    .line 188
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    sput v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedOrientation:I

    .line 189
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    sput v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenWidth:I

    .line 190
    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    sput v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenHeight:I

    .line 191
    return v3

    .line 193
    :cond_1
    nop

    .line 194
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    sget v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedConfigUiMode:I

    if-eq v1, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 196
    .local v1, "uiModeChanged":Z
    :goto_1
    nop

    .line 197
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastU()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 198
    .local v4, "embeddedActivityModeChanged":Z
    :goto_2
    if-nez v1, :cond_5

    sget-boolean v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedConfigEmbeddedActivityMode:Z

    if-ne v4, v5, :cond_5

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    sget v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedOrientation:I

    if-ne v5, v6, :cond_5

    iget v5, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    sget v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenWidth:I

    if-ne v5, v6, :cond_5

    iget v5, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    sget v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenHeight:I

    if-eq v5, v6, :cond_4

    goto :goto_3

    .line 211
    .end local v1    # "uiModeChanged":Z
    .end local v4    # "embeddedActivityModeChanged":Z
    :cond_4
    return v2

    .line 203
    .restart local v1    # "uiModeChanged":Z
    .restart local v4    # "embeddedActivityModeChanged":Z
    :cond_5
    :goto_3
    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    sput v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedConfigUiMode:I

    .line 204
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    sput v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedOrientation:I

    .line 205
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    sput v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenHeight:I

    .line 206
    iget v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    sput v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenWidth:I

    .line 207
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resetInstance()V

    .line 208
    return v3
.end method

.method public static lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 655
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 656
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 657
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 658
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 660
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find instance of Activity in parent tree"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static registerContentObserver(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1291
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1292
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->contentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 1293
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->unregisterContentObserver(Landroid/content/Context;)V

    .line 1296
    :cond_0
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1298
    .local v0, "contentUri":Landroid/net/Uri;
    :try_start_0
    new-instance v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper$1;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->contentObserver:Landroid/database/ContentObserver;

    .line 1306
    nop

    .line 1307
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->contentObserver:Landroid/database/ContentObserver;

    .line 1308
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    goto :goto_1

    .line 1309
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 1310
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to register content observer for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_1
    return-void
.end method

.method public static declared-synchronized resetInstance()V
    .locals 2

    const-class v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    monitor-enter v0

    .line 852
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->instance:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 853
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDayNightEnabledBundle:Landroid/os/Bundle;

    .line 854
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyExtendedPartnerConfigBundle:Landroid/os/Bundle;

    .line 855
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    .line 856
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;

    .line 857
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyFullDynamicColorBundle:Landroid/os/Bundle;

    .line 858
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;

    .line 859
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle;

    .line 860
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    .line 861
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyTransitionBundle:Landroid/os/Bundle;

    .line 862
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyForceTwoPaneBundle:Landroid/os/Bundle;

    .line 863
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyGlifExpressiveBundle:Landroid/os/Bundle;

    .line 864
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->keyboardFocusEnhancementBundle:Landroid/os/Bundle;

    .line 865
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->enableMetricsLoggingBundle:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    monitor-exit v0

    return-void

    .line 851
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 898
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyExtendedPartnerConfigBundle:Landroid/os/Bundle;

    const-string v1, "isExtendedPartnerConfigEnabled"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 900
    nop

    .line 902
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 904
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 903
    invoke-virtual {v3, v4, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyExtendedPartnerConfigBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    goto :goto_1

    .line 908
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 909
    .local v1, "exception":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v4, "SetupWizard extended partner configs supporting status unknown; return as false."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyExtendedPartnerConfigBundle:Landroid/os/Bundle;

    .line 913
    return v2

    .line 917
    .end local v1    # "exception":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyExtendedPartnerConfigBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyExtendedPartnerConfigBundle:Landroid/os/Bundle;

    .line 918
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    nop

    .line 917
    :goto_2
    return v2
.end method

.method public static shouldApplyMaterialYouStyle(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 927
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    const-string v1, "IsMaterialYouStyleEnabled"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 929
    :cond_0
    nop

    .line 931
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 933
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 932
    invoke-virtual {v3, v4, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    .line 939
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    .line 940
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 941
    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastT()Z

    move-result v3

    if-nez v3, :cond_1

    .line 942
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 948
    :cond_1
    nop

    .line 951
    :cond_2
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    .line 952
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 953
    :cond_3
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v2, 0x1

    .line 951
    :cond_5
    return v2

    .line 944
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 945
    .local v1, "exception":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v4, "SetupWizard Material You configs supporting status unknown; return as false."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    .line 947
    return v2
.end method

.method private static unregisterContentObserver(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1317
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1318
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->contentObserver:Landroid/database/ContentObserver;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    goto :goto_1

    .line 1319
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 1320
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unregister content observer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void
.end method


# virtual methods
.method adjustEmbeddedActivityResourceEntryDefaultValue(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputResourceEntry"    # Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "inputResourceEntry"
        }
    .end annotation

    .line 728
    const-string v0, "com.google.android.setupwizard"

    .line 729
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "resourceTypeName":Ljava/lang/String;
    nop

    .line 733
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_embedded_activity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, "embeddedActivityResourceName":Ljava/lang/String;
    nop

    .line 736
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 740
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 737
    invoke-virtual {v3, v2, v1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 741
    .local v3, "embeddedActivityResourceId":I
    if-eqz v3, :cond_0

    .line 742
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "use embedded activity resource:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    .line 744
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 747
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/Resources;)V

    .line 743
    return-object v0

    .line 751
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 752
    .local v4, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 753
    .local v5, "resources":Landroid/content/res/Resources;
    nop

    .line 754
    invoke-virtual {v5, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 756
    .end local v3    # "embeddedActivityResourceId":I
    .local v6, "embeddedActivityResourceId":I
    if-eqz v6, :cond_1

    .line 757
    new-instance v3, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    invoke-direct {v3, v0, v2, v6, v5}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/Resources;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 766
    .end local v1    # "resourceTypeName":Ljava/lang/String;
    .end local v2    # "embeddedActivityResourceName":Ljava/lang/String;
    .end local v4    # "manager":Landroid/content/pm/PackageManager;
    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v6    # "embeddedActivityResourceId":I
    :cond_1
    goto :goto_0

    .line 764
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 767
    :goto_0
    return-object p2
.end method

.method adjustForceTwoPaneResourceEntryDefaultValue(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceEntry"    # Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceEntry"
        }
    .end annotation

    .line 774
    const-string v0, "com.google.android.setupwizard"

    if-nez p1, :cond_0

    .line 775
    return-object p2

    .line 779
    :cond_0
    nop

    .line 780
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "resourceTypeName":Ljava/lang/String;
    nop

    .line 782
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_two_pane"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 783
    .local v2, "forceTwoPaneResourceName":Ljava/lang/String;
    nop

    .line 785
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 787
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 786
    invoke-virtual {v3, v2, v1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 788
    .local v3, "twoPaneResourceId":I
    if-eqz v3, :cond_1

    .line 789
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "two pane resource="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    .line 791
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 794
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/Resources;)V

    .line 790
    return-object v0

    .line 798
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 799
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 800
    .local v5, "resources":Landroid/content/res/Resources;
    nop

    .line 801
    invoke-virtual {v5, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 802
    .end local v3    # "twoPaneResourceId":I
    .local v6, "twoPaneResourceId":I
    if-eqz v6, :cond_2

    .line 803
    new-instance v3, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    invoke-direct {v3, v0, v2, v6, v5}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/Resources;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 809
    .end local v1    # "resourceTypeName":Ljava/lang/String;
    .end local v2    # "forceTwoPaneResourceName":Ljava/lang/String;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v6    # "twoPaneResourceId":I
    :cond_2
    goto :goto_0

    .line 807
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 810
    :goto_0
    return-object p2
.end method

.method adjustGlifExpressiveResourceEntryDefaultValue(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputResourceEntry"    # Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "inputResourceEntry"
        }
    .end annotation

    .line 820
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.setupwizard"

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    nop

    .line 823
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 824
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, "resourceTypeName":Ljava/lang/String;
    nop

    .line 827
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_expressive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 828
    .local v1, "glifExpressiveResourceName":Ljava/lang/String;
    nop

    .line 830
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 834
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 831
    invoke-virtual {v2, v1, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 835
    .local v2, "glifExpressiveResourceId":I
    if-eqz v2, :cond_0

    .line 836
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "use expressive resource:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v3, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    .line 838
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 841
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v3, v4, v1, v2, v5}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/Resources;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    return-object v3

    .line 846
    .end local v0    # "resourceTypeName":Ljava/lang/String;
    .end local v1    # "glifExpressiveResourceName":Ljava/lang/String;
    .end local v2    # "glifExpressiveResourceId":I
    :cond_0
    goto :goto_0

    .line 844
    :catch_0
    move-exception v0

    .line 847
    :goto_0
    return-object p2
.end method

.method adjustMaterialYouResourceEntryDefaultValue(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputResourceEntry"    # Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "inputResourceEntry"
        }
    .end annotation

    .line 693
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.setupwizard"

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    nop

    .line 696
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 697
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "resourceTypeName":Ljava/lang/String;
    nop

    .line 700
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_material_you"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, "materialYouResourceName":Ljava/lang/String;
    nop

    .line 703
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 705
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 704
    invoke-virtual {v2, v1, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 706
    .local v2, "materialYouResourceId":I
    if-eqz v2, :cond_0

    .line 707
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "use material you resource:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v3, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    .line 709
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 712
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v3, v4, v1, v2, v5}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/Resources;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    return-object v3

    .line 717
    .end local v0    # "resourceTypeName":Ljava/lang/String;
    .end local v1    # "materialYouResourceName":Ljava/lang/String;
    .end local v2    # "materialYouResourceId":I
    :cond_0
    goto :goto_0

    .line 715
    :catch_0
    move-exception v0

    .line 718
    :goto_0
    return-object p2
.end method

.method public getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p3, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceConfig",
            "defaultValue"
        }
    .end annotation

    .line 403
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->BOOL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    if-ne v0, v1, :cond_1

    .line 407
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 411
    :cond_0
    move v0, p3

    .line 413
    .local v0, "result":Z
    nop

    .line 414
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object v1

    .line 415
    .local v1, "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    invoke-virtual {v1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 416
    .local v2, "resource":Landroid/content/res/Resources;
    invoke-virtual {v1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result v3

    .line 418
    .local v3, "resId":I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    move v0, v4

    .line 419
    iget-object v4, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    nop

    .end local v1    # "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .end local v2    # "resource":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    goto :goto_0

    .line 420
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 423
    :goto_0
    return v0

    .line 404
    .end local v0    # "result":Z
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a bool resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceConfig"
        }
    .end annotation

    .line 249
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    if-ne v0, v1, :cond_3

    .line 253
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 257
    :cond_0
    const/4 v0, 0x0

    .line 259
    .local v0, "result":I
    nop

    .line 260
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object v1

    .line 261
    .local v1, "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    invoke-virtual {v1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 262
    .local v2, "resource":Landroid/content/res/Resources;
    invoke-virtual {v1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result v3

    .line 265
    .local v3, "resId":I
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 266
    .local v4, "outValue":Landroid/util/TypedValue;
    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 267
    iget v6, v4, Landroid/util/TypedValue;->type:I

    if-ne v6, v5, :cond_1

    iget v5, v4, Landroid/util/TypedValue;->data:I

    if-nez v5, :cond_1

    .line 268
    return v0

    .line 271
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_2

    .line 272
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    move v0, v5

    .end local v0    # "result":I
    .local v5, "result":I
    goto :goto_0

    .line 274
    .end local v5    # "result":I
    .restart local v0    # "result":I
    :cond_2
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .end local v0    # "result":I
    .restart local v5    # "result":I
    move v0, v5

    .line 276
    .end local v5    # "result":I
    .restart local v0    # "result":I
    :goto_0
    iget-object v5, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    nop

    .end local v1    # "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .end local v2    # "resource":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    .end local v4    # "outValue":Landroid/util/TypedValue;
    goto :goto_1

    .line 277
    :catch_0
    move-exception v1

    .line 280
    :goto_1
    return v0

    .line 250
    .end local v0    # "result":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a color resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceConfig"
        }
    .end annotation

    .line 433
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v0

    return v0
.end method

.method public getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p3, "defaultValue"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceConfig",
            "defaultValue"
        }
    .end annotation

    .line 447
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    if-ne v0, v1, :cond_1

    .line 451
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 453
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 452
    invoke-static {p1, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimensionFromTypedValue(Landroid/content/Context;Landroid/util/TypedValue;)F

    move-result v0

    return v0

    .line 456
    :cond_0
    move v0, p3

    .line 458
    .local v0, "result":F
    nop

    .line 459
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object v1

    .line 460
    .local v1, "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    invoke-virtual {v1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 461
    .local v2, "resource":Landroid/content/res/Resources;
    invoke-virtual {v1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result v3

    .line 463
    .local v3, "resId":I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    move v0, v4

    .line 464
    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getTypedValueFromResource(Landroid/content/res/Resources;II)Landroid/util/TypedValue;

    move-result-object v4

    .line 465
    .local v4, "value":Landroid/util/TypedValue;
    iget-object v5, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v5, p2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v5, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 468
    invoke-virtual {v5, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/TypedValue;

    .line 467
    invoke-static {p1, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimensionFromTypedValue(Landroid/content/Context;Landroid/util/TypedValue;)F

    move-result v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .end local v0    # "result":F
    .end local v1    # "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .end local v2    # "resource":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    .end local v4    # "value":Landroid/util/TypedValue;
    .local v5, "result":F
    goto :goto_1

    .line 469
    .end local v5    # "result":F
    .restart local v0    # "result":F
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    move v5, v0

    .line 472
    .end local v0    # "result":F
    .restart local v5    # "result":F
    :goto_1
    return v5

    .line 448
    .end local v5    # "result":F
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a dimension resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDrawable(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceConfig"
        }
    .end annotation

    .line 293
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    if-ne v0, v1, :cond_2

    .line 297
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 301
    :cond_0
    const/4 v0, 0x0

    .line 303
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    nop

    .line 304
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object v1

    .line 305
    .local v1, "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    invoke-virtual {v1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 306
    .local v2, "resource":Landroid/content/res/Resources;
    invoke-virtual {v1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result v3

    .line 309
    .local v3, "resId":I
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 310
    .local v4, "outValue":Landroid/util/TypedValue;
    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 311
    iget v6, v4, Landroid/util/TypedValue;->type:I

    if-ne v6, v5, :cond_1

    iget v5, v4, Landroid/util/TypedValue;->data:I

    if-nez v5, :cond_1

    .line 312
    return-object v0

    .line 315
    :cond_1
    nop

    .line 316
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    .line 320
    iget-object v5, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v5, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    nop

    .end local v1    # "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .end local v2    # "resource":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    .end local v4    # "outValue":Landroid/util/TypedValue;
    goto :goto_0

    .line 321
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 324
    :goto_0
    return-object v0

    .line 294
    .end local v0    # "result":Landroid/graphics/drawable/Drawable;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a drawable resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFraction(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceConfig"
        }
    .end annotation

    .line 482
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getFraction(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v0

    return v0
.end method

.method public getFraction(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p3, "defaultValue"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceConfig",
            "defaultValue"
        }
    .end annotation

    .line 496
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->FRACTION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    if-ne v0, v1, :cond_1

    .line 500
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 504
    :cond_0
    move v0, p3

    .line 506
    .local v0, "result":F
    nop

    .line 507
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object v1

    .line 508
    .local v1, "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    invoke-virtual {v1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 509
    .local v2, "resource":Landroid/content/res/Resources;
    invoke-virtual {v1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result v3

    .line 511
    .local v3, "resId":I
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    move v0, v4

    .line 512
    iget-object v4, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    nop

    .end local v1    # "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .end local v2    # "resource":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    goto :goto_0

    .line 513
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 516
    :goto_0
    return v0

    .line 497
    .end local v0    # "result":F
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a fraction resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIllustrationResourceEntry(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceConfig"
        }
    .end annotation

    .line 563
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->ILLUSTRATION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    if-ne v0, v1, :cond_2

    .line 567
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    return-object v0

    .line 572
    :cond_0
    nop

    .line 573
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object v1

    .line 575
    .local v1, "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    invoke-virtual {v1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 576
    .local v2, "resource":Landroid/content/res/Resources;
    invoke-virtual {v1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result v3

    .line 581
    .local v3, "resId":I
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 582
    .local v4, "outValue":Landroid/util/TypedValue;
    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 583
    iget v6, v4, Landroid/util/TypedValue;->type:I

    if-ne v6, v5, :cond_1

    iget v5, v4, Landroid/util/TypedValue;->data:I

    if-nez v5, :cond_1

    .line 584
    return-object v0

    .line 587
    :cond_1
    iget-object v5, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v5, p2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    return-object v1

    .line 589
    .end local v1    # "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .end local v2    # "resource":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    .end local v4    # "outValue":Landroid/util/TypedValue;
    :catch_0
    move-exception v1

    .line 593
    return-object v0

    .line 564
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a illustration resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInteger(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p3, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceConfig",
            "defaultValue"
        }
    .end annotation

    .line 529
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->INTEGER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    if-ne v0, v1, :cond_1

    .line 533
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 537
    :cond_0
    move v0, p3

    .line 539
    .local v0, "result":I
    nop

    .line 540
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object v1

    .line 541
    .local v1, "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    invoke-virtual {v1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 542
    .local v2, "resource":Landroid/content/res/Resources;
    invoke-virtual {v1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result v3

    .line 544
    .local v3, "resId":I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move v0, v4

    .line 545
    iget-object v4, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    nop

    .end local v1    # "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .end local v2    # "resource":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    goto :goto_0

    .line 546
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 549
    :goto_0
    return v0

    .line 530
    .end local v0    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a integer resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceName"
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 620
    .local v0, "resourceEntryBundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    const-string v2, "fallbackConfig"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 621
    .local v1, "fallbackBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 622
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 625
    :cond_0
    invoke-static {p1, v0}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->fromBundle(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object v2

    .line 627
    .local v2, "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastU()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isActivityEmbedded(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 628
    invoke-virtual {p0, p1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->adjustEmbeddedActivityResourceEntryDefaultValue(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object v2

    goto :goto_0

    .line 629
    :cond_1
    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastV()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 630
    invoke-virtual {p0, p1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->adjustGlifExpressiveResourceEntryDefaultValue(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object v2

    goto :goto_0

    .line 631
    :cond_2
    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastU()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isForceTwoPaneEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 632
    invoke-virtual {p0, p1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->adjustForceTwoPaneResourceEntryDefaultValue(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object v2

    goto :goto_0

    .line 633
    :cond_3
    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastT()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyMaterialYouStyle(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 634
    invoke-virtual {p0, p1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->adjustMaterialYouResourceEntryDefaultValue(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object v2

    .line 637
    :cond_4
    :goto_0
    invoke-static {p1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->adjustResourceEntryDayNightMode(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object v3

    return-object v3
.end method

.method public getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceConfig"
        }
    .end annotation

    .line 337
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->STRING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    if-ne v0, v1, :cond_1

    .line 341
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 345
    :cond_0
    const/4 v0, 0x0

    .line 347
    .local v0, "result":Ljava/lang/String;
    nop

    .line 348
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object v1

    .line 349
    .local v1, "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    invoke-virtual {v1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 350
    .local v2, "resource":Landroid/content/res/Resources;
    invoke-virtual {v1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result v3

    .line 352
    .local v3, "resId":I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 353
    iget-object v4, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v4, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    nop

    .end local v1    # "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .end local v2    # "resource":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    goto :goto_0

    .line 354
    :catch_0
    move-exception v1

    .line 357
    :goto_0
    return-object v0

    .line 338
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a string resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStringArray(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 370
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->STRING_ARRAY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    if-ne v0, v1, :cond_0

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v0, "listResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 379
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object v1

    .line 380
    .local v1, "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    invoke-virtual {v1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 381
    .local v2, "resource":Landroid/content/res/Resources;
    invoke-virtual {v1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result v3

    .line 383
    .local v3, "resId":I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, "result":[Ljava/lang/String;
    invoke-static {v0, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    nop

    .end local v1    # "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .end local v2    # "resource":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    goto :goto_0

    .line 385
    .end local v4    # "result":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 389
    :goto_0
    return-object v0

    .line 371
    .end local v0    # "listResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a string array resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isActivityEmbedded(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 644
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .local v1, "activity":Landroid/app/Activity;
    nop

    .line 650
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 651
    invoke-static {v1}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 650
    :goto_0
    return v0

    .line 645
    .end local v1    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 646
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v3, "Not a Activity instance in parent tree"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z
    .locals 2
    .param p1, "resourceConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceConfig"
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
