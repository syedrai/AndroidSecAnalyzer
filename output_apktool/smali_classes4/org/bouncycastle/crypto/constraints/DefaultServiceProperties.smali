.class public Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;
.super Ljava/lang/Object;
.source "DefaultServiceProperties.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CryptoServiceProperties;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final bitsOfSecurity:I

.field private final params:Ljava/lang/Object;

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "bitsOfSecurity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "bitsOfSecurity"
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "bitsOfSecurity"    # I
    .param p3, "params"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "bitsOfSecurity",
            "params"
        }
    .end annotation

    .line 21
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "bitsOfSecurity"    # I
    .param p3, "params"    # Ljava/lang/Object;
    .param p4, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "bitsOfSecurity",
            "params",
            "purpose"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;->algorithm:Ljava/lang/String;

    .line 27
    iput p2, p0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;->bitsOfSecurity:I

    .line 28
    iput-object p3, p0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;->params:Ljava/lang/Object;

    .line 29
    instance-of v0, p3, Lorg/bouncycastle/crypto/CryptoServicePurpose;

    if-nez v0, :cond_0

    .line 33
    iput-object p4, p0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 34
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params should not be CryptoServicePurpose"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bitsOfSecurity()I
    .locals 1

    .line 38
    iget v0, p0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;->bitsOfSecurity:I

    return v0
.end method

.method public getParams()Ljava/lang/Object;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;->params:Ljava/lang/Object;

    return-object v0
.end method

.method public getPurpose()Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;->algorithm:Ljava/lang/String;

    return-object v0
.end method
