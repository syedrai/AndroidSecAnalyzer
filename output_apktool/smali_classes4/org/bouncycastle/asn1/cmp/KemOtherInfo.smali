.class public Lorg/bouncycastle/asn1/cmp/KemOtherInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "KemOtherInfo.java"


# static fields
.field private static final DEFAULT_staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;


# instance fields
.field private final ct:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final len:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

.field private final transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    const-string v1, "CMP-KEM"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->DEFAULT_staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;JLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 7
    .param p1, "transactionID"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p2, "senderNonce"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p3, "recipNonce"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p4, "len"    # J
    .param p6, "mac"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p7, "ct"    # Lorg/bouncycastle/asn1/ASN1OctetString;
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
            "transactionID",
            "senderNonce",
            "recipNonce",
            "len",
            "mac",
            "ct"
        }
    .end annotation

    .line 68
    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v4, p4, p5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "transactionID":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local p2    # "senderNonce":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local p3    # "recipNonce":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local p6    # "mac":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local p7    # "ct":Lorg/bouncycastle/asn1/ASN1OctetString;
    .local v1, "transactionID":Lorg/bouncycastle/asn1/ASN1OctetString;
    .local v2, "senderNonce":Lorg/bouncycastle/asn1/ASN1OctetString;
    .local v3, "recipNonce":Lorg/bouncycastle/asn1/ASN1OctetString;
    .local v5, "mac":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v6, "ct":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1
    .param p1, "transactionID"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p2, "senderNonce"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p3, "recipNonce"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p4, "len"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p5, "mac"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p6, "ct"    # Lorg/bouncycastle/asn1/ASN1OctetString;
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
            "transactionID",
            "senderNonce",
            "recipNonce",
            "len",
            "mac",
            "ct"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 51
    sget-object v0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->DEFAULT_staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 52
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 53
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 54
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 55
    iput-object p4, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->len:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 56
    iput-object p5, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 57
    iput-object p6, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->ct:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 58
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

    .line 72
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_6

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x7

    if-gt v0, v2, :cond_6

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "seqPos":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 81
    sget-object v2, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->DEFAULT_staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 86
    const/4 v2, 0x0

    .line 87
    .local v2, "transactionID":Lorg/bouncycastle/asn1/ASN1OctetString;
    const/4 v3, 0x0

    .line 88
    .local v3, "senderNonce":Lorg/bouncycastle/asn1/ASN1OctetString;
    const/4 v4, 0x0

    .line 90
    .local v4, "recipNonce":Lorg/bouncycastle/asn1/ASN1OctetString;
    const/4 v5, 0x1

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->tryGetTagged(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v6

    .line 92
    .local v6, "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    if-eqz v6, :cond_0

    .line 94
    const/4 v7, 0x0

    invoke-static {v6, v7, v5, v1}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    .line 95
    .local v7, "_transactionID":Lorg/bouncycastle/asn1/ASN1Primitive;
    if-eqz v7, :cond_0

    .line 97
    move-object v2, v7

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 98
    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->tryGetTagged(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v6

    .line 102
    .end local v7    # "_transactionID":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_0
    if-eqz v6, :cond_1

    .line 104
    invoke-static {v6, v5, v5, v1}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    .line 105
    .local v7, "_senderNonce":Lorg/bouncycastle/asn1/ASN1Primitive;
    if-eqz v7, :cond_1

    .line 107
    move-object v3, v7

    check-cast v3, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 108
    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->tryGetTagged(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v6

    .line 112
    .end local v7    # "_senderNonce":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    if-eqz v6, :cond_2

    .line 114
    const/4 v7, 0x2

    invoke-static {v6, v7, v5, v1}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 115
    .local v1, "_recipNonce":Lorg/bouncycastle/asn1/ASN1Primitive;
    if-eqz v1, :cond_2

    .line 117
    move-object v4, v1

    check-cast v4, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 118
    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->tryGetTagged(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v6

    .line 122
    .end local v1    # "_recipNonce":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_2
    if-nez v6, :cond_4

    .line 127
    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 128
    iput-object v3, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 129
    iput-object v4, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 131
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->len:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 132
    add-int/2addr v0, v5

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 133
    add-int/2addr v0, v5

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->ct:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 135
    add-int/2addr v0, v5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 139
    return-void

    .line 137
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "unexpected data at end of sequence"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unknown tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    .end local v2    # "transactionID":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v3    # "senderNonce":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v4    # "recipNonce":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v6    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->DEFAULT_staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "staticString field should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    .end local v0    # "seqPos":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence size should be between 4 and 7 inclusive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p0, "v"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .param p1, "tagNo"    # I
    .param p2, "obj"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "tagNo",
            "obj"
        }
    .end annotation

    .line 218
    if-eqz p2, :cond_0

    .line 220
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 222
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/KemOtherInfo;
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

    .line 143
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;

    if-eqz v0, :cond_0

    .line 145
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;

    return-object v0

    .line 148
    :cond_0
    if-eqz p0, :cond_1

    .line 150
    new-instance v0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static tryGetTagged(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 2
    .param p0, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .param p1, "seqPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seq",
            "seqPos"
        }
    .end annotation

    .line 226
    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 227
    .local v0, "element":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public getCt()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->ct:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getLen()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->len:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getMac()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getRecipNonce()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getSenderNonce()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getTransactionID()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 203
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 205
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 206
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 207
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 208
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 209
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->len:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 210
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 211
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->ct:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 213
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
