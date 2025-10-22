.class public Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SemanticsInformation.java"


# instance fields
.field private nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

.field private semanticsIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "semanticsIdentifier"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "semanticsIdentifier"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1
    .param p1, "semanticsIdentifier"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "generalNames"    # [Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "semanticsIdentifier",
            "generalNames"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 86
    invoke-static {p2}, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->cloneNames([Lorg/bouncycastle/asn1/x509/GeneralName;)[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 87
    return-void
.end method

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

    .line 49
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 51
    .local v0, "e":Ljava/util/Enumeration;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    .line 56
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_1

    .line 59
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 66
    :cond_0
    const/4 v1, 0x0

    .line 70
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 72
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 73
    .local v2, "generalNameSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v3, v3, [Lorg/bouncycastle/asn1/x509/GeneralName;

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 74
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 76
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    aput-object v5, v4, v3

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 79
    .end local v2    # "generalNameSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "i":I
    :cond_2
    return-void

    .line 53
    .end local v1    # "object":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no objects in SemanticsInformation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1
    .param p1, "generalNames"    # [Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "generalNames"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 98
    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->cloneNames([Lorg/bouncycastle/asn1/x509/GeneralName;)[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 99
    return-void
.end method

.method private static cloneNames([Lorg/bouncycastle/asn1/x509/GeneralName;)[Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 3
    .param p0, "names"    # [Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "names"
        }
    .end annotation

    .line 129
    if-eqz p0, :cond_0

    .line 131
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 133
    .local v0, "tmp":[Lorg/bouncycastle/asn1/x509/GeneralName;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    return-object v0

    .line 137
    .end local v0    # "tmp":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;
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

    .line 35
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;

    if-eqz v0, :cond_0

    .line 37
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;

    return-object v0

    .line 40
    :cond_0
    if-eqz p0, :cond_1

    .line 42
    new-instance v0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 45
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getNameRegistrationAuthorities()[Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->cloneNames([Lorg/bouncycastle/asn1/x509/GeneralName;)[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method

.method public getSemanticsIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 113
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 115
    .local v0, "seq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 119
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_1

    .line 121
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 124
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
