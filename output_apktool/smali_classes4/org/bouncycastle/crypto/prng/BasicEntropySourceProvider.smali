.class public Lorg/bouncycastle/crypto/prng/BasicEntropySourceProvider;
.super Ljava/lang/Object;
.source "BasicEntropySourceProvider.java"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySourceProvider;


# instance fields
.field private final _predictionResistant:Z

.field private final _sr:Ljava/security/SecureRandom;


# direct methods
.method static bridge synthetic -$$Nest$fget_predictionResistant(Lorg/bouncycastle/crypto/prng/BasicEntropySourceProvider;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/crypto/prng/BasicEntropySourceProvider;->_predictionResistant:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_sr(Lorg/bouncycastle/crypto/prng/BasicEntropySourceProvider;)Ljava/security/SecureRandom;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/prng/BasicEntropySourceProvider;->_sr:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 0
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "isPredictionResistant"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "random",
            "isPredictionResistant"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/BasicEntropySourceProvider;->_sr:Ljava/security/SecureRandom;

    .line 23
    iput-boolean p2, p0, Lorg/bouncycastle/crypto/prng/BasicEntropySourceProvider;->_predictionResistant:Z

    .line 24
    return-void
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
    .locals 1
    .param p1, "bitsRequired"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bitsRequired"
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/bouncycastle/crypto/prng/BasicEntropySourceProvider$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/crypto/prng/BasicEntropySourceProvider$1;-><init>(Lorg/bouncycastle/crypto/prng/BasicEntropySourceProvider;I)V

    return-object v0
.end method
