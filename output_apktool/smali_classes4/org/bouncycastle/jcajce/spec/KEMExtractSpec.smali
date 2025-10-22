.class public Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;
.super Ljava/lang/Object;
.source "KEMExtractSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final encapsulation:[B

.field private final keyAlgorithmName:Ljava/lang/String;

.field private final keySizeInBits:I

.field private final privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[BLjava/lang/String;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "encapsulation"    # [B
    .param p3, "keyAlgorithmName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "encapsulation",
            "keyAlgorithmName"
        }
    .end annotation

    .line 18
    const/16 v0, 0x100

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;-><init>(Ljava/security/PrivateKey;[BLjava/lang/String;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;[BLjava/lang/String;I)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "encapsulation"    # [B
    .param p3, "keyAlgorithmName"    # Ljava/lang/String;
    .param p4, "keySizeInBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "encapsulation",
            "keyAlgorithmName",
            "keySizeInBits"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->privateKey:Ljava/security/PrivateKey;

    .line 24
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->encapsulation:[B

    .line 25
    iput-object p3, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->keyAlgorithmName:Ljava/lang/String;

    .line 26
    iput p4, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->keySizeInBits:I

    .line 27
    return-void
.end method


# virtual methods
.method public getEncapsulation()[B
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->encapsulation:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getKeyAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->keyAlgorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 46
    iget v0, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->keySizeInBits:I

    return v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method
