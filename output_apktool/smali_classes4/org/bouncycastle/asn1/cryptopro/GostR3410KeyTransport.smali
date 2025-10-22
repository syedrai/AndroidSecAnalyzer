.class public Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "GostR3410KeyTransport.java"


# instance fields
.field private final sessionEncryptedKey:Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;

.field private final transportParameters:Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;


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

    .line 27
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;->sessionEncryptedKey:Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;

    .line 29
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;->transportParameters:Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;)V
    .locals 0
    .param p1, "sessionEncryptedKey"    # Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;
    .param p2, "transportParameters"    # Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sessionEncryptedKey",
            "transportParameters"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;->sessionEncryptedKey:Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;

    .line 35
    iput-object p2, p0, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;->transportParameters:Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;

    .line 36
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;
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

    .line 41
    instance-of v0, p0, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;

    if-eqz v0, :cond_0

    .line 43
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;

    return-object v0

    .line 46
    :cond_0
    if-eqz p0, :cond_1

    .line 48
    new-instance v0, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 51
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getSessionEncryptedKey()Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;->sessionEncryptedKey:Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;

    return-object v0
.end method

.method public getTransportParameters()Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;->transportParameters:Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 66
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 68
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;->sessionEncryptedKey:Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 69
    iget-object v1, p0, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;->transportParameters:Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;

    if-eqz v1, :cond_0

    .line 71
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;->transportParameters:Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 74
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
