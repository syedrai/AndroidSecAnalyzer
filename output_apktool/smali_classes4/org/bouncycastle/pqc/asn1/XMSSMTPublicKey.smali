.class public Lorg/bouncycastle/pqc/asn1/XMSSMTPublicKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "XMSSMTPublicKey.java"


# instance fields
.field private final publicSeed:[B

.field private final root:[B


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPublicKey;->publicSeed:[B

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPublicKey;->root:[B

    .line 43
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown version of sequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B[B)V
    .locals 1
    .param p1, "publicSeed"    # [B
    .param p2, "root"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicSeed",
            "root"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 30
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPublicKey;->publicSeed:[B

    .line 31
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPublicKey;->root:[B

    .line 32
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/XMSSMTPublicKey;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 47
    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPublicKey;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/asn1/XMSSMTPublicKey;

    return-object v0

    .line 51
    :cond_0
    if-eqz p0, :cond_1

    .line 53
    new-instance v0, Lorg/bouncycastle/pqc/asn1/XMSSMTPublicKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/asn1/XMSSMTPublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 56
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getPublicSeed()[B
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPublicKey;->publicSeed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPublicKey;->root:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 71
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 73
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 75
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPublicKey;->publicSeed:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 76
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPublicKey;->root:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 78
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
