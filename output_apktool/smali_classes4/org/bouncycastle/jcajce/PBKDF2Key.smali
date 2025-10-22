.class public Lorg/bouncycastle/jcajce/PBKDF2Key;
.super Ljava/lang/Object;
.source "PBKDF2Key.java"

# interfaces
.implements Lorg/bouncycastle/jcajce/PBKDFKey;


# instance fields
.field private final converter:Lorg/bouncycastle/crypto/CharToByteConverter;

.field private final password:[C


# direct methods
.method public constructor <init>([CLorg/bouncycastle/crypto/CharToByteConverter;)V
    .locals 1
    .param p1, "password"    # [C
    .param p2, "converter"    # Lorg/bouncycastle/crypto/CharToByteConverter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "password",
            "converter"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([C)[C

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF2Key;->password:[C

    .line 23
    iput-object p2, p0, Lorg/bouncycastle/jcajce/PBKDF2Key;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    .line 24
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "PBKDF2"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF2Key;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/PBKDF2Key;->password:[C

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/CharToByteConverter;->convert([C)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF2Key;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/CharToByteConverter;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF2Key;->password:[C

    return-object v0
.end method
