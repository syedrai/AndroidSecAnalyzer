.class Landroidx/enterprise/feedback/KeyedAppStatesCallbackMerger;
.super Ljava/lang/Object;
.source "KeyedAppStatesCallbackMerger.java"

# interfaces
.implements Landroidx/enterprise/feedback/KeyedAppStatesCallback;


# instance fields
.field private mHasReported:Z

.field private final mNumReceivers:I

.field private final mOriginalCallback:Landroidx/enterprise/feedback/KeyedAppStatesCallback;

.field private mSuccesses:I


# direct methods
.method constructor <init>(ILandroidx/enterprise/feedback/KeyedAppStatesCallback;)V
    .locals 3
    .param p1, "numReceivers"    # I
    .param p2, "originalCallback"    # Landroidx/enterprise/feedback/KeyedAppStatesCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "numReceivers",
            "originalCallback"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/enterprise/feedback/KeyedAppStatesCallbackMerger;->mHasReported:Z

    .line 36
    iput p1, p0, Landroidx/enterprise/feedback/KeyedAppStatesCallbackMerger;->mNumReceivers:I

    .line 37
    iput-object p2, p0, Landroidx/enterprise/feedback/KeyedAppStatesCallbackMerger;->mOriginalCallback:Landroidx/enterprise/feedback/KeyedAppStatesCallback;

    .line 39
    iget v1, p0, Landroidx/enterprise/feedback/KeyedAppStatesCallbackMerger;->mNumReceivers:I

    if-nez v1, :cond_0

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/enterprise/feedback/KeyedAppStatesCallbackMerger;->mHasReported:Z

    .line 41
    iget-object v1, p0, Landroidx/enterprise/feedback/KeyedAppStatesCallbackMerger;->mOriginalCallback:Landroidx/enterprise/feedback/KeyedAppStatesCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroidx/enterprise/feedback/KeyedAppStatesCallback;->onResult(ILjava/lang/Throwable;)V

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/Throwable;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "throwable"
        }
    .end annotation

    .line 47
    iget-boolean v0, p0, Landroidx/enterprise/feedback/KeyedAppStatesCallbackMerger;->mHasReported:Z

    if-eqz v0, :cond_0

    .line 49
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget v1, p0, Landroidx/enterprise/feedback/KeyedAppStatesCallbackMerger;->mSuccesses:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/enterprise/feedback/KeyedAppStatesCallbackMerger;->mSuccesses:I

    iget v2, p0, Landroidx/enterprise/feedback/KeyedAppStatesCallbackMerger;->mNumReceivers:I

    if-lt v1, v2, :cond_2

    .line 53
    :cond_1
    iput-boolean v0, p0, Landroidx/enterprise/feedback/KeyedAppStatesCallbackMerger;->mHasReported:Z

    .line 54
    iget-object v0, p0, Landroidx/enterprise/feedback/KeyedAppStatesCallbackMerger;->mOriginalCallback:Landroidx/enterprise/feedback/KeyedAppStatesCallback;

    invoke-interface {v0, p1, p2}, Landroidx/enterprise/feedback/KeyedAppStatesCallback;->onResult(ILjava/lang/Throwable;)V

    .line 56
    :cond_2
    return-void
.end method
