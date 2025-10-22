.class public Lorg/bouncycastle/asn1/cmc/RevokeRequest;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "RevokeRequest.java"


# instance fields
.field private comment:Lorg/bouncycastle/asn1/ASN1UTF8String;

.field private invalidityDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private final name:Lorg/bouncycastle/asn1/x500/X500Name;

.field private passphrase:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final reason:Lorg/bouncycastle/asn1/x509/CRLReason;

.field private final serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;


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

    .line 57
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_3

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->name:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 64
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CRLReason;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLReason;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->reason:Lorg/bouncycastle/asn1/x509/CRLReason;

    .line 66
    const/4 v0, 0x3

    .line 67
    .local v0, "index":I
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_0

    .line 69
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->invalidityDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move v0, v1

    .line 71
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_1

    .line 73
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/bouncycastle/asn1/ASN1OctetString;

    move v0, v1

    .line 75
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v0, :cond_2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->comment:Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 79
    :cond_2
    return-void

    .line 60
    .end local v0    # "index":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect sequence size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/CRLReason;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1UTF8String;)V
    .locals 0
    .param p1, "name"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "serialNumber"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p3, "reason"    # Lorg/bouncycastle/asn1/x509/CRLReason;
    .param p4, "invalidityDate"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p5, "passphrase"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p6, "comment"    # Lorg/bouncycastle/asn1/ASN1UTF8String;
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
            "name",
            "serialNumber",
            "reason",
            "invalidityDate",
            "passphrase",
            "comment"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->name:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 49
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 50
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->reason:Lorg/bouncycastle/asn1/x509/CRLReason;

    .line 51
    iput-object p4, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->invalidityDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 52
    iput-object p5, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 53
    iput-object p6, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->comment:Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 54
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/RevokeRequest;
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

    .line 83
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;

    if-eqz v0, :cond_0

    .line 85
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;

    return-object v0

    .line 88
    :cond_0
    if-eqz p0, :cond_1

    .line 90
    new-instance v0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/RevokeRequest;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 93
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getComment()Lorg/bouncycastle/asn1/DERUTF8String;
    .locals 2

    .line 136
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->comment:Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->comment:Lorg/bouncycastle/asn1/ASN1UTF8String;

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->comment:Lorg/bouncycastle/asn1/ASN1UTF8String;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->comment:Lorg/bouncycastle/asn1/ASN1UTF8String;

    check-cast v0, Lorg/bouncycastle/asn1/DERUTF8String;

    .line 136
    :goto_1
    return-object v0
.end method

.method public getCommentUTF8()Lorg/bouncycastle/asn1/ASN1UTF8String;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->comment:Lorg/bouncycastle/asn1/ASN1UTF8String;

    return-object v0
.end method

.method public getInvalidityDate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->invalidityDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getName()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->name:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getPassPhrase()[B
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPassphrase()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getReason()Lorg/bouncycastle/asn1/x509/CRLReason;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->reason:Lorg/bouncycastle/asn1/x509/CRLReason;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public setComment(Lorg/bouncycastle/asn1/ASN1UTF8String;)V
    .locals 0
    .param p1, "comment"    # Lorg/bouncycastle/asn1/ASN1UTF8String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->comment:Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 149
    return-void
.end method

.method public setInvalidityDate(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)V
    .locals 0
    .param p1, "invalidityDate"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "invalidityDate"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->invalidityDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 119
    return-void
.end method

.method public setPassphrase(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0
    .param p1, "passphrase"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "passphrase"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 129
    return-void
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 162
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 164
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->name:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 165
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 166
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->reason:Lorg/bouncycastle/asn1/x509/CRLReason;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 168
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->invalidityDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->invalidityDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 172
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 176
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->comment:Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v1, :cond_2

    .line 178
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->comment:Lorg/bouncycastle/asn1/ASN1UTF8String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 181
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
