.class public Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "ProcurationSyntax.java"


# instance fields
.field private certRef:Lorg/bouncycastle/asn1/x509/IssuerSerial;

.field private country:Ljava/lang/String;

.field private thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "typeOfSubstitution"    # Lorg/bouncycastle/asn1/x500/DirectoryString;
    .param p3, "thirdPerson"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "country",
            "typeOfSubstitution",
            "thirdPerson"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 170
    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    .line 171
    iput-object p2, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 172
    iput-object p3, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/x509/IssuerSerial;)V
    .locals 1
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "typeOfSubstitution"    # Lorg/bouncycastle/asn1/x500/DirectoryString;
    .param p3, "certRef"    # Lorg/bouncycastle/asn1/x509/IssuerSerial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "country",
            "typeOfSubstitution",
            "certRef"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 149
    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 152
    iput-object p3, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    .line 153
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

    .line 99
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_2

    .line 104
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 106
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x80

    invoke-static {v2, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 109
    .local v2, "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 129
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad tag number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :pswitch_0
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v3

    .line 119
    .local v3, "signingFor":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v4, v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v4, :cond_0

    .line 121
    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

    goto :goto_1

    .line 125
    :cond_0
    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    .line 127
    goto :goto_1

    .line 115
    .end local v3    # "signingFor":Lorg/bouncycastle/asn1/ASN1Encodable;
    :pswitch_1
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 116
    goto :goto_1

    .line 112
    :pswitch_2
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/ASN1PrintableString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1PrintableString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1PrintableString;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    .line 113
    nop

    .line 131
    .end local v2    # "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1
    goto :goto_0

    .line 132
    :cond_1
    return-void

    .line 102
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;
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

    .line 64
    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 75
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

    .line 66
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;

    return-object v0
.end method


# virtual methods
.method public getCertRef()Lorg/bouncycastle/asn1/x509/IssuerSerial;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdPerson()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getTypeOfSubstitution()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 6

    .line 218
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 219
    .local v0, "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 221
    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v4, Lorg/bouncycastle/asn1/DERPrintableString;

    iget-object v5, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 223
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v2, :cond_1

    .line 225
    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-direct {v2, v3, v4, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 227
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v2, :cond_2

    .line 229
    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v2, v3, v1, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 233
    :cond_2
    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v2, v3, v1, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 236
    :goto_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
