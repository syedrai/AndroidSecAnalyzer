.class public Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;
.super Ljava/lang/Object;
.source "DigestRandomGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/RandomGenerator;


# static fields
.field private static CYCLE_COUNT:J


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private seed:[B

.field private seedCounter:J

.field private state:[B

.field private stateCounter:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-wide/16 v0, 0xa

    sput-wide v0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->CYCLE_COUNT:J

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 3
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 30
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    .line 31
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seedCounter:J

    .line 33
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->state:[B

    .line 34
    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->stateCounter:J

    .line 35
    return-void
.end method

.method private cycleSeed()V
    .locals 4

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    .line 90
    iget-wide v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seedCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seedCounter:J

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestAddCounter(J)V

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestDoFinal([B)V

    .line 93
    return-void
.end method

.method private digestAddCounter(J)V
    .locals 4
    .param p1, "seed"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seed"
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 113
    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    long-to-int v3, p1

    int-to-byte v3, v3

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 114
    ushr-long/2addr p1, v1

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private digestDoFinal([B)V
    .locals 2
    .param p1, "result"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 126
    return-void
.end method

.method private digestUpdate([B)V
    .locals 3
    .param p1, "inSeed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inSeed"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 121
    return-void
.end method

.method private generateState()V
    .locals 5

    .line 97
    iget-wide v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->stateCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->stateCounter:J

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestAddCounter(J)V

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->state:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    .line 99
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    .line 101
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->state:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestDoFinal([B)V

    .line 103
    iget-wide v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->stateCounter:J

    sget-wide v2, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->CYCLE_COUNT:J

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 105
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->cycleSeed()V

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public addSeedMaterial(J)V
    .locals 1
    .param p1, "rSeed"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rSeed"
        }
    .end annotation

    .line 52
    monitor-enter p0

    .line 54
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestAddCounter(J)V

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestDoFinal([B)V

    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addSeedMaterial([B)V
    .locals 1
    .param p1, "inSeed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inSeed"
        }
    .end annotation

    .line 39
    monitor-enter p0

    .line 41
    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->isNullOrEmpty([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestDoFinal([B)V

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

    .line 63
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->nextBytes([BII)V

    .line 64
    return-void
.end method

.method public nextBytes([BII)V
    .locals 5
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

    .line 68
    monitor-enter p0

    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "stateOff":I
    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->generateState()V

    .line 74
    add-int v1, p2, p3

    .line 75
    .local v1, "end":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-eq v2, v1, :cond_1

    .line 77
    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->state:[B

    array-length v3, v3

    if-ne v0, v3, :cond_0

    .line 79
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->generateState()V

    .line 80
    const/4 v0, 0x0

    .line 82
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->state:[B

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "stateOff":I
    .local v4, "stateOff":I
    aget-byte v0, v3, v0

    aput-byte v0, p1, v2

    .line 75
    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_0

    .line 84
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v4    # "stateOff":I
    :cond_1
    monitor-exit p0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
