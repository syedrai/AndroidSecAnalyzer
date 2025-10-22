.class Lcom/afwsamples/testdpc/cosu/CosuConfig;
.super Ljava/lang/Object;
.source "CosuConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;,
        Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_DOWNLOAD_LOCATION:Ljava/lang/String; = "download-location"

.field private static final ATTRIBUTE_MODE:Ljava/lang/String; = "mode"

.field private static final ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final ATTRIBUTE_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field private static final ATTRIBUTE_VALUE:Ljava/lang/String; = "value"

.field private static final NEW_LINE:Ljava/lang/String;

.field private static final TAG_APP:Ljava/lang/String; = "app"

.field private static final TAG_COSU_CONFIG:Ljava/lang/String; = "cosu-config"

.field private static final TAG_DISABLE_CAMERA:Ljava/lang/String; = "disable-camera"

.field private static final TAG_DISABLE_KEYGUARD:Ljava/lang/String; = "disable-keyguard"

.field private static final TAG_DISABLE_SCREEN_CAPTURE:Ljava/lang/String; = "disable-screen-capture"

.field private static final TAG_DISABLE_STATUS_BAR:Ljava/lang/String; = "disable-status-bar"

.field private static final TAG_DOWNLOAD_APPS:Ljava/lang/String; = "download-apps"

.field private static final TAG_ENABLE_APPS:Ljava/lang/String; = "enable-apps"

.field private static final TAG_GLOBAL_SETTING:Ljava/lang/String; = "global-setting"

.field private static final TAG_HIDE_APPS:Ljava/lang/String; = "hide-apps"

.field private static final TAG_KIOSK_APPS:Ljava/lang/String; = "kiosk-apps"

.field private static final TAG_POLICIES:Ljava/lang/String; = "policies"

.field private static final TAG_USER_RESTRICTION:Ljava/lang/String; = "user-restriction"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisableCamera:Z

.field private mDisableKeyguard:Z

.field private mDisableScreenCapture:Z

.field private mDisableStatusBar:Z

.field private mDownloadApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mEnableSystemApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;",
            ">;"
        }
    .end annotation
.end field

.field private mHideApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKioskApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:Ljava/lang/String;

.field private mUserRestrictions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mHideApps:Ljava/util/Set;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mEnableSystemApps:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mKioskApps:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadApps:Ljava/util/Set;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mUserRestrictions:Ljava/util/Set;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mGlobalSettings:Ljava/util/Set;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableStatusBar:Z

    .line 77
    iput-boolean v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableKeyguard:Z

    .line 78
    iput-boolean v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableScreenCapture:Z

    .line 79
    iput-boolean v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableCamera:Z

    .line 83
    iput-object p1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mContext:Landroid/content/Context;

    .line 84
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadManager:Landroid/app/DownloadManager;

    .line 86
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 87
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 88
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    .line 89
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 90
    goto :goto_0

    .line 93
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "name":Ljava/lang/String;
    const-string v3, "cosu-config"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    const-string v3, "mode"

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mMode:Ljava/lang/String;

    goto :goto_1

    .line 96
    :cond_1
    const-string v3, "policies"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->readPolicies(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 98
    :cond_2
    const-string v3, "enable-apps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mEnableSystemApps:Ljava/util/Set;

    invoke-direct {p0, v0, v3}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->readApps(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V

    goto :goto_1

    .line 100
    :cond_3
    const-string v3, "hide-apps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 101
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mHideApps:Ljava/util/Set;

    invoke-direct {p0, v0, v3}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->readApps(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V

    goto :goto_1

    .line 102
    :cond_4
    const-string v3, "kiosk-apps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 103
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mKioskApps:Ljava/util/Set;

    invoke-direct {p0, v0, v3}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->readApps(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V

    goto :goto_1

    .line 104
    :cond_5
    const-string v3, "download-apps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 105
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadApps:Ljava/util/Set;

    invoke-direct {p0, v0, v3}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->readDownloadApps(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v2    # "name":Ljava/lang/String;
    :cond_6
    :goto_1
    goto :goto_0

    .line 109
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_7
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 110
    nop

    .line 111
    return-void

    .line 109
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 110
    throw v0
.end method

.method public static createConfig(Landroid/content/Context;Ljava/io/InputStream;)Lcom/afwsamples/testdpc/cosu/CosuConfig;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "in"
        }
    .end annotation

    .line 115
    :try_start_0
    new-instance v0, Lcom/afwsamples/testdpc/cosu/CosuConfig;

    invoke-direct {v0, p0, p1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;-><init>(Landroid/content/Context;Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "CosuSetup"

    const-string v2, "Exception during config creation."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    const/4 v1, 0x0

    return-object v1
.end method

.method private disableKeyGuardAndStatusBar(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dpm",
            "admin"
        }
    .end annotation

    .line 169
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableStatusBar:Z

    invoke-virtual {p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    .line 170
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableKeyguard:Z

    invoke-virtual {p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    .line 171
    return-void
.end method

.method private dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "set"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set<",
            "*>;)V"
        }
    .end annotation

    .line 378
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 379
    .local v1, "obj":Ljava/lang/Object;
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .end local v1    # "obj":Ljava/lang/Object;
    goto :goto_0

    .line 381
    :cond_0
    return-void
.end method

.method private readApps(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parser",
            "apps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    .local p2, "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 232
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 233
    goto :goto_0

    .line 236
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "name":Ljava/lang/String;
    const-string v1, "app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    const/4 v1, 0x0

    const-string v2, "package-name"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 240
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_1
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 244
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 245
    :cond_3
    return-void
.end method

.method private readDownloadApps(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parser",
            "apps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set<",
            "Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    .local p2, "apps":Ljava/util/Set;, "Ljava/util/Set<Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;>;"
    nop

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 251
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 252
    goto :goto_0

    .line 255
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "name":Ljava/lang/String;
    const-string v1, "app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    const-string v1, "package-name"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "download-location"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "downloadLocation":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 260
    new-instance v3, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;

    invoke-direct {v3, p0, v1, v2}, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;-><init>(Lcom/afwsamples/testdpc/cosu/CosuConfig;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_1
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 264
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "downloadLocation":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 265
    :cond_3
    return-void
.end method

.method private readPolicies(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 269
    nop

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    .line 270
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 271
    goto :goto_0

    .line 274
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "user-restriction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "name"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 276
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "userRestriction":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 278
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mUserRestrictions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v1    # "userRestriction":Ljava/lang/String;
    :cond_1
    goto :goto_1

    :cond_2
    const-string v1, "global-setting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v4, "value"

    if-eqz v1, :cond_4

    .line 281
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "setting":Ljava/lang/String;
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "value":Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 284
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mGlobalSettings:Ljava/util/Set;

    new-instance v4, Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;

    invoke-direct {v4, p0, v1, v2}, Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;-><init>(Lcom/afwsamples/testdpc/cosu/CosuConfig;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v1    # "setting":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_3
    goto :goto_1

    :cond_4
    const-string v1, "disable-status-bar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 287
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableStatusBar:Z

    goto :goto_1

    .line 288
    :cond_5
    const-string v1, "disable-keyguard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 289
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableKeyguard:Z

    goto :goto_1

    .line 290
    :cond_6
    const-string v1, "disable-camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 291
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableCamera:Z

    goto :goto_1

    .line 292
    :cond_7
    const-string v1, "disable-screen-capture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 293
    nop

    .line 294
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableScreenCapture:Z

    .line 296
    :cond_8
    :goto_1
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 297
    .end local v0    # "name":Ljava/lang/String;
    goto/16 :goto_0

    .line 298
    :cond_9
    return-void
.end method

.method private skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 304
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v1, 0x3

    if-ne v2, v1, :cond_0

    .line 305
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_1

    goto :goto_0

    .line 306
    :cond_1
    return-void
.end method


# virtual methods
.method public applyPolicies(Landroid/content/ComponentName;)Z
    .locals 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "admin"
        }
    .end annotation

    .line 123
    const-string v0, "CosuSetup"

    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mContext:Landroid/content/Context;

    .line 124
    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 127
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->getKioskApps()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/app/admin/DevicePolicyManager;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    nop

    .line 134
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mHideApps:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 135
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v1, p1, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    .line 136
    .end local v3    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mEnableSystemApps:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 141
    .restart local v3    # "pkg":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v1, p1, v3}, Landroid/app/admin/DevicePolicyManager;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    goto :goto_2

    .line 142
    :catch_0
    move-exception v5

    .line 143
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to enable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Operation is only allowed for system apps."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    goto :goto_1

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mUserRestrictions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    .local v2, "userRestriction":Ljava/lang/String;
    invoke-virtual {v1, p1, v2}, Landroid/app/admin/DevicePolicyManager;->addUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 152
    .end local v2    # "userRestriction":Ljava/lang/String;
    goto :goto_3

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mGlobalSettings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;

    .line 155
    .local v2, "globalSetting":Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;
    iget-object v3, v2, Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;->key:Ljava/lang/String;

    iget-object v5, v2, Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;->value:Ljava/lang/String;

    invoke-virtual {v1, p1, v3, v5}, Landroid/app/admin/DevicePolicyManager;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .end local v2    # "globalSetting":Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;
    goto :goto_4

    .line 158
    :cond_3
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_4

    .line 159
    invoke-direct {p0, v1, p1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->disableKeyGuardAndStatusBar(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)V

    .line 161
    :cond_4
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableScreenCapture:Z

    invoke-virtual {v1, p1, v0}, Landroid/app/admin/DevicePolicyManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V

    .line 162
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableCamera:Z

    invoke-virtual {v1, p1, v0}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 164
    return v4

    .line 128
    :catch_1
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "Exception when setting lock task packages"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public areAllInstallsFinished()Z
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;

    .line 189
    .local v1, "ai":Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    iget-boolean v2, v1, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->installCompleted:Z

    if-nez v2, :cond_0

    .line 190
    const/4 v0, 0x0

    return v0

    .line 192
    .end local v1    # "ai":Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    :cond_0
    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getKioskApps()[Ljava/lang/String;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mKioskApps:Ljava/util/Set;

    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mKioskApps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mMode:Ljava/lang/String;

    return-object v0
.end method

.method public initiateDownloadAndInstall(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;

    .line 175
    .local v1, "ai":Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadManager:Landroid/app/DownloadManager;

    iget-object v3, v1, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->downloadLocation:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/afwsamples/testdpc/cosu/CosuUtils;->startDownload(Landroid/app/DownloadManager;Landroid/os/Handler;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->downloadId:Ljava/lang/Long;

    .line 176
    .end local v1    # "ai":Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method public onDownloadComplete(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 7
    .param p1, "id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "CosuSetup"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;

    .line 198
    .local v1, "ai":Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    iget-object v3, v1, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->downloadId:Ljava/lang/Long;

    invoke-virtual {p1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->downloadCompleted:Z

    .line 202
    :try_start_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 203
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 204
    .local v4, "in":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/afwsamples/testdpc/common/PackageInstallationUtils;->installPackage(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    nop

    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "in":Ljava/io/InputStream;
    goto :goto_1

    .line 205
    :catch_0
    move-exception v3

    .line 206
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, v1, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error installing package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    iput-boolean v0, v1, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->installCompleted:Z

    .line 211
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v0, v1, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->downloadId:Ljava/lang/Long;

    return-object v0

    .line 213
    .end local v1    # "ai":Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    :cond_0
    goto :goto_0

    .line 214
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown download id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInstallComplete(Ljava/lang/String;)V
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

    .line 220
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;

    .line 221
    .local v1, "ai":Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    iget-object v2, v1, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->installCompleted:Z

    .line 223
    return-void

    .line 225
    .end local v1    # "ai":Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    :cond_0
    goto :goto_0

    .line 226
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string v1, "Disable status bar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableStatusBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v1, "Disable keyguard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableKeyguard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v1, "Disable screen capture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableScreenCapture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v1, "Disable camera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableCamera:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v1, "User restrictions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mUserRestrictions:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 359
    const-string v1, "Global settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mGlobalSettings:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 362
    const-string v1, "Hide apps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mHideApps:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 365
    const-string v1, "Enable system apps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mEnableSystemApps:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 368
    const-string v1, "Kiosk apps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mKioskApps:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 371
    const-string v1, "Download apps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadApps:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 374
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
