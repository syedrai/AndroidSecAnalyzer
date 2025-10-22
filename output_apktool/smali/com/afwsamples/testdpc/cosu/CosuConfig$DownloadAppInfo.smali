.class Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
.super Ljava/lang/Object;
.source "CosuConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/cosu/CosuConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadAppInfo"
.end annotation


# instance fields
.field public downloadCompleted:Z

.field public downloadId:Ljava/lang/Long;

.field public final downloadLocation:Ljava/lang/String;

.field public installCompleted:Z

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/cosu/CosuConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "downloadLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "packageName",
            "downloadLocation"
        }
    .end annotation

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->packageName:Ljava/lang/String;

    .line 317
    iput-object p3, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->downloadLocation:Ljava/lang/String;

    .line 318
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->downloadCompleted:Z

    .line 319
    iput-boolean p1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->installCompleted:Z

    .line 320
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->downloadLocation:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " downloadLocation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
