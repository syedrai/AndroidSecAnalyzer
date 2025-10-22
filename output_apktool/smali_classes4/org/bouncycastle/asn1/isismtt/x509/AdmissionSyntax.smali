.class public Lorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "AdmissionSyntax.java"


# instance fields
.field private admissionAuthority:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private contentsOfAdmissions:Lorg/bouncycastle/asn1/ASN1Sequence;


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

    .line 179
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 180
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 190
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

    .line 186
    :pswitch_0
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;->admissionAuthority:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;->contentsOfAdmissions:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 188
    goto :goto_0

    .line 183
    :pswitch_1
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;->contentsOfAdmissions:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 184
    nop

    .line 192
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "admissionAuthority"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .param p2, "contentsOfAdmissions"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "admissionAuthority",
            "contentsOfAdmissions"
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 202
    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;->admissionAuthority:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 203
    iput-object p2, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;->contentsOfAdmissions:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 204
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;
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

    .line 127
    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 134
    new-instance v0, Lorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 138
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

    .line 129
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;

    return-object v0
.end method


# virtual methods
.method public getAdmissionAuthority()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;->admissionAuthority:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getContentsOfAdmissions()[Lorg/bouncycastle/asn1/isismtt/x509/Admissions;
    .locals 5

    .line 267
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;->contentsOfAdmissions:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/isismtt/x509/Admissions;

    .line 268
    .local v0, "admissions":[Lorg/bouncycastle/asn1/isismtt/x509/Admissions;
    const/4 v1, 0x0

    .line 269
    .local v1, "count":I
    iget-object v2, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;->contentsOfAdmissions:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .local v3, "count":I
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/isismtt/x509/Admissions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/isismtt/x509/Admissions;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v3

    goto :goto_0

    .line 273
    .end local v2    # "e":Ljava/util/Enumeration;
    .end local v3    # "count":I
    .restart local v1    # "count":I
    :cond_0
    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 245
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 246
    .local v0, "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;->admissionAuthority:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;->admissionAuthority:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 250
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;->contentsOfAdmissions:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 251
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
