.class public Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CompleteRevocationRefs.java"


# instance fields
.field private crlOcspRefs:Lorg/bouncycastle/asn1/ASN1Sequence;


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

    .line 36
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 38
    .local v0, "seqEnum":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CrlOcspRef;

    goto :goto_0

    .line 42
    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;->crlOcspRefs:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 43
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/esf/CrlOcspRef;)V
    .locals 1
    .param p1, "crlOcspRefs"    # [Lorg/bouncycastle/asn1/esf/CrlOcspRef;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crlOcspRefs"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 47
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;->crlOcspRefs:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 48
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 23
    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;

    if-eqz v0, :cond_0

    .line 25
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;

    return-object v0

    .line 27
    :cond_0
    if-eqz p0, :cond_1

    .line 29
    new-instance v0, Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 32
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCrlOcspRefs()[Lorg/bouncycastle/asn1/esf/CrlOcspRef;
    .locals 3

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;->crlOcspRefs:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/esf/CrlOcspRef;

    .line 53
    .local v0, "result":[Lorg/bouncycastle/asn1/esf/CrlOcspRef;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 55
    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;->crlOcspRefs:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 56
    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 55
    invoke-static {v2}, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CrlOcspRef;

    move-result-object v2

    aput-object v2, v0, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "idx":I
    :cond_0
    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;->crlOcspRefs:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
