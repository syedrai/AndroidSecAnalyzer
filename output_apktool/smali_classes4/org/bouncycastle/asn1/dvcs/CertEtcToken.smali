.class public Lorg/bouncycastle/asn1/dvcs/CertEtcToken;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CertEtcToken.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final TAG_ASSERTION:I = 0x3

.field public static final TAG_CAPABILITIES:I = 0x8

.field public static final TAG_CERTIFICATE:I = 0x0

.field public static final TAG_CRL:I = 0x4

.field public static final TAG_ESSCERTID:I = 0x1

.field public static final TAG_OCSPCERTID:I = 0x6

.field public static final TAG_OCSPCERTSTATUS:I = 0x5

.field public static final TAG_OCSPRESPONSE:I = 0x7

.field public static final TAG_PKISTATUS:I = 0x2

.field private static final explicit:[Z


# instance fields
.field private extension:Lorg/bouncycastle/asn1/x509/Extension;

.field private tagNo:I

.field private value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const/16 v0, 0x9

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->explicit:[Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "tagNo"    # I
    .param p2, "value"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tagNo",
            "value"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 63
    iput p1, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    .line 64
    iput-object p2, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 65
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 4
    .param p1, "choice"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "choice"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    .line 77
    iget v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :pswitch_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/smime/SMIMECapabilities;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 105
    goto :goto_0

    .line 101
    :pswitch_1
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 102
    goto :goto_0

    .line 98
    :pswitch_2
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/ocsp/CertID;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 99
    goto :goto_0

    .line 95
    :pswitch_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/CertStatus;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/CertStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 96
    goto :goto_0

    .line 92
    :pswitch_4
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 93
    goto :goto_0

    .line 89
    :pswitch_5
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 90
    goto :goto_0

    .line 86
    :pswitch_6
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 87
    goto :goto_0

    .line 83
    :pswitch_7
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ess/ESSCertID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ess/ESSCertID;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 84
    goto :goto_0

    .line 80
    :pswitch_8
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 81
    nop

    .line 109
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/Extension;)V
    .locals 1
    .param p1, "extension"    # Lorg/bouncycastle/asn1/x509/Extension;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    .line 70
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->extension:Lorg/bouncycastle/asn1/x509/Extension;

    .line 71
    return-void
.end method

.method public static arrayFromSequence(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/dvcs/CertEtcToken;
    .locals 3
    .param p0, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    .line 165
    .local v0, "tmp":[Lorg/bouncycastle/asn1/dvcs/CertEtcToken;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 167
    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    move-result-object v2

    aput-object v2, v0, v1

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/CertEtcToken;
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

    .line 113
    instance-of v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    if-eqz v0, :cond_0

    .line 115
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    return-object v0

    .line 117
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    .line 119
    new-instance v0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 121
    :cond_1
    if-eqz p0, :cond_2

    .line 123
    new-instance v0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/Extension;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;-><init>(Lorg/bouncycastle/asn1/x509/Extension;)V

    return-object v0

    .line 126
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getExtension()Lorg/bouncycastle/asn1/x509/Extension;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->extension:Lorg/bouncycastle/asn1/x509/Extension;

    return-object v0
.end method

.method public getTagNo()I
    .locals 1

    .line 143
    iget v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    return v0
.end method

.method public getValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 131
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->extension:Lorg/bouncycastle/asn1/x509/Extension;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    sget-object v1, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->explicit:[Z

    iget v2, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    aget-boolean v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    iget-object v3, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->extension:Lorg/bouncycastle/asn1/x509/Extension;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Extension;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 158
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CertEtcToken {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
