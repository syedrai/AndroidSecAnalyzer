.class public Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;
.super Ljava/lang/Object;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/picnic/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proof"
.end annotation


# instance fields
.field final communicatedBits:[B

.field final inputShare:[I

.field final seed1:[B

.field final seed2:[B

.field final view3Commitment:[B

.field final view3UnruhG:[B


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V
    .locals 1
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    .line 31
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    .line 32
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    .line 33
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->communicatedBits:[B

    .line 34
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3Commitment:[B

    .line 35
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    if-lez v0, :cond_0

    .line 37
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    .line 43
    :goto_0
    return-void
.end method
