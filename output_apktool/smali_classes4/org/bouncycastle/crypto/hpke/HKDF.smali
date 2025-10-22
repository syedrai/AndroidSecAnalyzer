.class Lorg/bouncycastle/crypto/hpke/HKDF;
.super Ljava/lang/Object;
.source "HKDF.java"


# static fields
.field private static final versionLabel:Ljava/lang/String; = "HPKE-v1"


# instance fields
.field private final hashLength:I

.field private final kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;


# direct methods
.method constructor <init>(S)V
    .locals 2
    .param p1, "kdfId"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kdfId"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    packed-switch p1, :pswitch_data_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid kdf id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    .line 32
    .local v0, "hash":Lorg/bouncycastle/crypto/Digest;
    goto :goto_0

    .line 28
    .end local v0    # "hash":Lorg/bouncycastle/crypto/Digest;
    :pswitch_1
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    .line 29
    .restart local v0    # "hash":Lorg/bouncycastle/crypto/Digest;
    goto :goto_0

    .line 25
    .end local v0    # "hash":Lorg/bouncycastle/crypto/Digest;
    :pswitch_2
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    .line 26
    .restart local v0    # "hash":Lorg/bouncycastle/crypto/Digest;
    nop

    .line 36
    :goto_0
    new-instance v1, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    .line 37
    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->hashLength:I

    .line 38
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected Expand([B[BI)[B
    .locals 4
    .param p1, "prk"    # [B
    .param p2, "info"    # [B
    .param p3, "L"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "prk",
            "info",
            "L"
        }
    .end annotation

    .line 87
    const/high16 v0, 0x10000

    if-gt p3, v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/params/HKDFParameters;->skipExtractParameters([B[B)Lorg/bouncycastle/crypto/params/HKDFParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 94
    new-array v0, p3, [B

    .line 96
    .local v0, "rv":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generateBytes([BII)I

    .line 98
    return-object v0

    .line 89
    .end local v0    # "rv":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expand length cannot be larger than 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected Extract([B[B)[B
    .locals 1
    .param p1, "salt"    # [B
    .param p2, "ikm"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "salt",
            "ikm"
        }
    .end annotation

    .line 77
    if-nez p1, :cond_0

    .line 79
    iget v0, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->hashLength:I

    new-array p1, v0, [B

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->extractPRK([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected LabeledExpand([B[BLjava/lang/String;[BI)[B
    .locals 5
    .param p1, "prk"    # [B
    .param p2, "suiteID"    # [B
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "info"    # [B
    .param p5, "L"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "prk",
            "suiteID",
            "label",
            "info",
            "L"
        }
    .end annotation

    .line 60
    const/high16 v0, 0x10000

    if-gt p5, v0, :cond_0

    .line 64
    int-to-short v0, p5

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v0

    const-string v1, "HPKE-v1"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p2, v2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object v0

    .line 66
    .local v0, "labeledInfo":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-static {v0, p4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v2

    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/params/HKDFParameters;->skipExtractParameters([B[B)Lorg/bouncycastle/crypto/params/HKDFParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 68
    new-array v1, p5, [B

    .line 70
    .local v1, "rv":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generateBytes([BII)I

    .line 72
    return-object v1

    .line 62
    .end local v0    # "labeledInfo":[B
    .end local v1    # "rv":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expand length cannot be larger than 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected LabeledExtract([B[BLjava/lang/String;[B)[B
    .locals 2
    .param p1, "salt"    # [B
    .param p2, "suiteID"    # [B
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "ikm"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "salt",
            "suiteID",
            "label",
            "ikm"
        }
    .end annotation

    .line 48
    if-nez p1, :cond_0

    .line 50
    iget v0, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->hashLength:I

    new-array p1, v0, [B

    .line 53
    :cond_0
    const-string v0, "HPKE-v1"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, p2, v1, p4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object v0

    .line 55
    .local v0, "labeledIKM":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-virtual {v1, p1, v0}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->extractPRK([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method getHashSize()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->hashLength:I

    return v0
.end method
