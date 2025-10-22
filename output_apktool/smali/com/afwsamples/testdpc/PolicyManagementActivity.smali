.class public Lcom/afwsamples/testdpc/PolicyManagementActivity;
.super Lcom/afwsamples/testdpc/common/DumpableActivity;
.source "PolicyManagementActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# static fields
.field private static final CMD_LOCK_TASK_MODE:Ljava/lang/String; = "lock-task-mode"

.field private static final LOCK_MODE_ACTION_START:Ljava/lang/String; = "start"

.field private static final LOCK_MODE_ACTION_STATUS:Ljava/lang/String; = "status"

.field private static final LOCK_MODE_ACTION_STOP:Ljava/lang/String; = "stop"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLockTaskMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/afwsamples/testdpc/PolicyManagementActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/DumpableActivity;-><init>()V

    return-void
.end method

.method private askNotificationPermission()V
    .locals 3

    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 192
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 194
    sget-object v0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->TAG:Ljava/lang/String;

    const-string v1, "Notification permission granted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_0
    sget-object v1, Lcom/afwsamples/testdpc/PolicyManagementActivity;->TAG:Ljava/lang/String;

    const-string v2, "Notification permission missing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0x65

    invoke-static {p0, v1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 202
    :cond_1
    :goto_0
    return-void
.end method

.method private dumpLockModeStatus(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pw"
        }
    .end annotation

    .line 170
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->mLockTaskMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "lock-task mode: %b\n"

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 171
    return-void
.end method

.method private setLockTaskMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 185
    sget-object v0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid lock-task action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 182
    :pswitch_0
    sget-object v0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->TAG:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->mLockTaskMode:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock-task mode status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    goto :goto_2

    .line 179
    :pswitch_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->stopLockTaskMode()V

    .line 180
    goto :goto_2

    .line 176
    :pswitch_2
    invoke-direct {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->startLockTaskMode()V

    .line 177
    nop

    .line 187
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3532300e -> :sswitch_2
        0x360802 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startLockTaskMode()V
    .locals 2

    .line 154
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->mLockTaskMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startLockTaskMode(): mLockTaskMode already true"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->mLockTaskMode:Z

    .line 157
    sget-object v0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startLockTaskMode(): calling Activity.startLockTask()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->startLockTask()V

    .line 159
    return-void
.end method

.method private stopLockTaskMode()V
    .locals 2

    .line 162
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->mLockTaskMode:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startLockTaskMode(): mLockTaskMode already false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->mLockTaskMode:Z

    .line 165
    sget-object v0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopLockTaskMode(): calling Activity.stopLockTask()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->stopLockTask()V

    .line 167
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "prefix",
            "fd",
            "pw",
            "args"
        }
    .end annotation

    .line 128
    if-eqz p4, :cond_2

    array-length v0, p4

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-object v1, p4, v0

    const-string v2, "lock-task-mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    array-length v1, p4

    const-string/jumbo v2, "status"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    aget-object v1, p4, v3

    .line 130
    .local v1, "action":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string/jumbo v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 143
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "Invalid lock-task mode action: %s\n"

    invoke-virtual {p3, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_3

    .line 140
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->dumpLockModeStatus(Ljava/io/PrintWriter;)V

    .line 141
    goto :goto_3

    .line 136
    :pswitch_1
    const-string v0, "Stopping lock-task mode"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->stopLockTaskMode()V

    .line 138
    goto :goto_3

    .line 132
    :pswitch_2
    const-string v0, "Starting lock-task mode"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->startLockTaskMode()V

    .line 134
    nop

    .line 145
    :goto_3
    return-void

    .line 147
    .end local v1    # "action":Ljava/lang/String;
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p3}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->dumpLockModeStatus(Ljava/io/PrintWriter;)V

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/common/DumpableActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 151
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3532300e -> :sswitch_2
        0x360802 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$id;->container:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 111
    .local v0, "currFragment":Landroid/app/Fragment;
    const/4 v1, 0x0

    .line 112
    .local v1, "onBackPressHandled":Z
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/afwsamples/testdpc/common/OnBackPressedHandler;

    if-eqz v2, :cond_0

    .line 113
    move-object v2, v0

    check-cast v2, Lcom/afwsamples/testdpc/common/OnBackPressedHandler;

    invoke-interface {v2}, Lcom/afwsamples/testdpc/common/OnBackPressedHandler;->onBackPressed()Z

    move-result v1

    .line 115
    :cond_0
    if-nez v1, :cond_1

    .line 116
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/DumpableActivity;->onBackPressed()V

    .line 118
    :cond_1
    return-void
.end method

.method public onBackStackChanged()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 106
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 57
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/DumpableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lcom/afwsamples/testdpc/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->setContentView(I)V

    .line 59
    if-nez p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$id;->container:I

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;-><init>()V

    .line 62
    const-string v3, "PolicyManagementFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 67
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$menu;->policy_management_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 122
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/DumpableActivity;->onDestroy()V

    .line 123
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 124
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "featureId",
            "item"
        }
    .end annotation

    .line 77
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 78
    .local v0, "itemId":I
    sget v1, Lcom/afwsamples/testdpc/R$id;->action_show_search:I

    if-ne v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$id;->container:I

    .line 81
    invoke-static {}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->newInstance()Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 82
    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 84
    :cond_0
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 87
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 92
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/DumpableActivity;->onResume()V

    .line 94
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lock-task-mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "lockModeCommand":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->setLockTaskMode(Ljava/lang/String;)V

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->askNotificationPermission()V

    .line 100
    return-void
.end method
