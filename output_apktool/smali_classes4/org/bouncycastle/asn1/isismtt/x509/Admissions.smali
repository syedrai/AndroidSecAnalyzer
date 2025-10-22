.class public Lorg/bouncycastle/asn1/isismtt/x509/Admissions;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Admissions.java"


# instance fields
.field private admissionAuthority:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private namingAuthority:Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;

.field private professionInfos:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
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

    .line 71
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_3

    .line 77
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 79
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 80
    .local v1, "o":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const-string v3, "Bad tag number: "

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 82
    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 91
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    check-cast v4, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :pswitch_0
    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;->namingAuthority:Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;

    .line 89
    goto :goto_0

    .line 85
    :pswitch_1
    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;->admissionAuthority:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 86
    nop

    .line 93
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 95
    :cond_0
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_1

    .line 97
    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    check-cast v4, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :pswitch_2
    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;->namingAuthority:Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;

    .line 101
    nop

    .line 105
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 107
    :cond_1
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;->professionInfos:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 108
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_2

    .line 113
    return-void

    .line 110
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 111
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad object encountered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "o":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 75
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
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;[Lorg/bouncycastle/asn1/isismtt/x509/ProfessionInfo;)V
    .locals 1
    .param p1, "admissionAuthority"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .param p2, "namingAuthority"    # Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;
    .param p3, "professionInfos"    # [Lorg/bouncycastle/asn1/isismtt/x509/ProfessionInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "admissionAuthority",
            "namingAuthority",
            "professionInfos"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 127
    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;->admissionAuthority:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 128
    iput-object p2, p0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;->namingAuthority:Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;

    .line 129
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;->professionInfos:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 130
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/isismtt/x509/Admissions;
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

    .line 42
    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 52
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

    .line 44
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;

    return-object v0
.end method


# virtual methods
.method public getAdmissionAuthority()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;->admissionAuthority:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getNamingAuthority()Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;->namingAuthority:Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;

    return-object v0
.end method

.method public getProfessionInfos()[Lorg/bouncycastle/asn1/isismtt/x509/ProfessionInfo;
    .locals 5

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;->professionInfos:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/isismtt/x509/ProfessionInfo;

    .line 145
    .local v0, "infos":[Lorg/bouncycastle/asn1/isismtt/x509/ProfessionInfo;
    const/4 v1, 0x0

    .line 146
    .local v1, "count":I
    iget-object v2, p0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;->professionInfos:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .local v3, "count":I
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/isismtt/x509/ProfessionInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/isismtt/x509/ProfessionInfo;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v3

    goto :goto_0

    .line 150
    .end local v2    # "e":Ljava/util/Enumeration;
    .end local v3    # "count":I
    .restart local v1    # "count":I
    :cond_0
    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 170
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 172
    .local v0, "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;->admissionAuthority:Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 174
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;->admissionAuthority:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 176
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;->namingAuthority:Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;

    if-eqz v1, :cond_1

    .line 178
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;->namingAuthority:Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 180
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;->professionInfos:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 182
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
