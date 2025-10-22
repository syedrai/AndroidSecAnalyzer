.class Landroidx/enterprise/feedback/BufferedServiceConnection$1$1;
.super Ljava/lang/Object;
.source "BufferedServiceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/enterprise/feedback/BufferedServiceConnection$1;->onBindingDied(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/enterprise/feedback/BufferedServiceConnection$1;


# direct methods
.method constructor <init>(Landroidx/enterprise/feedback/BufferedServiceConnection$1;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/enterprise/feedback/BufferedServiceConnection$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1$1;->this$1:Landroidx/enterprise/feedback/BufferedServiceConnection$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 125
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1$1;->this$1:Landroidx/enterprise/feedback/BufferedServiceConnection$1;

    invoke-virtual {v0}, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->reportSuccessOnBufferedMessages()V

    .line 126
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1$1;->this$1:Landroidx/enterprise/feedback/BufferedServiceConnection$1;

    iget-object v0, v0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mIsDead:Z

    .line 127
    return-void
.end method
