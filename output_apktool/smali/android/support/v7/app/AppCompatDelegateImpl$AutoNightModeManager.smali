.class abstract Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AutoNightModeManager"
.end annotation


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/AppCompatDelegateImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3604
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 2

    .line 3635
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3637
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3641
    goto :goto_0

    .line 3638
    :catch_0
    move-exception v0

    .line 3642
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3644
    :cond_0
    return-void
.end method

.method abstract createIntentFilterForBroadcastReceiver()Landroid/content/IntentFilter;
.end method

.method abstract getApplyableNightMode()I
.end method

.method isListening()Z
    .locals 1

    .line 3647
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method abstract onChange()V
.end method

.method setup()V
    .locals 3

    .line 3613
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->cleanup()V

    .line 3615
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->createIntentFilterForBroadcastReceiver()Landroid/content/IntentFilter;

    move-result-object v0

    .line 3616
    .local v0, "filter":Landroid/content/IntentFilter;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3621
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 3622
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager$1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3629
    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3630
    return-void

    .line 3618
    :cond_2
    :goto_0
    return-void
.end method
