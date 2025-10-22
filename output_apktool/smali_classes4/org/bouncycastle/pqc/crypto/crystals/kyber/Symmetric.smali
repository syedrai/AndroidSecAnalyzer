.class abstract Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;
.super Ljava/lang/Object;
.source "Symmetric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;,
        Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;
    }
.end annotation


# instance fields
.field final xofBlockBytes:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "blockBytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockBytes"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->xofBlockBytes:I

    .line 34
    return-void
.end method


# virtual methods
.method abstract hash_g([B[B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation
.end method

.method abstract hash_h([B[BI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in",
            "outOffset"
        }
    .end annotation
.end method

.method abstract kdf([B[B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation
.end method

.method abstract prf([B[BB)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "key",
            "nonce"
        }
    .end annotation
.end method

.method abstract xofAbsorb([BBB)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seed",
            "x",
            "y"
        }
    .end annotation
.end method

.method abstract xofSqueezeBlocks([BII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOffset",
            "outLen"
        }
    .end annotation
.end method
