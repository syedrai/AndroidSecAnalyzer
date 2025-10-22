.class public Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CAKeyUpdAnnContent.java"


# instance fields
.field private final newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

.field private final newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

.field private final oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;->oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;->newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    .line 27
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;->newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CMPCertificate;Lorg/bouncycastle/asn1/cmp/CMPCertificate;Lorg/bouncycastle/asn1/cmp/CMPCertificate;)V
    .locals 0
    .param p1, "oldWithNew"    # Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .param p2, "newWithOld"    # Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .param p3, "newWithNew"    # Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "oldWithNew",
            "newWithOld",
            "newWithNew"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;->oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    .line 33
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;->newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    .line 34
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;->newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    .line 35
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 39
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;

    if-eqz v0, :cond_0

    .line 41
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;

    return-object v0

    .line 44
    :cond_0
    if-eqz p0, :cond_1

    .line 46
    new-instance v0, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 49
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getNewWithNew()Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;->newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-object v0
.end method

.method public getNewWithOld()Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;->newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-object v0
.end method

.method public getOldWithNew()Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;->oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 80
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 82
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;->oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 83
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;->newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 84
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;->newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 86
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
