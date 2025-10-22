.class public Lorg/bouncycastle/asn1/est/CsrAttrs;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CsrAttrs.java"


# instance fields
.field private final attrOrOIDs:[Lorg/bouncycastle/asn1/est/AttrOrOID;


# direct methods
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

    .line 62
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/est/AttrOrOID;

    iput-object v0, p0, Lorg/bouncycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/bouncycastle/asn1/est/AttrOrOID;

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lorg/bouncycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/bouncycastle/asn1/est/AttrOrOID;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/est/AttrOrOID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/est/AttrOrOID;

    move-result-object v2

    aput-object v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/est/AttrOrOID;)V
    .locals 2
    .param p1, "attrOrOID"    # Lorg/bouncycastle/asn1/est/AttrOrOID;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrOrOID"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/est/AttrOrOID;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/bouncycastle/asn1/est/AttrOrOID;

    .line 51
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/est/AttrOrOID;)V
    .locals 1
    .param p1, "attrOrOIDs"    # [Lorg/bouncycastle/asn1/est/AttrOrOID;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrOrOIDs"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 57
    invoke-static {p1}, Lorg/bouncycastle/asn1/est/Utils;->clone([Lorg/bouncycastle/asn1/est/AttrOrOID;)[Lorg/bouncycastle/asn1/est/AttrOrOID;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/bouncycastle/asn1/est/AttrOrOID;

    .line 58
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/est/CsrAttrs;
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

    .line 22
    instance-of v0, p0, Lorg/bouncycastle/asn1/est/CsrAttrs;

    if-eqz v0, :cond_0

    .line 24
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/est/CsrAttrs;

    return-object v0

    .line 27
    :cond_0
    if-eqz p0, :cond_1

    .line 29
    new-instance v0, Lorg/bouncycastle/asn1/est/CsrAttrs;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/est/CsrAttrs;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 32
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/est/CsrAttrs;
    .locals 1
    .param p0, "obj"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "explicit"
        }
    .end annotation

    .line 39
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/est/CsrAttrs;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/est/CsrAttrs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAttrOrOIDs()[Lorg/bouncycastle/asn1/est/AttrOrOID;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/bouncycastle/asn1/est/AttrOrOID;

    invoke-static {v0}, Lorg/bouncycastle/asn1/est/Utils;->clone([Lorg/bouncycastle/asn1/est/AttrOrOID;)[Lorg/bouncycastle/asn1/est/AttrOrOID;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/bouncycastle/asn1/est/AttrOrOID;

    array-length v0, v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 83
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/bouncycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/bouncycastle/asn1/est/AttrOrOID;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
