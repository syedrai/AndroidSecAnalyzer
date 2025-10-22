.class public final Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;
.super Ljava/lang/Object;
.source "SecretKeyWithEncapsulation.java"

# interfaces
.implements Ljavax/crypto/SecretKey;


# instance fields
.field private final encapsulation:[B

.field private final secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;[B)V
    .locals 1
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .param p2, "encapsulation"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "secretKey",
            "encapsulation"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    .line 25
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;->encapsulation:[B

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncapsulation()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;->encapsulation:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
