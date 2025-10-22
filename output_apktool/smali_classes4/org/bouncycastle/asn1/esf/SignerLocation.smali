.class public Lorg/bouncycastle/asn1/esf/SignerLocation;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SignerLocation.java"


# instance fields
.field private countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

.field private localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

.field private postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 41
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 45
    .local v1, "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 68
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "illegal tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :pswitch_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_1

    .line 60
    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 62
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x6

    if-gt v2, v3, :cond_1

    goto :goto_2

    .line 64
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "postal address must contain less than 6 strings"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :pswitch_1
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 52
    goto :goto_2

    .line 48
    :pswitch_2
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 49
    nop

    .line 70
    .end local v1    # "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_2
    :goto_2
    goto :goto_0

    .line 71
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1UTF8String;Lorg/bouncycastle/asn1/ASN1UTF8String;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "countryName"    # Lorg/bouncycastle/asn1/ASN1UTF8String;
    .param p2, "localityName"    # Lorg/bouncycastle/asn1/ASN1UTF8String;
    .param p3, "postalAddress"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "countryName",
            "localityName",
            "postalAddress"
        }
    .end annotation

    .line 101
    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v0

    invoke-static {p2}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lorg/bouncycastle/asn1/esf/SignerLocation;-><init>(Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 102
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "countryName"    # Lorg/bouncycastle/asn1/x500/DirectoryString;
    .param p2, "localityName"    # Lorg/bouncycastle/asn1/x500/DirectoryString;
    .param p3, "postalAddress"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "countryName",
            "localityName",
            "postalAddress"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 78
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "postal address must contain less than 6 strings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 84
    iput-object p2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 85
    iput-object p3, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/x500/DirectoryString;[Lorg/bouncycastle/asn1/x500/DirectoryString;)V
    .locals 1
    .param p1, "countryName"    # Lorg/bouncycastle/asn1/x500/DirectoryString;
    .param p2, "localityName"    # Lorg/bouncycastle/asn1/x500/DirectoryString;
    .param p3, "postalAddress"    # [Lorg/bouncycastle/asn1/x500/DirectoryString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "countryName",
            "localityName",
            "postalAddress"
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/esf/SignerLocation;-><init>(Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 94
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SignerLocation;
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

    .line 107
    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/esf/SignerLocation;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/SignerLocation;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 109
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/esf/SignerLocation;

    return-object v0
.end method


# virtual methods
.method public getCountry()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public getCountryName()Lorg/bouncycastle/asn1/DERUTF8String;
    .locals 2

    .line 161
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/esf/SignerLocation;->getCountry()Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getLocality()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public getLocalityName()Lorg/bouncycastle/asn1/DERUTF8String;
    .locals 2

    .line 173
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    return-object v0

    .line 177
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/esf/SignerLocation;->getLocality()Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getPostal()[Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 3

    .line 142
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 148
    .local v0, "dirStrings":[Lorg/bouncycastle/asn1/x500/DirectoryString;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 150
    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v2

    aput-object v2, v0, v1

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getPostalAddress()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 204
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 206
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 208
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 211
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_1

    .line 213
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 216
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    .line 218
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 221
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
