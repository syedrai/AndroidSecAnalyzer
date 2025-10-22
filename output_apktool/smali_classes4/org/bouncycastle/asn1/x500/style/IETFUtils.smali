.class public Lorg/bouncycastle/asn1/x500/style/IETFUtils;
.super Ljava/lang/Object;
.source "IETFUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addMultiValuedRDN(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/x500/X500NameBuilder;Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;)V
    .locals 5
    .param p0, "style"    # Lorg/bouncycastle/asn1/x500/X500NameStyle;
    .param p1, "builder"    # Lorg/bouncycastle/asn1/x500/X500NameBuilder;
    .param p2, "tokenizer"    # Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "style",
            "builder",
            "tokenizer"
        }
    .end annotation

    .line 161
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->addRDN(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/x500/X500NameBuilder;Ljava/lang/String;)V

    .line 170
    return-void

    .line 173
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 174
    .local v1, "oids":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 178
    .local v2, "values":Ljava/util/Vector;
    :cond_1
    invoke-static {p0, v1, v2, v0}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->collectAttributeTypeAndValue(Lorg/bouncycastle/asn1/x500/X500NameStyle;Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 181
    if-nez v0, :cond_1

    .line 183
    invoke-static {v1}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->toOIDArray(Ljava/util/Vector;)[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->toValueArray(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[Ljava/lang/String;)Lorg/bouncycastle/asn1/x500/X500NameBuilder;

    .line 184
    return-void

    .line 164
    .end local v1    # "oids":Ljava/util/Vector;
    .end local v2    # "values":Ljava/util/Vector;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "badly formatted directory string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static addRDN(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/x500/X500NameBuilder;Ljava/lang/String;)V
    .locals 5
    .param p0, "style"    # Lorg/bouncycastle/asn1/x500/X500NameStyle;
    .param p1, "builder"    # Lorg/bouncycastle/asn1/x500/X500NameBuilder;
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "style",
            "builder",
            "token"
        }
    .end annotation

    .line 188
    new-instance v0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;

    const/16 v1, 0x3d

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 190
    .local v0, "tokenizer":Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->nextToken(Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "typeToken":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->nextToken(Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "valueToken":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 194
    .local v3, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p1, v3, v4}, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->addRDN(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/x500/X500NameBuilder;

    .line 197
    return-void
.end method

.method private static addRDNs(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/x500/X500NameBuilder;Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;)V
    .locals 3
    .param p0, "style"    # Lorg/bouncycastle/asn1/x500/X500NameStyle;
    .param p1, "builder"    # Lorg/bouncycastle/asn1/x500/X500NameBuilder;
    .param p2, "tokenizer"    # Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "style",
            "builder",
            "tokenizer"
        }
    .end annotation

    .line 146
    nop

    :goto_0
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "token":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 148
    const/16 v0, 0x2b

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 150
    new-instance v2, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    invoke-static {p0, p1, v2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->addMultiValuedRDN(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/x500/X500NameBuilder;Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {p0, p1, v1}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->addRDN(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/x500/X500NameBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    return-void
.end method

.method public static appendRDN(Ljava/lang/StringBuffer;Lorg/bouncycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V
    .locals 4
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "rdn"    # Lorg/bouncycastle/asn1/x500/RDN;
    .param p2, "oidSymbols"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "rdn",
            "oidSymbols"
        }
    .end annotation

    .line 319
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    .line 322
    .local v0, "atv":[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v1, 0x1

    .line 324
    .local v1, "firstAtv":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_1

    .line 326
    if-eqz v1, :cond_0

    .line 328
    const/4 v1, 0x0

    goto :goto_1

    .line 332
    :cond_0
    const/16 v3, 0x2b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 335
    :goto_1
    aget-object v3, v0, v2

    invoke-static {p0, v3, p2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->appendTypeAndValue(Ljava/lang/StringBuffer;Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    .line 324
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "atv":[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v1    # "firstAtv":Z
    .end local v2    # "j":I
    :cond_1
    goto :goto_2

    .line 340
    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 342
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->appendTypeAndValue(Ljava/lang/StringBuffer;Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    .line 345
    :cond_3
    :goto_2
    return-void
.end method

.method public static appendTypeAndValue(Ljava/lang/StringBuffer;Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V
    .locals 2
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "typeAndValue"    # Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .param p2, "oidSymbols"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "typeAndValue",
            "oidSymbols"
        }
    .end annotation

    .line 352
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 354
    .local v0, "sym":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    :goto_0
    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 365
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    return-void
.end method

.method private static atvAreEqual(Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z
    .locals 7
    .param p0, "atv1"    # Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .param p1, "atv2"    # Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "atv1",
            "atv2"
        }
    .end annotation

    .line 561
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 563
    return v0

    .line 566
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 571
    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 572
    .local v2, "o1":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 574
    .local v3, "o2":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 576
    return v1

    .line 579
    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->canonicalString(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, "v1":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->canonicalString(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v5

    .line 582
    .local v5, "v2":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 584
    return v1

    .line 587
    :cond_3
    return v0

    .line 568
    .end local v2    # "o1":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v3    # "o2":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "v1":Ljava/lang/String;
    .end local v5    # "v2":Ljava/lang/String;
    :cond_4
    :goto_0
    return v1
.end method

.method public static canonicalString(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 492
    invoke-static {p0}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 455
    invoke-static {p0}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->decodeObject(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 456
    .local v0, "obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1String;

    if-eqz v1, :cond_0

    .line 458
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object p0

    .line 462
    .end local v0    # "obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 464
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 465
    .local v0, "length":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 467
    return-object p0

    .line 470
    :cond_1
    const/4 v1, 0x0

    .local v1, "start":I
    add-int/lit8 v2, v0, -0x1

    .line 471
    .local v2, "last":I
    :goto_0
    const/16 v3, 0x20

    const/16 v4, 0x5c

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_2

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_2

    .line 473
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 476
    :cond_2
    move v5, v2

    .local v5, "end":I
    add-int/lit8 v6, v1, 0x1

    .line 477
    .local v6, "first":I
    :goto_1
    if-le v5, v6, :cond_3

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v4, :cond_3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v3, :cond_3

    .line 479
    add-int/lit8 v5, v5, -0x2

    goto :goto_1

    .line 482
    :cond_3
    if-gtz v1, :cond_4

    if-ge v5, v2, :cond_5

    .line 484
    :cond_4
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 487
    :cond_5
    invoke-static {p0}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static collectAttributeTypeAndValue(Lorg/bouncycastle/asn1/x500/X500NameStyle;Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 5
    .param p0, "style"    # Lorg/bouncycastle/asn1/x500/X500NameStyle;
    .param p1, "oids"    # Ljava/util/Vector;
    .param p2, "values"    # Ljava/util/Vector;
    .param p3, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "style",
            "oids",
            "values",
            "token"
        }
    .end annotation

    .line 201
    new-instance v0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;

    const/16 v1, 0x3d

    invoke-direct {v0, p3, v1}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 203
    .local v0, "tokenizer":Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->nextToken(Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "typeToken":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->nextToken(Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "valueToken":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 207
    .local v3, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method private static convertHex(C)I
    .locals 1
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 121
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 123
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 125
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 127
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 129
    :cond_1
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "lookUp"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "lookUp"
        }
    .end annotation

    .line 277
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "OID."

    move-object v0, p0

    .end local p0    # "name":Ljava/lang/String;
    .local v0, "name":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 279
    new-instance p0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 282
    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->tryFromID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    .line 283
    .local p0, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz p0, :cond_1

    .line 285
    return-object p0

    .line 288
    :cond_1
    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object p0, v1

    check-cast p0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 289
    if-eqz p0, :cond_2

    .line 291
    return-object p0

    .line 294
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - passed to distinguished name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodeObject(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5
    .param p0, "oValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oValue"
        }
    .end annotation

    .line 499
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;II)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 501
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown encoding in name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static findAttrNamesForOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Hashtable;)[Ljava/lang/String;
    .locals 5
    .param p0, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p1, "lookup"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oid",
            "lookup"
        }
    .end annotation

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_1
    new-array v1, v0, [Ljava/lang/String;

    .line 261
    .local v1, "aliases":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 263
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "en":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 265
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 266
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 268
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "count":I
    .local v4, "count":I
    aput-object v3, v1, v0

    move v0, v4

    .line 270
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "count":I
    .restart local v0    # "count":I
    :cond_2
    goto :goto_1

    .line 272
    .end local v2    # "en":Ljava/util/Enumeration;
    :cond_3
    return-object v1
.end method

.method private static isHexDigit(C)Z
    .locals 1
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 116
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static nextToken(Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;
    .locals 3
    .param p0, "tokenizer"    # Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .param p1, "expectMoreTokens"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenizer",
            "expectMoreTokens"
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 220
    return-object v0

    .line 218
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "badly formatted directory string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static rDNAreEqual(Lorg/bouncycastle/asn1/x500/RDN;Lorg/bouncycastle/asn1/x500/RDN;)Z
    .locals 6
    .param p0, "rdn1"    # Lorg/bouncycastle/asn1/x500/RDN;
    .param p1, "rdn2"    # Lorg/bouncycastle/asn1/x500/RDN;
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

    .line 535
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x500/RDN;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/RDN;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 537
    return v2

    .line 540
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    .line 541
    .local v0, "atvs1":[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v1

    .line 543
    .local v1, "atvs2":[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    array-length v3, v0

    array-length v4, v1

    if-eq v3, v4, :cond_1

    .line 545
    return v2

    .line 548
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-eq v3, v4, :cond_3

    .line 550
    aget-object v4, v0, v3

    aget-object v5, v1, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->atvAreEqual(Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 552
    return v2

    .line 548
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 556
    .end local v3    # "i":I
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public static rDNsFromString(Ljava/lang/String;Lorg/bouncycastle/asn1/x500/X500NameStyle;)[Lorg/bouncycastle/asn1/x500/RDN;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "x500Style"    # Lorg/bouncycastle/asn1/x500/X500NameStyle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "x500Style"
        }
    .end annotation

    .line 134
    new-instance v0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "tokenizer":Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;
    new-instance v1, Lorg/bouncycastle/asn1/x500/X500NameBuilder;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/x500/X500NameBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;)V

    .line 137
    .local v1, "builder":Lorg/bouncycastle/asn1/x500/X500NameBuilder;
    invoke-static {p1, v1, v0}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->addRDNs(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/x500/X500NameBuilder;Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;)V

    .line 140
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->build()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v2

    return-object v2
.end method

.method public static stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 510
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 512
    return-object p0

    .line 515
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 517
    .local v0, "res":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 518
    .local v1, "c1":C
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 520
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 522
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 523
    .local v3, "c2":C
    const/16 v4, 0x20

    if-ne v1, v4, :cond_1

    if-eq v3, v4, :cond_2

    .line 525
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 526
    move v1, v3

    .line 520
    .end local v3    # "c2":C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    .end local v2    # "k":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static toOIDArray(Ljava/util/Vector;)[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 3
    .param p0, "oids"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oids"
        }
    .end annotation

    .line 237
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 239
    .local v0, "tmp":[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 241
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static toValueArray(Ljava/util/Vector;)[Ljava/lang/String;
    .locals 3
    .param p0, "values"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 227
    .local v0, "tmp":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 229
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "elt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elt"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 27
    return-object p0

    .line 29
    :cond_0
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x22

    if-gez v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    .local v1, "escaped":Z
    const/4 v3, 0x0

    .line 36
    .local v3, "quoted":Z
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 37
    .local v4, "buf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 41
    .local v5, "start":I
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v0, :cond_2

    .line 43
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x23

    if-ne v7, v9, :cond_2

    .line 45
    const/4 v5, 0x2

    .line 46
    const-string v7, "\\#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    :cond_2
    const/4 v7, 0x0

    .line 51
    .local v7, "nonWhiteSpaceEncountered":Z
    const/4 v9, 0x0

    .line 52
    .local v9, "lastEscaped":I
    const/4 v10, 0x0

    .line 54
    .local v10, "hex1":C
    move v11, v5

    .local v11, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x20

    if-eq v11, v12, :cond_b

    .line 56
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 58
    .local v12, "c":C
    if-eq v12, v13, :cond_3

    .line 60
    const/4 v7, 0x1

    .line 63
    :cond_3
    if-ne v12, v2, :cond_6

    .line 65
    if-nez v1, :cond_5

    .line 67
    if-nez v3, :cond_4

    const/4 v13, 0x1

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    :goto_1
    move v3, v13

    .end local v3    # "quoted":Z
    .local v13, "quoted":Z
    goto :goto_2

    .line 71
    .end local v13    # "quoted":Z
    .restart local v3    # "quoted":Z
    :cond_5
    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    const/4 v1, 0x0

    goto :goto_2

    .line 75
    :cond_6
    if-ne v12, v0, :cond_7

    if-nez v1, :cond_7

    if-nez v3, :cond_7

    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    goto :goto_2

    .line 82
    :cond_7
    if-ne v12, v13, :cond_8

    if-nez v1, :cond_8

    if-nez v7, :cond_8

    .line 84
    goto :goto_2

    .line 86
    :cond_8
    if-eqz v1, :cond_a

    invoke-static {v12}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->isHexDigit(C)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 88
    if-eqz v10, :cond_9

    .line 90
    invoke-static {v10}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v13

    mul-int/lit8 v13, v13, 0x10

    invoke-static {v12}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v14

    add-int/2addr v13, v14

    int-to-char v13, v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    const/4 v1, 0x0

    .line 92
    const/4 v10, 0x0

    .line 93
    goto :goto_2

    .line 95
    :cond_9
    move v10, v12

    .line 96
    goto :goto_2

    .line 98
    :cond_a
    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    const/4 v1, 0x0

    .line 54
    .end local v12    # "c":C
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 103
    .end local v11    # "i":I
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 105
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v13, :cond_c

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v8

    if-eq v9, v0, :cond_c

    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_3

    .line 111
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueFromHexString(Ljava/lang/String;I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "off"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 303
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 305
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 306
    .local v2, "left":C
    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 308
    .local v3, "right":C
    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    invoke-static {v3}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 303
    .end local v2    # "left":C
    .end local v3    # "right":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    .end local v1    # "index":I
    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    return-object v1
.end method

.method public static valueToString(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .locals 9
    .param p0, "value"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 370
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 372
    .local v0, "vBuf":Ljava/lang/StringBuffer;
    instance-of v1, p0, Lorg/bouncycastle/asn1/ASN1String;

    const/4 v2, 0x0

    const/16 v3, 0x5c

    const/16 v4, 0x23

    if-eqz v1, :cond_1

    instance-of v1, p0, Lorg/bouncycastle/asn1/ASN1UniversalString;

    if-nez v1, :cond_1

    .line 374
    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "v":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_0

    .line 377
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 380
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    .end local v1    # "v":Ljava/lang/String;
    goto :goto_0

    .line 386
    :cond_1
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 388
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    const-string v5, "DER"

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    nop

    .line 396
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 397
    .local v1, "end":I
    const/4 v5, 0x0

    .line 399
    .local v5, "index":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-lt v6, v8, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    .line 401
    add-int/lit8 v5, v5, 0x2

    .line 404
    :cond_2
    :goto_1
    const-string v2, "\\"

    if-eq v5, v1, :cond_3

    .line 406
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 424
    add-int/lit8 v5, v5, 0x1

    .line 425
    goto :goto_1

    .line 417
    :sswitch_0
    invoke-virtual {v0, v5, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    add-int/lit8 v5, v5, 0x2

    .line 419
    add-int/lit8 v1, v1, 0x1

    .line 420
    goto :goto_1

    .line 430
    :cond_3
    const/4 v4, 0x0

    .line 431
    .local v4, "start":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const/16 v8, 0x20

    if-lez v6, :cond_4

    .line 433
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v6, v4, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_4

    .line 435
    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 440
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int/2addr v2, v7

    .line 442
    .local v2, "endBuf":I
    :goto_3
    if-lt v2, v4, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_5

    .line 444
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 445
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 448
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 390
    .end local v1    # "end":I
    .end local v2    # "endBuf":I
    .end local v4    # "start":I
    .end local v5    # "index":I
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Other value has no encoded form"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method
