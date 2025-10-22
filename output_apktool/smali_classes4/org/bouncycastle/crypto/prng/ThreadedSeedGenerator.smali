.class public Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;
.super Ljava/lang/Object;
.source "ThreadedSeedGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSeed(IZ)[B
    .locals 2
    .param p1, "numBytes"    # I
    .param p2, "fast"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "numBytes",
            "fast"
        }
    .end annotation

    .line 91
    new-instance v0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;-><init>(Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator-IA;)V

    .line 93
    .local v0, "gen":Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;
    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->generateSeed(IZ)[B

    move-result-object v1

    return-object v1
.end method
