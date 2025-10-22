.class public Lorg/bouncycastle/jcajce/PKCS12Key;
.super Ljava/lang/Object;
.source "PKCS12Key.java"

# interfaces
.implements Lorg/bouncycastle/jcajce/PBKDFKey;


# instance fields
.field private final password:[C

.field private final useWrongZeroLengthConversion:Z


# direct methods
.method public constructor <init>([C)V
    .locals 1
    .param p1, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "password"
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    .line 21
    return-void
.end method

.method public constructor <init>([CZ)V
    .locals 3
    .param p1, "password"    # [C
    .param p2, "useWrongZeroLengthConversion"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "password",
            "useWrongZeroLengthConversion"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 34
    new-array p1, v0, [C

    .line 37
    :cond_0
    array-length v1, p1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/bouncycastle/jcajce/PKCS12Key;->password:[C

    .line 38
    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/PKCS12Key;->useWrongZeroLengthConversion:Z

    .line 40
    iget-object v1, p0, Lorg/bouncycastle/jcajce/PKCS12Key;->password:[C

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "PKCS12"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 80
    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/PKCS12Key;->useWrongZeroLengthConversion:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKCS12Key;->password:[C

    array-length v0, v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKCS12Key;->password:[C

    invoke-static {v0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, "PKCS12"

    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKCS12Key;->password:[C

    return-object v0
.end method
