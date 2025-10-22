.class public Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "NTRULPRimeKeyParameters.java"


# instance fields
.field private final params:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)V
    .locals 0
    .param p1, "privateKey"    # Z
    .param p2, "params"    # Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;
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

    .line 12
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 13
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    .line 14
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    return-object v0
.end method
