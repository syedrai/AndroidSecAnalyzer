.class public Lorg/bouncycastle/asn1/cmp/PKIMessage;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PKIMessage.java"


# instance fields
.field private final body:Lorg/bouncycastle/asn1/cmp/PKIBody;

.field private final extraCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private final header:Lorg/bouncycastle/asn1/cmp/PKIHeader;

.field private final protection:Lorg/bouncycastle/asn1/ASN1BitString;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 36
    .local v0, "en":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->header:Lorg/bouncycastle/asn1/cmp/PKIHeader;

    .line 37
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIBody;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "protection":Lorg/bouncycastle/asn1/ASN1BitString;
    const/4 v2, 0x0

    .line 49
    .local v2, "extraCerts":Lorg/bouncycastle/asn1/ASN1Sequence;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 53
    .local v3, "tObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 55
    invoke-static {v3, v5}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    goto :goto_1

    .line 59
    :cond_0
    invoke-static {v3, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 61
    .end local v3    # "tObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1
    goto :goto_0

    .line 63
    :cond_1
    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->protection:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 64
    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->extraCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 65
    return-void

    .line 43
    .end local v1    # "protection":Lorg/bouncycastle/asn1/ASN1BitString;
    .end local v2    # "extraCerts":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PKIMessage missing PKIBody structure"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;)V
    .locals 1
    .param p1, "header"    # Lorg/bouncycastle/asn1/cmp/PKIHeader;
    .param p2, "body"    # Lorg/bouncycastle/asn1/cmp/PKIBody;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "header",
            "body"
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;-><init>(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;Lorg/bouncycastle/asn1/ASN1BitString;[Lorg/bouncycastle/asn1/cmp/CMPCertificate;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;Lorg/bouncycastle/asn1/ASN1BitString;)V
    .locals 1
    .param p1, "header"    # Lorg/bouncycastle/asn1/cmp/PKIHeader;
    .param p2, "body"    # Lorg/bouncycastle/asn1/cmp/PKIBody;
    .param p3, "protection"    # Lorg/bouncycastle/asn1/ASN1BitString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "header",
            "body",
            "protection"
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;-><init>(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;Lorg/bouncycastle/asn1/ASN1BitString;[Lorg/bouncycastle/asn1/cmp/CMPCertificate;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;Lorg/bouncycastle/asn1/ASN1BitString;[Lorg/bouncycastle/asn1/cmp/CMPCertificate;)V
    .locals 1
    .param p1, "header"    # Lorg/bouncycastle/asn1/cmp/PKIHeader;
    .param p2, "body"    # Lorg/bouncycastle/asn1/cmp/PKIBody;
    .param p3, "protection"    # Lorg/bouncycastle/asn1/ASN1BitString;
    .param p4, "extraCerts"    # [Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "header",
            "body",
            "protection",
            "extraCerts"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->header:Lorg/bouncycastle/asn1/cmp/PKIHeader;

    .line 82
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    .line 83
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->protection:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 84
    if-eqz p4, :cond_0

    .line 86
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p4}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->extraCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->extraCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 92
    :goto_0
    return-void
.end method

.method private addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "v"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lorg/bouncycastle/asn1/ASN1Encodable;
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

    .line 182
    if-eqz p3, :cond_0

    .line 184
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 186
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIMessage;
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

    .line 111
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;

    if-eqz v0, :cond_0

    .line 113
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/PKIMessage;

    return-object v0

    .line 115
    :cond_0
    if-eqz p0, :cond_1

    .line 117
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 120
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getBody()Lorg/bouncycastle/asn1/cmp/PKIBody;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    return-object v0
.end method

.method public getExtraCerts()[Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 3

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->extraCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->extraCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    .line 147
    .local v0, "results":[Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 149
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->extraCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v2

    aput-object v2, v0, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->header:Lorg/bouncycastle/asn1/cmp/PKIHeader;

    return-object v0
.end method

.method public getProtection()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->protection:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 169
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 171
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->header:Lorg/bouncycastle/asn1/cmp/PKIHeader;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 172
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 174
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->protection:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 175
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->extraCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 177
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
