.class public Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "FrodoKeyParameters.java"


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;
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

    .line 14
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 15
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    .line 16
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    return-object v0
.end method
