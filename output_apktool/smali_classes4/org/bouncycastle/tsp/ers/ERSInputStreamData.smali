.class public Lorg/bouncycastle/tsp/ers/ERSInputStreamData;
.super Lorg/bouncycastle/tsp/ers/ERSCachingData;
.source "ERSInputStreamData.java"


# instance fields
.field private final content:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "content"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSCachingData;-><init>()V

    .line 21
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSInputStreamData;->content:Ljava/io/InputStream;

    .line 26
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "directory not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "content"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSCachingData;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSInputStreamData;->content:Ljava/io/InputStream;

    .line 31
    return-void
.end method


# virtual methods
.method protected calculateHash(Lorg/bouncycastle/operator/DigestCalculator;[B)[B
    .locals 2
    .param p1, "digestCalculator"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p2, "previousChainHash"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digestCalculator",
            "previousChainHash"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSInputStreamData;->content:Ljava/io/InputStream;

    invoke-static {p1, v0}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;Ljava/io/InputStream;)[B

    move-result-object v0

    .line 37
    .local v0, "hash":[B
    if-eqz p2, :cond_0

    .line 39
    invoke-static {p1, p2, v0}, Lorg/bouncycastle/tsp/ers/ERSUtil;->concatPreviousHashes(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B

    move-result-object v1

    return-object v1

    .line 42
    :cond_0
    return-object v0
.end method
