.class public Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "KyberPrivateKey.java"


# instance fields
.field private hpk:[B

.field private nonce:[B

.field private publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

.field private s:[B

.field private version:I


# direct methods
.method public constructor <init>(I[B[B[B)V
    .locals 6
    .param p1, "version"    # I
    .param p2, "s"    # [B
    .param p3, "hpk"    # [B
    .param p4, "nonce"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "version",
            "s",
            "hpk",
            "nonce"
        }
    .end annotation

    .line 48
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "version":I
    .end local p2    # "s":[B
    .end local p3    # "hpk":[B
    .end local p4    # "nonce":[B
    .local v1, "version":I
    .local v2, "s":[B
    .local v3, "hpk":[B
    .local v4, "nonce":[B
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;-><init>(I[B[B[BLorg/bouncycastle/pqc/asn1/KyberPublicKey;)V

    .line 49
    return-void
.end method

.method public constructor <init>(I[B[B[BLorg/bouncycastle/pqc/asn1/KyberPublicKey;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "s"    # [B
    .param p3, "hpk"    # [B
    .param p4, "nonce"    # [B
    .param p5, "publicKey"    # Lorg/bouncycastle/pqc/asn1/KyberPublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "version",
            "s",
            "hpk",
            "nonce",
            "publicKey"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->version:I

    .line 40
    iput-object p2, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->s:[B

    .line 41
    iput-object p5, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    .line 42
    iput-object p3, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->hpk:[B

    .line 43
    iput-object p4, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->nonce:[B

    .line 44
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->version:I

    .line 79
    iget v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->version:I

    if-nez v0, :cond_1

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->s:[B

    .line 86
    const/4 v0, 0x1

    .line 87
    .local v0, "skipPubKey":I
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 90
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/asn1/KyberPublicKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    .line 93
    :cond_0
    rsub-int/lit8 v1, v0, 0x3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->hpk:[B

    .line 95
    rsub-int/lit8 v1, v0, 0x4

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->nonce:[B

    .line 96
    return-void

    .line 81
    .end local v0    # "skipPubKey":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unrecognized version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;
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

    .line 117
    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;

    if-eqz v0, :cond_0

    .line 119
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;

    return-object v0

    .line 121
    :cond_0
    if-eqz p0, :cond_1

    .line 123
    new-instance v0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 126
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getHpk()[B
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->hpk:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getNonce()[B
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->nonce:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/pqc/asn1/KyberPublicKey;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    return-object v0
.end method

.method public getS()[B
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->s:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->version:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 100
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 102
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->version:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 103
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->s:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 105
    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/KyberPublicKey;->getT()[B

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/asn1/KyberPublicKey;->getRho()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/asn1/KyberPublicKey;-><init>([B[B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 109
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->hpk:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 110
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->nonce:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 112
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
