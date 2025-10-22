.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "RainbowKeyParameters.java"


# instance fields
.field private final docLength:I

.field private final params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V
    .locals 1
    .param p1, "isPrivateKey"    # Z
    .param p2, "params"    # Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isPrivateKey",
            "params"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 14
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    .line 15
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->docLength:I

    .line 16
    return-void
.end method


# virtual methods
.method public getDocLength()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->docLength:I

    return v0
.end method

.method public getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    return-object v0
.end method
