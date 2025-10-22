.class public abstract Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "NTRUKeyParameters.java"


# instance fields
.field private final params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;


# direct methods
.method constructor <init>(ZLorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;)V
    .locals 0
    .param p1, "privateKey"    # Z
    .param p2, "params"    # Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "params"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 16
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    .line 17
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    return-object v0
.end method
