.class public Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "McElieceKeyParameters.java"


# instance fields
.field private params:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isPrivate",
            "params"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 16
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;

    .line 17
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;

    return-object v0
.end method
