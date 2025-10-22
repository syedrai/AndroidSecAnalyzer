.class public Lorg/bouncycastle/asn1/cms/Attributes;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Attributes.java"


# instance fields
.field private attributes:Lorg/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 1
    .param p1, "v"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 37
    new-instance v0, Lorg/bouncycastle/asn1/DLSet;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DLSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/Attributes;->attributes:Lorg/bouncycastle/asn1/ASN1Set;

    .line 38
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "set"    # Lorg/bouncycastle/asn1/ASN1Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/Attributes;->attributes:Lorg/bouncycastle/asn1/ASN1Set;

    .line 33
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attributes;
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

    .line 55
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/Attributes;

    if-eqz v0, :cond_0

    .line 57
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cms/Attributes;

    return-object v0

    .line 59
    :cond_0
    if-eqz p0, :cond_1

    .line 61
    new-instance v0, Lorg/bouncycastle/asn1/cms/Attributes;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/Attributes;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v0

    .line 64
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/Attributes;
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

    .line 71
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/Attributes;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attributes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAttributes()[Lorg/bouncycastle/asn1/cms/Attribute;
    .locals 3

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Attributes;->attributes:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/cms/Attribute;

    .line 78
    .local v0, "rv":[Lorg/bouncycastle/asn1/cms/Attribute;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 80
    iget-object v2, p0, Lorg/bouncycastle/asn1/cms/Attributes;->attributes:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v2

    aput-object v2, v0, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Attributes;->attributes:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method
