.class public Lorg/bouncycastle/crypto/prng/X931SecureRandom;
.super Ljava/security/SecureRandom;
.source "X931SecureRandom.java"


# instance fields
.field private final drbg:Lorg/bouncycastle/crypto/prng/X931RNG;

.field private final predictionResistant:Z

.field private final randomSource:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/X931RNG;Z)V
    .locals 0
    .param p1, "randomSource"    # Ljava/security/SecureRandom;
    .param p2, "drbg"    # Lorg/bouncycastle/crypto/prng/X931RNG;
    .param p3, "predictionResistant"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "randomSource",
            "drbg",
            "predictionResistant"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->randomSource:Ljava/security/SecureRandom;

    .line 15
    iput-object p2, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/X931RNG;

    .line 16
    iput-boolean p3, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->predictionResistant:Z

    .line 17
    return-void
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 1
    .param p1, "numBytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numBytes"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/X931RNG;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/prng/X931RNG;->getEntropySource()Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/prng/EntropyUtil;->generateSeed(Lorg/bouncycastle/crypto/prng/EntropySource;I)[B

    move-result-object v0

    return-object v0
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

    .line 44
    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/X931RNG;

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->predictionResistant:Z

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/crypto/prng/X931RNG;->generate([BZ)I

    move-result v0

    if-gez v0, :cond_0

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/X931RNG;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/prng/X931RNG;->reseed()V

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/X931RNG;

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->predictionResistant:Z

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/crypto/prng/X931RNG;->generate([BZ)I

    .line 52
    :cond_0
    monitor-exit p0

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSeed(J)V
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

    .line 32
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->randomSource:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->randomSource:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, p2}, Ljava/security/SecureRandom;->setSeed(J)V

    .line 39
    :cond_0
    monitor-exit p0

    .line 40
    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSeed([B)V
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

    .line 21
    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->randomSource:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->randomSource:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 27
    :cond_0
    monitor-exit p0

    .line 28
    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
