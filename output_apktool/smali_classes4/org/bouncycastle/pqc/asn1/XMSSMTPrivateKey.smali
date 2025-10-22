.class public Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "XMSSMTPrivateKey.java"


# instance fields
.field private final bdsState:[B

.field private final index:J

.field private final maxIndex:J

.field private final publicSeed:[B

.field private final root:[B

.field private final secretKeyPRF:[B

.field private final secretKeySeed:[B

.field private final version:I


# direct methods
.method public constructor <init>(J[B[B[B[B[B)V
    .locals 2
    .param p1, "index"    # J
    .param p3, "secretKeySeed"    # [B
    .param p4, "secretKeyPRF"    # [B
    .param p5, "publicSeed"    # [B
    .param p6, "root"    # [B
    .param p7, "bdsState"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "secretKeySeed",
            "secretKeyPRF",
            "publicSeed",
            "root",
            "bdsState"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->version:I

    .line 48
    iput-wide p1, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->index:J

    .line 49
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->secretKeySeed:[B

    .line 50
    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->secretKeyPRF:[B

    .line 51
    invoke-static {p5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->publicSeed:[B

    .line 52
    invoke-static {p6}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->root:[B

    .line 53
    invoke-static {p7}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->bdsState:[B

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->maxIndex:J

    .line 55
    return-void
.end method

.method public constructor <init>(J[B[B[B[B[BJ)V
    .locals 1
    .param p1, "index"    # J
    .param p3, "secretKeySeed"    # [B
    .param p4, "secretKeyPRF"    # [B
    .param p5, "publicSeed"    # [B
    .param p6, "root"    # [B
    .param p7, "bdsState"    # [B
    .param p8, "maxIndex"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "secretKeySeed",
            "secretKeyPRF",
            "publicSeed",
            "root",
            "bdsState",
            "maxIndex"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->version:I

    .line 60
    iput-wide p1, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->index:J

    .line 61
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->secretKeySeed:[B

    .line 62
    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->secretKeyPRF:[B

    .line 63
    invoke-static {p5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->publicSeed:[B

    .line 64
    invoke-static {p6}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->root:[B

    .line 65
    invoke-static {p7}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->bdsState:[B

    .line 66
    iput-wide p8, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->maxIndex:J

    .line 67
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 9
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    .line 72
    .local v1, "v":Lorg/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unknown version of sequence"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->version:I

    .line 78
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ne v2, v4, :cond_2

    goto :goto_1

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "key sequence wrong size"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_3
    :goto_1
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 85
    .local v2, "keySeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Integer;->longValueExact()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->index:J

    .line 86
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->secretKeySeed:[B

    .line 87
    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->secretKeyPRF:[B

    .line 88
    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->publicSeed:[B

    .line 89
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->root:[B

    .line 91
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    const/4 v7, 0x6

    const/4 v8, 0x5

    if-ne v6, v7, :cond_5

    .line 93
    invoke-virtual {v2, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v6

    .line 94
    .local v6, "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    if-nez v7, :cond_4

    .line 98
    invoke-static {v6, v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->longValueExact()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->maxIndex:J

    .line 99
    .end local v6    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    goto :goto_2

    .line 96
    .restart local v6    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unknown tag in XMSSPrivateKey"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    .end local v6    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_5
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v8, :cond_7

    .line 102
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->maxIndex:J

    .line 109
    :goto_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 111
    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/DEROctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->bdsState:[B

    goto :goto_3

    .line 115
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->bdsState:[B

    .line 117
    :goto_3
    return-void

    .line 106
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "keySeq should be 5 or 6 in length"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;
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

    .line 121
    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;

    if-eqz v0, :cond_0

    .line 123
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;

    return-object v0

    .line 125
    :cond_0
    if-eqz p0, :cond_1

    .line 127
    new-instance v0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 130
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getBdsState()[B
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->bdsState:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getIndex()J
    .locals 2

    .line 140
    iget-wide v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->index:J

    return-wide v0
.end method

.method public getMaxIndex()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->maxIndex:J

    return-wide v0
.end method

.method public getPublicSeed()[B
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->publicSeed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->root:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSecretKeyPRF()[B
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->secretKeyPRF:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSecretKeySeed()[B
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->secretKeySeed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 135
    iget v0, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->version:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 8

    .line 175
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 177
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-wide v1, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->maxIndex:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 179
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v5, 0x1

    invoke-direct {v1, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 183
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 186
    :goto_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 188
    .local v1, "vK":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-wide v5, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->index:J

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 189
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v5, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->secretKeySeed:[B

    invoke-direct {v2, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 190
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v5, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->secretKeyPRF:[B

    invoke-direct {v2, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 191
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v5, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->publicSeed:[B

    invoke-direct {v2, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 192
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v5, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->root:[B

    invoke-direct {v2, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 193
    iget-wide v5, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->maxIndex:J

    const/4 v2, 0x0

    cmp-long v7, v5, v3

    if-ltz v7, :cond_1

    .line 195
    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-wide v5, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->maxIndex:J

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v3, v2, v2, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 198
    :cond_1
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 199
    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v5, p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->bdsState:[B

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v5, 0x1

    invoke-direct {v3, v5, v2, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 201
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v2
.end method
