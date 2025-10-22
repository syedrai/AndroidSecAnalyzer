.class abstract Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;
.super Ljava/lang/Object;
.source "Symmetric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;,
        Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;
    }
.end annotation


# instance fields
.field final stream128BlockBytes:I

.field final stream256BlockBytes:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "stream128"    # I
    .param p2, "stream256"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream128",
            "stream256"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream128BlockBytes:I

    .line 19
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    .line 20
    return-void
.end method


# virtual methods
.method abstract stream128init([BS)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "nonce"
        }
    .end annotation
.end method

.method abstract stream128squeezeBlocks([BII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "offset",
            "size"
        }
    .end annotation
.end method

.method abstract stream256init([BS)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "nonce"
        }
    .end annotation
.end method

.method abstract stream256squeezeBlocks([BII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "offset",
            "size"
        }
    .end annotation
.end method
