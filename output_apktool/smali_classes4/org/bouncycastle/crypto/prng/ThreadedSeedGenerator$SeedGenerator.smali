.class Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;
.super Ljava/lang/Object;
.source "ThreadedSeedGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeedGenerator"
.end annotation


# instance fields
.field private volatile counter:I

.field private volatile stop:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    .line 15
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->stop:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSeed(IZ)[B
    .locals 8
    .param p1, "numbytes"    # I
    .param p2, "fast"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "numbytes",
            "fast"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 31
    .local v0, "t":Ljava/lang/Thread;
    new-array v1, p1, [B

    .line 32
    .local v1, "result":[B
    const/4 v2, 0x0

    iput v2, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    .line 33
    iput-boolean v2, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->stop:Z

    .line 34
    const/4 v2, 0x0

    .line 37
    .local v2, "last":I
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    if-eqz p2, :cond_0

    .line 40
    move v3, p1

    .local v3, "end":I
    goto :goto_0

    .line 44
    .end local v3    # "end":I
    :cond_0
    mul-int/lit8 v3, p1, 0x8

    .line 46
    .restart local v3    # "end":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/4 v5, 0x1

    if-ge v4, v3, :cond_3

    .line 48
    :goto_2
    iget v6, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    if-ne v6, v2, :cond_1

    .line 52
    const-wide/16 v6, 0x1

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_3
    goto :goto_2

    .line 54
    :catch_0
    move-exception v6

    goto :goto_3

    .line 59
    :cond_1
    iget v2, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    .line 60
    if-eqz p2, :cond_2

    .line 62
    and-int/lit16 v5, v2, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    goto :goto_4

    .line 66
    :cond_2
    div-int/lit8 v6, v4, 0x8

    .line 67
    .local v6, "bytepos":I
    aget-byte v7, v1, v6

    shl-int/lit8 v5, v7, 0x1

    and-int/lit8 v7, v2, 0x1

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    .line 46
    .end local v6    # "bytepos":I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 71
    .end local v4    # "i":I
    :cond_3
    iput-boolean v5, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->stop:Z

    .line 72
    return-object v1
.end method

.method public run()V
    .locals 1

    .line 19
    nop

    :goto_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->stop:Z

    if-nez v0, :cond_0

    .line 21
    iget v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method
