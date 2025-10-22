.class public Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SPHINCSPLUSPrivateKey.java"


# instance fields
.field private PublicKey:Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

.field private skprf:[B

.field private skseed:[B

.field private version:I


# direct methods
.method public constructor <init>(I[B[B)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "skseed"    # [B
    .param p3, "skprf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "version",
            "skseed",
            "skprf"
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;-><init>(I[B[BLorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;)V

    .line 58
    return-void
.end method

.method public constructor <init>(I[B[BLorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "skseed"    # [B
    .param p3, "skprf"    # [B
    .param p4, "publicKey"    # Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "version",
            "skseed",
            "skprf",
            "publicKey"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 62
    iput p1, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->version:I

    .line 63
    iput-object p2, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skseed:[B

    .line 64
    iput-object p3, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skprf:[B

    .line 65
    iput-object p4, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
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

    .line 72
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->version:I

    .line 74
    iget v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->version:I

    if-nez v0, :cond_1

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skseed:[B

    .line 81
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skprf:[B

    .line 83
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 85
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    .line 87
    :cond_0
    return-void

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unrecognized version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;
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

    .line 107
    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;

    if-eqz v0, :cond_0

    .line 109
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;

    return-object v0

    .line 111
    :cond_0
    if-eqz p0, :cond_1

    .line 113
    new-instance v0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 116
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getPublicKey()Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    return-object v0
.end method

.method public getSkprf()[B
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skprf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSkseed()[B
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skseed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 37
    iget v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->version:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 91
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 93
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->version:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 94
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skseed:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 95
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skprf:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 98
    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->getPkseed()[B

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->getPkroot()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;-><init>([B[B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 103
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
