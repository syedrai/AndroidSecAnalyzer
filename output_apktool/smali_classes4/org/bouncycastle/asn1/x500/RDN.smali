.class public Lorg/bouncycastle/asn1/x500/RDN;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "RDN.java"


# instance fields
.field private values:Lorg/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oid",
            "value"
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x500/RDN;-><init>(Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;)V

    .line 53
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "values"    # Lorg/bouncycastle/asn1/ASN1Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;)V
    .locals 1
    .param p1, "attrTAndV"    # Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrTAndV"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 57
    new-instance v0, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    .line 58
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;)V
    .locals 1
    .param p1, "aAndVs"    # [Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aAndVs"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 67
    new-instance v0, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSet;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    .line 68
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/RDN;
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

    .line 27
    instance-of v0, p0, Lorg/bouncycastle/asn1/x500/RDN;

    if-eqz v0, :cond_0

    .line 29
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x500/RDN;

    return-object v0

    .line 31
    :cond_0
    if-eqz p0, :cond_1

    .line 33
    new-instance v0, Lorg/bouncycastle/asn1/x500/RDN;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x500/RDN;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v0

    .line 36
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/RDN;
    .locals 2
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "declaredExplicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "declaredExplicit"
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/bouncycastle/asn1/x500/RDN;

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x500/RDN;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v0
.end method


# virtual methods
.method collectAttributeTypes([Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;I)I
    .locals 5
    .param p1, "oids"    # [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "oidsOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oids",
            "oidsOff"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    .line 110
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 112
    iget-object v2, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v2

    .line 113
    .local v2, "attr":Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    add-int v3, p2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    aput-object v4, p1, v3

    .line 110
    .end local v2    # "attr":Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method containsAttributeType(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 4
    .param p1, "attributeType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributeType"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    .line 121
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 123
    iget-object v2, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v2

    .line 124
    .local v2, "attr":Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    const/4 v3, 0x1

    return v3

    .line 121
    .end local v2    # "attr":Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .locals 2

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    return-object v0
.end method

.method public getTypesAndValues()[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .locals 3

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .line 99
    .local v0, "tmp":[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 101
    iget-object v2, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v2

    aput-object v2, v0, v1

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public isMultiValued()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public size()I
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method
