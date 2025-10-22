.class public abstract Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;
.super Ljava/lang/Object;
.source "AbstractX500NameStyle.java"

# interfaces
.implements Lorg/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calcHashCode(Lorg/bouncycastle/asn1/ASN1Encodable;)I
    .locals 2
    .param p1, "enc"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enc"
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->canonicalString(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public static copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4
    .param p0, "paramsMap"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramsMap"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 35
    .local v0, "newTable":Ljava/util/Hashtable;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 36
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 39
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .end local v2    # "key":Ljava/lang/Object;
    goto :goto_0

    .line 42
    :cond_0
    return-object v0
.end method

.method private foundMatch(ZLorg/bouncycastle/asn1/x500/RDN;[Lorg/bouncycastle/asn1/x500/RDN;)Z
    .locals 4
    .param p1, "reverse"    # Z
    .param p2, "rdn"    # Lorg/bouncycastle/asn1/x500/RDN;
    .param p3, "possRDNs"    # [Lorg/bouncycastle/asn1/x500/RDN;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reverse",
            "rdn",
            "possRDNs"
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 167
    array-length v2, p3

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 169
    aget-object v3, p3, v2

    if-eqz v3, :cond_0

    aget-object v3, p3, v2

    invoke-virtual {p0, p2, v3}, Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->rdnAreEqual(Lorg/bouncycastle/asn1/x500/RDN;Lorg/bouncycastle/asn1/x500/RDN;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    aput-object v0, p3, v2

    .line 172
    return v1

    .line 167
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_1
    goto :goto_2

    .line 178
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, p3

    if-eq v2, v3, :cond_4

    .line 180
    aget-object v3, p3, v2

    if-eqz v3, :cond_3

    aget-object v3, p3, v2

    invoke-virtual {p0, p2, v3}, Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->rdnAreEqual(Lorg/bouncycastle/asn1/x500/RDN;Lorg/bouncycastle/asn1/x500/RDN;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 182
    aput-object v0, p3, v2

    .line 183
    return v1

    .line 178
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 188
    .end local v2    # "i":I
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public areEqual(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x500/X500Name;)Z
    .locals 9
    .param p1, "name1"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "name2"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name1",
            "name2"
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->size()I

    move-result v0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x500/X500Name;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 136
    return v2

    .line 139
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    .line 140
    .local v0, "rdns1":[Lorg/bouncycastle/asn1/x500/RDN;
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v1

    .line 142
    .local v1, "rdns2":[Lorg/bouncycastle/asn1/x500/RDN;
    const/4 v3, 0x0

    .line 144
    .local v3, "reverse":Z
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v4

    .line 145
    .local v4, "first1":Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    aget-object v5, v1, v2

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v5

    .line 147
    .local v5, "first2":Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 149
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v7

    xor-int/2addr v7, v6

    move v3, v7

    .line 152
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v0

    if-eq v7, v8, :cond_3

    .line 154
    aget-object v8, v0, v7

    invoke-direct {p0, v3, v8, v1}, Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->foundMatch(ZLorg/bouncycastle/asn1/x500/RDN;[Lorg/bouncycastle/asn1/x500/RDN;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 156
    return v2

    .line 152
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 160
    .end local v7    # "i":I
    :cond_3
    return v6
.end method

.method public calculateHashCode(Lorg/bouncycastle/asn1/x500/X500Name;)I
    .locals 6
    .param p1, "name"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "hashCodeValue":I
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v1

    .line 57
    .local v1, "rdns":[Lorg/bouncycastle/asn1/x500/RDN;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_2

    .line 59
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    .line 63
    .local v3, "atv":[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v3

    if-eq v4, v5, :cond_0

    .line 65
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v5

    xor-int/2addr v0, v5

    .line 66
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->calcHashCode(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v5

    xor-int/2addr v0, v5

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 68
    .end local v3    # "atv":[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v4    # "j":I
    :cond_0
    goto :goto_2

    .line 71
    :cond_1
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    .line 72
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->calcHashCode(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v3

    xor-int/2addr v0, v3

    .line 57
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method protected encodeStringValue(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;
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

    .line 129
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected rdnAreEqual(Lorg/bouncycastle/asn1/x500/RDN;Lorg/bouncycastle/asn1/x500/RDN;)Z
    .locals 1
    .param p1, "rdn1"    # Lorg/bouncycastle/asn1/x500/RDN;
    .param p2, "rdn2"    # Lorg/bouncycastle/asn1/x500/RDN;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rdn1",
            "rdn2"
        }
    .end annotation

    .line 193
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->rDNAreEqual(Lorg/bouncycastle/asn1/x500/RDN;Lorg/bouncycastle/asn1/x500/RDN;)Z

    move-result v0

    return v0
.end method

.method public stringToValue(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 5
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;
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

    .line 96
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_0

    .line 100
    :try_start_0
    invoke-static {p2, v1}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->valueFromHexString(Ljava/lang/String;I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t recode value for oid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_1

    .line 110
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 113
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->encodeStringValue(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method
