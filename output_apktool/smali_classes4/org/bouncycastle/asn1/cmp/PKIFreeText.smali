.class public Lorg/bouncycastle/asn1/cmp/PKIFreeText;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PKIFreeText.java"


# instance fields
.field strings:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 50
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;-><init>(Lorg/bouncycastle/asn1/ASN1UTF8String;)V

    .line 51
    return-void
.end method

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

    .line 28
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 30
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attempt to insert non UTF8 STRING into PKIFreeText"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_1
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->strings:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1UTF8String;)V
    .locals 1
    .param p1, "p"    # Lorg/bouncycastle/asn1/ASN1UTF8String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 44
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->strings:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 45
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 4
    .param p1, "strs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strs"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 62
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    array-length v1, p1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 63
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 65
    new-instance v2, Lorg/bouncycastle/asn1/DERUTF8String;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->strings:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 68
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1UTF8String;)V
    .locals 1
    .param p1, "strs"    # [Lorg/bouncycastle/asn1/ASN1UTF8String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strs"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 56
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->strings:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 57
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIFreeText;
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

    .line 80
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    if-eqz v0, :cond_0

    .line 82
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    return-object v0

    .line 84
    :cond_0
    if-eqz p0, :cond_1

    .line 86
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 89
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmp/PKIFreeText;
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

    .line 74
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getStringAt(I)Lorg/bouncycastle/asn1/DERUTF8String;
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->getStringAtUTF8(I)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object v0

    .line 112
    .local v0, "stringAt":Lorg/bouncycastle/asn1/ASN1UTF8String;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_1
    :goto_0
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/DERUTF8String;

    .line 112
    :goto_1
    return-object v1
.end method

.method public getStringAtUTF8(I)Lorg/bouncycastle/asn1/ASN1UTF8String;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->strings:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1UTF8String;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->strings:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->strings:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
