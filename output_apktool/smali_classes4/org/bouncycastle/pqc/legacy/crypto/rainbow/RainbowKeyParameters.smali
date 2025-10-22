.class public Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "RainbowKeyParameters.java"


# instance fields
.field private docLength:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "docLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isPrivate",
            "docLength"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 15
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;->docLength:I

    .line 16
    return-void
.end method


# virtual methods
.method public getDocLength()I
    .locals 1

    .line 23
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;->docLength:I

    return v0
.end method
