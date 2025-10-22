.class public Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "FalconPrivateKey.java"


# instance fields
.field private F:[B

.field private f:[B

.field private g:[B

.field private publicKey:Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

.field private version:I


# direct methods
.method public constructor <init>(I[B[B[B)V
    .locals 6
    .param p1, "version"    # I
    .param p2, "f"    # [B
    .param p3, "g"    # [B
    .param p4, "f1"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "version",
            "f",
            "g",
            "f1"
        }
    .end annotation

    .line 47
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "version":I
    .end local p2    # "f":[B
    .end local p3    # "g":[B
    .end local p4    # "f1":[B
    .local v1, "version":I
    .local v2, "f":[B
    .local v3, "g":[B
    .local v4, "f1":[B
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;-><init>(I[B[B[BLorg/bouncycastle/pqc/asn1/FalconPublicKey;)V

    .line 48
    return-void
.end method

.method public constructor <init>(I[B[B[BLorg/bouncycastle/pqc/asn1/FalconPublicKey;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "f"    # [B
    .param p3, "g"    # [B
    .param p4, "f1"    # [B
    .param p5, "publicKey"    # Lorg/bouncycastle/pqc/asn1/FalconPublicKey;
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
            "f",
            "g",
            "f1",
            "publicKey"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    iput p1, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->version:I

    .line 39
    iput-object p2, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->f:[B

    .line 40
    iput-object p3, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->g:[B

    .line 41
    iput-object p4, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->F:[B

    .line 42
    iput-object p5, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

    .line 43
    return-void
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

    .line 76
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->version:I

    .line 78
    iget v0, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->version:I

    if-nez v0, :cond_1

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->f:[B

    .line 85
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->g:[B

    .line 87
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->F:[B

    .line 89
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 91
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/FalconPublicKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

    .line 93
    :cond_0
    return-void

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unrecognized version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;
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

    .line 115
    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;

    if-eqz v0, :cond_0

    .line 117
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;

    return-object v0

    .line 119
    :cond_0
    if-eqz p0, :cond_1

    .line 121
    new-instance v0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 124
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getF()[B
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->F:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getG()[B
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/pqc/asn1/FalconPublicKey;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->version:I

    return v0
.end method

.method public getf()[B
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 97
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 99
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->version:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 100
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->f:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 101
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->g:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 102
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->F:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 105
    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/FalconPublicKey;->getH()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/asn1/FalconPublicKey;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 110
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
