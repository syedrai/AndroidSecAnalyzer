.class Lcom/afwsamples/testdpc/cosu/CosuUtils;
.super Ljava/lang/Object;
.source "CosuUtils.java"


# static fields
.field public static final DEBUG:Z = false

.field private static final DOWNLOAD_TIMEOUT_MILLIS:I = 0x1d4c0

.field public static final MSG_DOWNLOAD_COMPLETE:I = 0x1

.field public static final MSG_DOWNLOAD_TIMEOUT:I = 0x2

.field public static final MSG_INSTALL_COMPLETE:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CosuSetup"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startDownload(Landroid/app/DownloadManager;Landroid/os/Handler;Ljava/lang/String;)Ljava/lang/Long;
    .locals 5
    .param p0, "dm"    # Landroid/app/DownloadManager;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dm",
            "handler",
            "location"
        }
    .end annotation

    .line 38
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 39
    .local v0, "request":Landroid/app/DownloadManager$Request;
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 40
    .local v1, "id":Ljava/lang/Long;
    nop

    .line 41
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 40
    const-wide/32 v3, 0x1d4c0

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 43
    return-object v1
.end method
