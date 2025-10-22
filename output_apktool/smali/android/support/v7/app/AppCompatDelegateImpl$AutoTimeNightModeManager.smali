.class Landroid/support/v7/app/AppCompatDelegateImpl$AutoTimeNightModeManager;
.super Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoTimeNightModeManager"
.end annotation


# instance fields
.field private final mTwilightManager:Landroid/support/v7/app/TwilightManager;

.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/support/v7/app/TwilightManager;)V
    .locals 0
    .param p2, "twilightManager"    # Landroid/support/v7/app/TwilightManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 3654
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    .line 3655
    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Landroid/support/v7/app/TwilightManager;

    .line 3656
    return-void
.end method


# virtual methods
.method createIntentFilterForBroadcastReceiver()Landroid/content/IntentFilter;
    .locals 2

    .line 3671
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3672
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3673
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3674
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3675
    return-object v0
.end method

.method public getApplyableNightMode()I
    .locals 1

    .line 3661
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Landroid/support/v7/app/TwilightManager;

    invoke-virtual {v0}, Landroid/support/v7/app/TwilightManager;->isNight()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public onChange()V
    .locals 1

    .line 3666
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->applyDayNight()Z

    .line 3667
    return-void
.end method
