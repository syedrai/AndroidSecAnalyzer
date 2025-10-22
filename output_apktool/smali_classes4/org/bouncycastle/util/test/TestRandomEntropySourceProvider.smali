.class public Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;
.super Ljava/lang/Object;
.source "TestRandomEntropySourceProvider.java"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySourceProvider;


# instance fields
.field private final _predictionResistant:Z

.field private final _sr:Ljava/security/SecureRandom;


# direct methods
.method static bridge synthetic -$$Nest$fget_predictionResistant(Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;->_predictionResistant:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_sr(Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;)Ljava/security/SecureRandom;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;->_sr:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isPredictionResistant"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPredictionResistant"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;->_sr:Ljava/security/SecureRandom;

    .line 25
    iput-boolean p1, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;->_predictionResistant:Z

    .line 26
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

    .line 37
    new-instance v0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;-><init>(Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;I)V

    return-object v0
.end method
