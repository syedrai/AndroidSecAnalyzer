.class final Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;
.super Ljava/lang/Object;
.source "ComponentActivity.kt"

# interfaces
.implements Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReportFullyDrawnExecutorImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0016H\u0016J\u0010\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0003H\u0016J\u0008\u0010\u001c\u001a\u00020\u0016H\u0016J\u0008\u0010\u001d\u001a\u00020\u0016H\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;",
        "Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;",
        "Landroid/view/ViewTreeObserver$OnDrawListener;",
        "Ljava/lang/Runnable;",
        "<init>",
        "(Landroidx/activity/ComponentActivity;)V",
        "endWatchTimeMillis",
        "",
        "getEndWatchTimeMillis",
        "()J",
        "currentRunnable",
        "getCurrentRunnable",
        "()Ljava/lang/Runnable;",
        "setCurrentRunnable",
        "(Ljava/lang/Runnable;)V",
        "onDrawScheduled",
        "",
        "getOnDrawScheduled",
        "()Z",
        "setOnDrawScheduled",
        "(Z)V",
        "viewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "activityDestroyed",
        "execute",
        "runnable",
        "onDraw",
        "run",
        "activity_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private currentRunnable:Ljava/lang/Runnable;

.field private final endWatchTimeMillis:J

.field private onDrawScheduled:Z

.field final synthetic this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method public static synthetic $r8$lambda$0sNsUdVD3QenIrnQ9NJ_gPQ5x8k(Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;)V
    .locals 0

    invoke-static {p0}, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->execute$lambda$0(Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;)V

    return-void
.end method

.method public constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 4
    .param p1, "this$0"    # Landroidx/activity/ComponentActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1050
    iput-object p1, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->this$0:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0x2710

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->endWatchTimeMillis:J

    .line 1050
    return-void
.end method

.method private static final execute$lambda$0(Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;)V
    .locals 1
    .param p0, "this$0"    # Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;

    .line 1087
    iget-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->currentRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->currentRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1089
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->currentRunnable:Ljava/lang/Runnable;

    .line 1091
    :cond_0
    return-void
.end method


# virtual methods
.method public activityDestroyed()V
    .locals 2

    .line 1064
    iget-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->this$0:Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1065
    iget-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->this$0:Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 1066
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1075
    iput-object p1, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->currentRunnable:Ljava/lang/Runnable;

    .line 1076
    iget-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->this$0:Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getDecorView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1077
    .local v0, "decorView":Landroid/view/View;
    iget-boolean v1, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->onDrawScheduled:Z

    if-eqz v1, :cond_1

    .line 1078
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1079
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1081
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 1086
    :cond_1
    new-instance v1, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1093
    :goto_0
    return-void
.end method

.method public final getCurrentRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 1053
    iget-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->currentRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getEndWatchTimeMillis()J
    .locals 2

    .line 1052
    iget-wide v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->endWatchTimeMillis:J

    return-wide v0
.end method

.method public final getOnDrawScheduled()Z
    .locals 1

    .line 1054
    iget-boolean v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->onDrawScheduled:Z

    return v0
.end method

.method public onDraw()V
    .locals 7

    .line 1096
    iget-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->currentRunnable:Ljava/lang/Runnable;

    .line 1097
    .local v0, "runnable":Ljava/lang/Runnable;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1098
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1099
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->currentRunnable:Ljava/lang/Runnable;

    .line 1100
    iget-object v2, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->this$0:Landroidx/activity/ComponentActivity;

    invoke-virtual {v2}, Landroidx/activity/ComponentActivity;->getFullyDrawnReporter()Landroidx/activity/FullyDrawnReporter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/activity/FullyDrawnReporter;->isFullyDrawnReported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1101
    iput-boolean v1, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->onDrawScheduled:Z

    .line 1102
    iget-object v1, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->this$0:Landroidx/activity/ComponentActivity;

    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1104
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->endWatchTimeMillis:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 1107
    iput-boolean v1, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->onDrawScheduled:Z

    .line 1108
    iget-object v1, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->this$0:Landroidx/activity/ComponentActivity;

    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1110
    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1117
    iget-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->this$0:Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 1118
    return-void
.end method

.method public final setCurrentRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Runnable;

    .line 1053
    iput-object p1, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->currentRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public final setOnDrawScheduled(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 1054
    iput-boolean p1, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->onDrawScheduled:Z

    return-void
.end method

.method public viewCreated(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1057
    iget-boolean v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->onDrawScheduled:Z

    if-nez v0, :cond_0

    .line 1058
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->onDrawScheduled:Z

    .line 1059
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 1061
    :cond_0
    return-void
.end method
