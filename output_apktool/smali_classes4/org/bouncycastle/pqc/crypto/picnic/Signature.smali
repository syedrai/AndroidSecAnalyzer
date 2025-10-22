.class Lorg/bouncycastle/pqc/crypto/picnic/Signature;
.super Ljava/lang/Object;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;
    }
.end annotation


# instance fields
.field final challengeBits:[B

.field final proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

.field final salt:[B


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V
    .locals 3
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    .line 11
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    .line 12
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    .line 13
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 15
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    invoke-direct {v2, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v2, v1, v0

    .line 13
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
