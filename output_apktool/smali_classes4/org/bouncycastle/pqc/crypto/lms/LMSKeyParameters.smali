.class public abstract Lorg/bouncycastle/pqc/crypto/lms/LMSKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "LMSKeyParameters.java"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# direct methods
.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "isPrivateKey"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPrivateKey"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 15
    return-void
.end method


# virtual methods
.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
