.class final Landroidx/enterprise/feedback/KeyedAppStatesService$KeyedAppStatesServiceAsyncTask;
.super Landroid/os/AsyncTask;
.source "KeyedAppStatesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/enterprise/feedback/KeyedAppStatesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyedAppStatesServiceAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mKeyedAppStatesService:Landroidx/enterprise/feedback/KeyedAppStatesService;

.field private final mRequestSync:Z

.field private final mStates:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroidx/enterprise/feedback/ReceivedKeyedAppState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/enterprise/feedback/KeyedAppStatesService;Ljava/util/Collection;Z)V
    .locals 0
    .param p1, "keyedAppStatesService"    # Landroidx/enterprise/feedback/KeyedAppStatesService;
    .param p3, "requestSync"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyedAppStatesService",
            "states",
            "requestSync"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/enterprise/feedback/KeyedAppStatesService;",
            "Ljava/util/Collection<",
            "Landroidx/enterprise/feedback/ReceivedKeyedAppState;",
            ">;Z)V"
        }
    .end annotation

    .line 79
    .local p2, "states":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/ReceivedKeyedAppState;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 81
    iput-object p1, p0, Landroidx/enterprise/feedback/KeyedAppStatesService$KeyedAppStatesServiceAsyncTask;->mKeyedAppStatesService:Landroidx/enterprise/feedback/KeyedAppStatesService;

    .line 82
    iput-object p2, p0, Landroidx/enterprise/feedback/KeyedAppStatesService$KeyedAppStatesServiceAsyncTask;->mStates:Ljava/util/Collection;

    .line 83
    iput-boolean p3, p0, Landroidx/enterprise/feedback/KeyedAppStatesService$KeyedAppStatesServiceAsyncTask;->mRequestSync:Z

    .line 84
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    .line 65
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/enterprise/feedback/KeyedAppStatesService$KeyedAppStatesServiceAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "o"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Landroidx/enterprise/feedback/KeyedAppStatesService$KeyedAppStatesServiceAsyncTask;->mKeyedAppStatesService:Landroidx/enterprise/feedback/KeyedAppStatesService;

    iget-object v1, p0, Landroidx/enterprise/feedback/KeyedAppStatesService$KeyedAppStatesServiceAsyncTask;->mStates:Ljava/util/Collection;

    iget-boolean v2, p0, Landroidx/enterprise/feedback/KeyedAppStatesService$KeyedAppStatesServiceAsyncTask;->mRequestSync:Z

    invoke-virtual {v0, v1, v2}, Landroidx/enterprise/feedback/KeyedAppStatesService;->onReceive(Ljava/util/Collection;Z)V

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method
