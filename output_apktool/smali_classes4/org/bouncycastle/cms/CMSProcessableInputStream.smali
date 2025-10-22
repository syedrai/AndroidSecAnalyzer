.class Lorg/bouncycastle/cms/CMSProcessableInputStream;
.super Ljava/lang/Object;
.source "CMSProcessableInputStream.java"

# interfaces
.implements Lorg/bouncycastle/cms/CMSProcessable;
.implements Lorg/bouncycastle/cms/CMSReadable;


# instance fields
.field private input:Ljava/io/InputStream;

.field private used:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/CMSProcessableInputStream;->used:Z

    .line 17
    iput-object p1, p0, Lorg/bouncycastle/cms/CMSProcessableInputStream;->input:Ljava/io/InputStream;

    .line 18
    return-void
.end method

.method private declared-synchronized checkSingleUsage()V
    .locals 2

    monitor-enter p0

    .line 43
    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/cms/CMSProcessableInputStream;->used:Z

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/cms/CMSProcessableInputStream;->used:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 45
    .end local p0    # "this":Lorg/bouncycastle/cms/CMSProcessableInputStream;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CMSProcessableInputStream can only be used once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/bouncycastle/cms/CMSProcessableInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 22
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSProcessableInputStream;->checkSingleUsage()V

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSProcessableInputStream;->input:Ljava/io/InputStream;

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "zOut"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zOut"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSProcessableInputStream;->checkSingleUsage()V

    .line 32
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSProcessableInputStream;->input:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lorg/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSProcessableInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 34
    return-void
.end method
