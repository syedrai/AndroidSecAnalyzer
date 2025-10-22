.class public Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "IDEACBCPar.java"


# instance fields
.field iv:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 49
    :goto_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "iv"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iv"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 35
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 36
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;
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

    .line 20
    instance-of v0, p0, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;

    if-eqz v0, :cond_0

    .line 22
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;

    return-object v0

    .line 24
    :cond_0
    if-eqz p0, :cond_1

    .line 26
    new-instance v0, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 29
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 73
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 75
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 80
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
