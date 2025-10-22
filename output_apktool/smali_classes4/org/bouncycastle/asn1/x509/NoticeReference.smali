.class public Lorg/bouncycastle/asn1/x509/NoticeReference;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "NoticeReference.java"


# instance fields
.field private noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private organization:Lorg/bouncycastle/asn1/x509/DisplayText;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 1
    .param p1, "organization"    # Ljava/lang/String;
    .param p2, "numbers"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "organization",
            "numbers"
        }
    .end annotation

    .line 73
    invoke-static {p2}, Lorg/bouncycastle/asn1/x509/NoticeReference;->convertVector(Ljava/util/Vector;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x509/NoticeReference;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 1
    .param p1, "organization"    # Ljava/lang/String;
    .param p2, "noticeNumbers"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "organization",
            "noticeNumbers"
        }
    .end annotation

    .line 86
    new-instance v0, Lorg/bouncycastle/asn1/x509/DisplayText;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/DisplayText;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/asn1/x509/NoticeReference;-><init>(Lorg/bouncycastle/asn1/x509/DisplayText;Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 87
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "as"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "as"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/DisplayText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DisplayText;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->organization:Lorg/bouncycastle/asn1/x509/DisplayText;

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 123
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 118
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad sequence size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/DisplayText;Lorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 1
    .param p1, "organization"    # Lorg/bouncycastle/asn1/x509/DisplayText;
    .param p2, "noticeNumbers"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "organization",
            "noticeNumbers"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->organization:Lorg/bouncycastle/asn1/x509/DisplayText;

    .line 100
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 101
    return-void
.end method

.method private static convertVector(Ljava/util/Vector;)Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 6
    .param p0, "numbers"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numbers"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 39
    .local v0, "av":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 40
    .local v1, "it":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 45
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Ljava/math/BigInteger;

    if-eqz v3, :cond_0

    .line 47
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    move-object v4, v2

    check-cast v4, Ljava/math/BigInteger;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    .local v3, "di":Lorg/bouncycastle/asn1/ASN1Integer;
    goto :goto_1

    .line 49
    .end local v3    # "di":Lorg/bouncycastle/asn1/ASN1Integer;
    :cond_0
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 51
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 58
    .restart local v3    # "di":Lorg/bouncycastle/asn1/ASN1Integer;
    :goto_1
    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 59
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "di":Lorg/bouncycastle/asn1/ASN1Integer;
    goto :goto_0

    .line 55
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 60
    .end local v2    # "o":Ljava/lang/Object;
    :cond_2
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/NoticeReference;
    .locals 2
    .param p0, "as"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "as"
        }
    .end annotation

    .line 128
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;

    if-eqz v0, :cond_0

    .line 130
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x509/NoticeReference;

    return-object v0

    .line 132
    :cond_0
    if-eqz p0, :cond_1

    .line 134
    new-instance v0, Lorg/bouncycastle/asn1/x509/NoticeReference;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/NoticeReference;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 137
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getNoticeNumbers()[Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 3

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Integer;

    .line 149
    .local v0, "tmp":[Lorg/bouncycastle/asn1/ASN1Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 151
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getOrganization()Lorg/bouncycastle/asn1/x509/DisplayText;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->organization:Lorg/bouncycastle/asn1/x509/DisplayText;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 164
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 165
    .local v0, "av":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->organization:Lorg/bouncycastle/asn1/x509/DisplayText;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 166
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 167
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
