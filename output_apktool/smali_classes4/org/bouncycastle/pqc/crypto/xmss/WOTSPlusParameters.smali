.class final Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;
.super Ljava/lang/Object;
.source "WOTSPlusParameters.java"


# instance fields
.field private final digestSize:I

.field private final len:I

.field private final len1:I

.field private final len2:I

.field private final oid:Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

.field private final treeDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final winternitzParameter:I


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 5
    .param p1, "treeDigest"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "treeDigest"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-eqz p1, :cond_1

    .line 52
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->treeDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 53
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/DigestUtil;->getDigest(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 54
    .local v0, "digest":Lorg/bouncycastle/crypto/Digest;
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->getDigestSize(Lorg/bouncycastle/crypto/Digest;)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->digestSize:I

    .line 55
    const/16 v1, 0x10

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->winternitzParameter:I

    .line 56
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->digestSize:I

    mul-int/lit8 v1, v1, 0x8

    int-to-double v1, v1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->winternitzParameter:I

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->log2(I)I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->len1:I

    .line 57
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->len1:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->winternitzParameter:I

    add-int/lit8 v2, v2, -0x1

    mul-int v1, v1, v2

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->log2(I)I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->winternitzParameter:I

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->log2(I)I

    move-result v2

    div-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->len2:I

    .line 58
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->len1:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->len2:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->len:I

    .line 59
    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->digestSize:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->winternitzParameter:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->len:I

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusOid;->lookup(Ljava/lang/String;III)Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusOid;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->oid:Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

    .line 60
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->oid:Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

    if-eqz v1, :cond_0

    .line 64
    return-void

    .line 62
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find OID for digest algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    .end local v0    # "digest":Lorg/bouncycastle/crypto/Digest;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "treeDigest == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected getLen()I
    .locals 1

    .line 103
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->len:I

    return v0
.end method

.method protected getLen1()I
    .locals 1

    .line 113
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->len1:I

    return v0
.end method

.method protected getLen2()I
    .locals 1

    .line 123
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->len2:I

    return v0
.end method

.method protected getOid()Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->oid:Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

    return-object v0
.end method

.method public getTreeDigest()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->treeDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method protected getTreeDigestSize()I
    .locals 1

    .line 83
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->digestSize:I

    return v0
.end method

.method protected getWinternitzParameter()I
    .locals 1

    .line 93
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->winternitzParameter:I

    return v0
.end method
