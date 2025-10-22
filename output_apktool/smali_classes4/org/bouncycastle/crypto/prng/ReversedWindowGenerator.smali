.class public Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;
.super Ljava/lang/Object;
.source "ReversedWindowGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/RandomGenerator;


# instance fields
.field private final generator:Lorg/bouncycastle/crypto/prng/RandomGenerator;

.field private window:[B

.field private windowCount:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/prng/RandomGenerator;I)V
    .locals 2
    .param p1, "generator"    # Lorg/bouncycastle/crypto/prng/RandomGenerator;
    .param p2, "windowSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "generator",
            "windowSize"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-eqz p1, :cond_1

    .line 26
    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    .line 31
    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->generator:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    .line 32
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    .line 33
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "windowSize must be at least 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "generator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doNextBytes([BII)V
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "start",
            "len"
        }
    .end annotation

    .line 96
    monitor-enter p0

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "done":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 101
    :try_start_0
    iget v1, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 103
    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->generator:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    array-length v4, v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v4}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->nextBytes([BII)V

    .line 104
    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    array-length v1, v1

    iput v1, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    .line 107
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "done":I
    .local v1, "done":I
    add-int/2addr v0, p2

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    iget v4, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    aget-byte v2, v3, v4

    aput-byte v2, p1, v0

    move v0, v1

    goto :goto_0

    .line 109
    .end local v1    # "done":I
    :cond_1
    monitor-exit p0

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addSeedMaterial(J)V
    .locals 1
    .param p1, "seed"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seed"
        }
    .end annotation

    .line 58
    monitor-enter p0

    .line 60
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->generator:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->addSeedMaterial(J)V

    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addSeedMaterial([B)V
    .locals 1
    .param p1, "seed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seed"
        }
    .end annotation

    .line 43
    monitor-enter p0

    .line 45
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->generator:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->addSeedMaterial([B)V

    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public nextBytes([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->doNextBytes([BII)V

    .line 74
    return-void
.end method

.method public nextBytes([BII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "start",
            "len"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->doNextBytes([BII)V

    .line 89
    return-void
.end method
