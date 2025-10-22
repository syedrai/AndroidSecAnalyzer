.class public Lorg/bouncycastle/tsp/ers/ERSByteData;
.super Lorg/bouncycastle/tsp/ers/ERSCachingData;
.source "ERSByteData.java"


# instance fields
.field private final content:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSCachingData;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSByteData;->content:[B

    .line 16
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

    .line 20
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSByteData;->content:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;[B)[B

    move-result-object v0

    .line 22
    .local v0, "hash":[B
    if-eqz p2, :cond_0

    .line 24
    invoke-static {p1, p2, v0}, Lorg/bouncycastle/tsp/ers/ERSUtil;->concatPreviousHashes(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B

    move-result-object v1

    return-object v1

    .line 27
    :cond_0
    return-object v0
.end method
