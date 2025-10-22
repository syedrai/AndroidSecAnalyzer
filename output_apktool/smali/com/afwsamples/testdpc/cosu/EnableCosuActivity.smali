.class public Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;
.super Landroid/app/Activity;
.source "EnableCosuActivity.java"


# static fields
.field public static final BUNDLE_KEY_COSU_CONFIG:Ljava/lang/String; = "cosu-demo-config-location"

.field private static final MODE_CUSTOM:Ljava/lang/String; = "custom"

.field private static final MODE_DEFAULT:Ljava/lang/String; = "default"

.field private static final MODE_SINGLE:Ljava/lang/String; = "single"


# instance fields
.field private mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

.field private mConfigDownloadId:Ljava/lang/Long;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mDownloadReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mInstallReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusText:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConfig(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Lcom/afwsamples/testdpc/cosu/CosuConfig;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfigDownloadId(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfigDownloadId:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDownloadManager(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Landroid/app/DownloadManager;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mDownloadManager:Landroid/app/DownloadManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfinishWithFailure(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finishWithFailure()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monConfigFileDownloaded(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->onConfigFileDownloaded()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartCosuMode(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->startCosuMode()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 208
    new-instance v0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;-><init>(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mHandler:Landroid/os/Handler;

    .line 256
    new-instance v0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$2;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$2;-><init>(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    new-instance v0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$3;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$3;-><init>(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private finishWithFailure()V
    .locals 2

    .line 201
    sget v0, Lcom/afwsamples/testdpc/R$string;->setup_cosu_failure:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finish()V

    .line 206
    return-void
.end method

.method private onConfigFileDownloaded()V
    .locals 4

    .line 115
    const-string v0, "CosuSetup"

    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mStatusText:Landroid/widget/TextView;

    sget v2, Lcom/afwsamples/testdpc/R$string;->setup_cosu_status_parse:I

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mDownloadManager:Landroid/app/DownloadManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfigDownloadId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 127
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 128
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {p0, v2}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->createConfig(Landroid/content/Context;Ljava/io/InputStream;)Lcom/afwsamples/testdpc/cosu/CosuConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    .line 129
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    if-nez v3, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finishWithFailure()V

    .line 131
    return-void

    .line 133
    :cond_0
    const-string v3, "CosuConfig:"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    invoke-virtual {v3}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->applyPolicies(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finishWithFailure()V

    .line 138
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->initiateDownloadAndInstall(Landroid/os/Handler;)V

    .line 142
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mStatusText:Landroid/widget/TextView;

    sget v3, Lcom/afwsamples/testdpc/R$string;->setup_cosu_status_apps:I

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->areAllInstallsFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-direct {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->startCosuMode()V

    .line 146
    :cond_2
    return-void

    .line 121
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "Download file not found."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    invoke-direct {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finishWithFailure()V

    .line 124
    return-void
.end method

.method private startCosuMode()V
    .locals 8

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "launchIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->getMode()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "mode":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    invoke-virtual {v2}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->getKioskApps()[Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "kioskApps":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 159
    const-string v1, "default"

    .line 161
    :cond_0
    const-string v3, "custom"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 163
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v3

    .line 164
    const-string v3, "com.afwsamples.testdpc.policy.locktask.LOCKED_APP_PACKAGE_LIST"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v5, Landroid/content/ComponentName;

    .line 167
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v3, v5, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0

    .line 170
    :cond_1
    const-string/jumbo v3, "single"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    array-length v3, v2

    if-eqz v3, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 179
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    :cond_3
    :goto_0
    const-string v3, "CosuSetup"

    if-nez v0, :cond_4

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No launch intent specified. Mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finishWithFailure()V

    .line 184
    return-void

    .line 186
    :cond_4
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    sget v5, Lcom/afwsamples/testdpc/R$string;->setup_cosu_success:I

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 189
    iget-object v4, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    iget-object v4, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    iget-object v4, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 194
    const-string v4, "Download timeout messages remaining on handler thread."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    :cond_5
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finish()V

    .line 198
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
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

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 72
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "CosuSetup"

    if-nez v1, :cond_0

    .line 73
    const-string v1, "TestDPC is not the device owner, cannot set up COSU device."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finish()V

    .line 75
    return-void

    .line 79
    :cond_0
    nop

    .line 80
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 81
    .local v1, "persistableBundle":Landroid/os/PersistableBundle;
    if-nez v1, :cond_1

    .line 82
    const-string v3, "No admin extra bundle"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finish()V

    .line 84
    return-void

    .line 87
    :cond_1
    sget v3, Lcom/afwsamples/testdpc/R$layout;->enable_cosu_activity:I

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->setContentView(I)V

    .line 88
    sget v3, Lcom/afwsamples/testdpc/R$id;->setup_wizard_layout:I

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/setupdesign/SetupWizardLayout;

    .line 89
    .local v3, "layout":Lcom/google/android/setupdesign/SetupWizardLayout;
    invoke-virtual {v3}, Lcom/google/android/setupdesign/SetupWizardLayout;->getNavigationBar()Lcom/google/android/setupdesign/view/NavigationBar;

    move-result-object v4

    .line 90
    .local v4, "navigationBar":Lcom/google/android/setupdesign/view/NavigationBar;
    invoke-virtual {v4}, Lcom/google/android/setupdesign/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    invoke-virtual {v4}, Lcom/google/android/setupdesign/view/NavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    invoke-virtual {v3}, Lcom/google/android/setupdesign/SetupWizardLayout;->showProgressBar()V

    .line 93
    sget v5, Lcom/afwsamples/testdpc/R$id;->status_text:I

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mStatusText:Landroid/widget/TextView;

    .line 95
    const-string v5, "download"

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/DownloadManager;

    iput-object v5, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mDownloadManager:Landroid/app/DownloadManager;

    .line 98
    iget-object v5, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    iget-object v5, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.afwsamples.testdpc.INSTALL_COMPLETE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    const-string v5, "cosu-demo-config-location"

    invoke-virtual {v1, v5}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 104
    .local v5, "configDownloadLocation":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 105
    const-string v6, "No download-location specified"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finishWithFailure()V

    .line 107
    return-void

    .line 110
    :cond_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mDownloadManager:Landroid/app/DownloadManager;

    iget-object v6, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v6, v5}, Lcom/afwsamples/testdpc/cosu/CosuUtils;->startDownload(Landroid/app/DownloadManager;Landroid/os/Handler;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfigDownloadId:Ljava/lang/Long;

    .line 111
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mStatusText:Landroid/widget/TextView;

    sget v6, Lcom/afwsamples/testdpc/R$string;->setup_cosu_status_download:I

    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method
