.class public Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "FalconKeyParameters.java"


# instance fields
.field private final params:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/falcon/FalconParameters;)V
    .locals 0
    .param p1, "isprivate"    # Z
    .param p2, "parameters"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isprivate",
            "parameters"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 14
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    .line 15
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    return-object v0
.end method
