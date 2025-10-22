.class public Lorg/bouncycastle/asn1/x509/sigi/PersonalData;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PersonalData.java"


# instance fields
.field private dateOfBirth:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private gender:Ljava/lang/String;

.field private nameDistinguisher:Ljava/math/BigInteger;

.field private nameOrPseudonym:Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;

.field private placeOfBirth:Lorg/bouncycastle/asn1/x500/DirectoryString;

.field private postalAddress:Lorg/bouncycastle/asn1/x500/DirectoryString;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 7
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 87
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 89
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameOrPseudonym:Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;

    .line 91
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 94
    .local v2, "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    .line 95
    .local v3, "tag":I
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad tag number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :pswitch_0
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 111
    goto :goto_1

    .line 107
    :pswitch_1
    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/ASN1PrintableString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1PrintableString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1PrintableString;->getString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    .line 108
    goto :goto_1

    .line 104
    :pswitch_2
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 105
    goto :goto_1

    .line 101
    :pswitch_3
    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 102
    goto :goto_1

    .line 98
    :pswitch_4
    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    .line 99
    nop

    .line 115
    .end local v2    # "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v3    # "tag":I
    :goto_1
    goto :goto_0

    .line 116
    :cond_0
    return-void

    .line 83
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 84
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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/x500/DirectoryString;Ljava/lang/String;Lorg/bouncycastle/asn1/x500/DirectoryString;)V
    .locals 0
    .param p1, "nameOrPseudonym"    # Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;
    .param p2, "nameDistinguisher"    # Ljava/math/BigInteger;
    .param p3, "dateOfBirth"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p4, "placeOfBirth"    # Lorg/bouncycastle/asn1/x500/DirectoryString;
    .param p5, "gender"    # Ljava/lang/String;
    .param p6, "postalAddress"    # Lorg/bouncycastle/asn1/x500/DirectoryString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nameOrPseudonym",
            "nameDistinguisher",
            "dateOfBirth",
            "placeOfBirth",
            "gender",
            "postalAddress"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 132
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameOrPseudonym:Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;

    .line 133
    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 134
    iput-object p5, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    .line 136
    iput-object p6, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 137
    iput-object p4, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 138
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/sigi/PersonalData;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 49
    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal object in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;

    return-object v0
.end method


# virtual methods
.method public getDateOfBirth()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getNameDistinguisher()Ljava/math/BigInteger;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getNameOrPseudonym()Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameOrPseudonym:Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;

    return-object v0
.end method

.method public getPlaceOfBirth()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public getPostalAddress()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 6

    .line 189
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 190
    .local v0, "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameOrPseudonym:Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 191
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 193
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 195
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 197
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 199
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_2

    .line 201
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-direct {v1, v3, v4, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 203
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 205
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v4, Lorg/bouncycastle/asn1/DERPrintableString;

    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    const/4 v5, 0x3

    invoke-direct {v1, v2, v5, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 207
    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_4

    .line 209
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x4

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-direct {v1, v3, v2, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 211
    :cond_4
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
