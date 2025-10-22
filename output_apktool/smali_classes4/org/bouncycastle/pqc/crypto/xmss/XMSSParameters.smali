.class public final Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;
.super Ljava/lang/Object;
.source "XMSSParameters.java"


# static fields
.field private static final paramsLookupTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final height:I

.field private final k:I

.field private final oid:Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

.field private final treeDigest:Ljava/lang/String;

.field private final treeDigestOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final treeDigestSize:I

.field private final winternitzParameter:I

.field private final wotsPlusParams:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .local v0, "pMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v4, 0xa

    invoke-direct {v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const/4 v1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v5, 0x10

    invoke-direct {v2, v5, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const/4 v1, 0x3

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v6, 0x14

    invoke-direct {v2, v6, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const/4 v1, 0x4

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const/4 v1, 0x5

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v5, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const/4 v1, 0x6

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v6, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const/4 v1, 0x7

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const/16 v1, 0x8

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v5, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const/16 v1, 0x9

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v6, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const/16 v1, 0xb

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v5, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const/16 v1, 0xc

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v6, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->paramsLookupTable:Ljava/util/Map;

    .line 35
    .end local v0    # "pMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;>;"
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 4
    .param p1, "height"    # I
    .param p2, "treeDigestOID"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "height",
            "treeDigestOID"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 70
    if-eqz p2, :cond_0

    .line 75
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->height:I

    .line 76
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->determineMinK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->k:I

    .line 77
    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/xmss/DigestUtil;->getDigestName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->treeDigest:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->treeDigestOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 80
    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-direct {v0, p2}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->wotsPlusParams:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->wotsPlusParams:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->getTreeDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->treeDigestSize:I

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->wotsPlusParams:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->getWinternitzParameter()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->winternitzParameter:I

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->treeDigest:Ljava/lang/String;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->treeDigestSize:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->winternitzParameter:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->wotsPlusParams:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v3

    invoke-static {v0, v1, v2, v3, p1}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->lookup(Ljava/lang/String;IIII)Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->oid:Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

    .line 87
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "digest == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be >= 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "height"    # I
    .param p2, "treeDigest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "height",
            "treeDigest"
        }
    .end annotation

    .line 54
    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/DigestUtil;->getDigestOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 55
    return-void
.end method

.method private determineMinK()I
    .locals 2

    .line 91
    const/4 v0, 0x2

    .local v0, "k":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->height:I

    if-gt v0, v1, :cond_1

    .line 93
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->height:I

    sub-int/2addr v1, v0

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 95
    return v0

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "k":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "should never happen..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lookupByOID(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;
    .locals 2
    .param p0, "oid"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oid"
        }
    .end annotation

    .line 170
    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->paramsLookupTable:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 128
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->height:I

    return v0
.end method

.method getK()I
    .locals 1

    .line 165
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->k:I

    return v0
.end method

.method getLen()I
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->wotsPlusParams:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v0

    return v0
.end method

.method getOid()Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->oid:Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

    return-object v0
.end method

.method getTreeDigest()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->treeDigest:Ljava/lang/String;

    return-object v0
.end method

.method public getTreeDigestOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->treeDigestOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getTreeDigestSize()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->treeDigestSize:I

    return v0
.end method

.method getWOTSPlus()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;
    .locals 2

    .line 155
    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->wotsPlusParams:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;)V

    return-object v0
.end method

.method getWinternitzParameter()I
    .locals 1

    .line 150
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->winternitzParameter:I

    return v0
.end method
