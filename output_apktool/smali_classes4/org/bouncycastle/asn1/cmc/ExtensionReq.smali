.class public Lorg/bouncycastle/asn1/cmc/ExtensionReq;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "ExtensionReq.java"


# instance fields
.field private final extensions:[Lorg/bouncycastle/asn1/x509/Extension;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/Extension;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/ExtensionReq;->extensions:[Lorg/bouncycastle/asn1/x509/Extension;

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/ExtensionReq;->extensions:[Lorg/bouncycastle/asn1/x509/Extension;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/Extension;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v2

    aput-object v2, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/Extension;)V
    .locals 2
    .param p1, "Extension"    # Lorg/bouncycastle/asn1/x509/Extension;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Extension"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/Extension;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/ExtensionReq;->extensions:[Lorg/bouncycastle/asn1/x509/Extension;

    .line 52
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/Extension;)V
    .locals 1
    .param p1, "extensions"    # [Lorg/bouncycastle/asn1/x509/Extension;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extensions"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 58
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmc/Utils;->clone([Lorg/bouncycastle/asn1/x509/Extension;)[Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/ExtensionReq;->extensions:[Lorg/bouncycastle/asn1/x509/Extension;

    .line 59
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/ExtensionReq;
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

    .line 23
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/ExtensionReq;

    if-eqz v0, :cond_0

    .line 25
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/ExtensionReq;

    return-object v0

    .line 28
    :cond_0
    if-eqz p0, :cond_1

    .line 30
    new-instance v0, Lorg/bouncycastle/asn1/cmc/ExtensionReq;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/ExtensionReq;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 33
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmc/ExtensionReq;
    .locals 1
    .param p0, "obj"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "explicit"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/ExtensionReq;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/ExtensionReq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExtensions()[Lorg/bouncycastle/asn1/x509/Extension;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/ExtensionReq;->extensions:[Lorg/bouncycastle/asn1/x509/Extension;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/Utils;->clone([Lorg/bouncycastle/asn1/x509/Extension;)[Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 79
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/ExtensionReq;->extensions:[Lorg/bouncycastle/asn1/x509/Extension;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
