.class public Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SABERPrivateKey.java"


# instance fields
.field private PublicKey:Lorg/bouncycastle/pqc/asn1/SABERPublicKey;

.field private hpk:[B

.field private s:[B

.field private version:I

.field private z:[B


# direct methods
.method public constructor <init>(I[B[B[B)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "z"    # [B
    .param p3, "s"    # [B
    .param p4, "hpk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "version",
            "z",
            "s",
            "hpk"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 37
    iput p1, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->version:I

    .line 38
    if-nez p1, :cond_0

    .line 42
    iput-object p2, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->z:[B

    .line 43
    iput-object p3, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->s:[B

    .line 44
    iput-object p4, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->hpk:[B

    .line 45
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unrecognized version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(I[B[B[BLorg/bouncycastle/pqc/asn1/SABERPublicKey;)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "z"    # [B
    .param p3, "s"    # [B
    .param p4, "hpk"    # [B
    .param p5, "publicKey"    # Lorg/bouncycastle/pqc/asn1/SABERPublicKey;
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
            "z",
            "s",
            "hpk",
            "publicKey"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 49
    iput p1, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->version:I

    .line 50
    if-nez p1, :cond_0

    .line 54
    iput-object p2, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->z:[B

    .line 55
    iput-object p3, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->s:[B

    .line 56
    iput-object p4, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->hpk:[B

    .line 57
    iput-object p5, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SABERPublicKey;

    .line 58
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unrecognized version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

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

    .line 62
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->version:I

    .line 64
    iget v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->version:I

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->z:[B

    .line 71
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->s:[B

    .line 73
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/SABERPublicKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/SABERPublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SABERPublicKey;

    .line 75
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->hpk:[B

    .line 76
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unrecognized version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;
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

    .line 119
    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;

    if-eqz v0, :cond_0

    .line 121
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;

    return-object v0

    .line 123
    :cond_0
    if-eqz p0, :cond_1

    .line 125
    new-instance v0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 128
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getHpk()[B
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->hpk:[B

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/pqc/asn1/SABERPublicKey;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SABERPublicKey;

    return-object v0
.end method

.method public getS()[B
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->s:[B

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->version:I

    return v0
.end method

.method public getZ()[B
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->z:[B

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 105
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 107
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->version:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 108
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->z:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 109
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->s:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 112
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->hpk:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 114
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
