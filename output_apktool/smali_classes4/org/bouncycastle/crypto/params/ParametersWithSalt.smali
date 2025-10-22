.class public Lorg/bouncycastle/crypto/params/ParametersWithSalt;
.super Ljava/lang/Object;
.source "ParametersWithSalt.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private parameters:Lorg/bouncycastle/crypto/CipherParameters;

.field private salt:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V
    .locals 2
    .param p1, "parameters"    # Lorg/bouncycastle/crypto/CipherParameters;
    .param p2, "salt"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "salt"
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/params/ParametersWithSalt;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V
    .locals 2
    .param p1, "parameters"    # Lorg/bouncycastle/crypto/CipherParameters;
    .param p2, "salt"    # [B
    .param p3, "saltOff"    # I
    .param p4, "saltLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "salt",
            "saltOff",
            "saltLen"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v0, p4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/ParametersWithSalt;->salt:[B

    .line 28
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/ParametersWithSalt;->parameters:Lorg/bouncycastle/crypto/CipherParameters;

    .line 30
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ParametersWithSalt;->salt:[B

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ParametersWithSalt;->parameters:Lorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ParametersWithSalt;->salt:[B

    return-object v0
.end method
