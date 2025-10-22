.class public Lorg/bouncycastle/asn1/x509/Holder;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Holder.java"


# static fields
.field public static final V1_CERTIFICATE_HOLDER:I = 0x0

.field public static final V2_CERTIFICATE_HOLDER:I = 0x1


# instance fields
.field baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

.field entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

.field private version:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
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

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    .line 100
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 108
    nop

    .line 109
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 108
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 111
    .local v2, "tObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unknown tag in Holder"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_0
    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    .line 121
    goto :goto_1

    .line 117
    :pswitch_1
    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 118
    goto :goto_1

    .line 114
    :pswitch_2
    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    .line 115
    nop

    .line 106
    .end local v2    # "tObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":I
    :cond_0
    iput v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    .line 127
    return-void

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 103
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2
    .param p1, "tagObj"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagObj"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    .line 79
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown tag in Holder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :pswitch_0
    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 86
    goto :goto_0

    .line 82
    :pswitch_1
    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    .line 83
    nop

    .line 90
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    .line 91
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 1
    .param p1, "entityName"    # Lorg/bouncycastle/asn1/x509/GeneralNames;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entityName"
        }
    .end annotation

    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;I)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralNames;I)V
    .locals 1
    .param p1, "entityName"    # Lorg/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entityName",
            "version"
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    .line 175
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 176
    iput p2, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    .line 177
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/IssuerSerial;)V
    .locals 1
    .param p1, "baseCertificateID"    # Lorg/bouncycastle/asn1/x509/IssuerSerial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseCertificateID"
        }
    .end annotation

    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/x509/IssuerSerial;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/IssuerSerial;I)V
    .locals 1
    .param p1, "baseCertificateID"    # Lorg/bouncycastle/asn1/x509/IssuerSerial;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseCertificateID",
            "version"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    .line 142
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    .line 143
    iput p2, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    .line 144
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;)V
    .locals 1
    .param p1, "objectDigestInfo"    # Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectDigestInfo"
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    .line 186
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    .line 187
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Holder;
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

    .line 56
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/Holder;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x509/Holder;

    return-object v0

    .line 60
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Lorg/bouncycastle/asn1/x509/Holder;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 64
    :cond_1
    if-eqz p0, :cond_2

    .line 66
    new-instance v0, Lorg/bouncycastle/asn1/x509/Holder;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 69
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public getEntityName()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getObjectDigestInfo()Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 153
    iget v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 212
    iget v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 214
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 216
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    if-eqz v3, :cond_0

    .line 218
    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v3, v1, v1, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 221
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v3, :cond_1

    .line 223
    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v3, v1, v2, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 226
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v2, :cond_2

    .line 228
    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    invoke-direct {v2, v1, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 231
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    .line 235
    .end local v0    # "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_4

    .line 237
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v0, v2, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 241
    :cond_4
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v0, v2, v1, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
