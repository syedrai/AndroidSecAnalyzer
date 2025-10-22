.class public Lorg/bouncycastle/asn1/ua/DSTU4145Params;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "DSTU4145Params.java"


# static fields
.field private static final DEFAULT_DKE:[B


# instance fields
.field private dke:[B

.field private ecbinary:Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

.field private namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        -0x2at
        -0x15t
        0x45t
        -0xft
        0x3ct
        0x70t
        -0x7et
        -0x80t
        -0x3ct
        -0x6at
        0x7bt
        0x23t
        0x1ft
        0x5et
        -0x53t
        -0xat
        0x58t
        -0x15t
        -0x5ct
        -0x40t
        0x37t
        0x29t
        0x1dt
        0x38t
        -0x27t
        0x6bt
        -0x10t
        0x25t
        -0x36t
        0x4et
        0x17t
        -0x8t
        -0x17t
        0x72t
        0xdt
        -0x3at
        0x15t
        -0x4ct
        0x3at
        0x28t
        -0x69t
        0x5ft
        0xbt
        -0x3ft
        -0x22t
        -0x5dt
        0x64t
        0x38t
        -0x4bt
        0x64t
        -0x16t
        0x2ct
        0x17t
        -0x61t
        -0x30t
        0x12t
        0x3et
        0x6dt
        -0x48t
        -0x6t
        -0x3bt
        0x79t
        0x4t
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "namedCurve"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "namedCurve"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 29
    sget-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    iput-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    .line 33
    iput-object p1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V
    .locals 1
    .param p1, "namedCurve"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "dke"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "namedCurve",
            "dke"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 29
    sget-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    iput-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    .line 38
    iput-object p1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 39
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;)V
    .locals 1
    .param p1, "ecbinary"    # Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ecbinary"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 29
    sget-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    iput-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->ecbinary:Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    .line 45
    return-void
.end method

.method public static getDefaultDKE()[B
    .locals 1

    .line 64
    sget-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ua/DSTU4145Params;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 74
    instance-of v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;

    if-eqz v0, :cond_0

    .line 76
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;

    return-object v0

    .line 79
    :cond_0
    const-string v0, "object parse error"

    if-eqz p0, :cond_4

    .line 81
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 84
    .local v1, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v3, :cond_1

    .line 86
    new-instance v3, Lorg/bouncycastle/asn1/ua/DSTU4145Params;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/ua/DSTU4145Params;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .local v3, "params":Lorg/bouncycastle/asn1/ua/DSTU4145Params;
    goto :goto_0

    .line 90
    .end local v3    # "params":Lorg/bouncycastle/asn1/ua/DSTU4145Params;
    :cond_1
    new-instance v3, Lorg/bouncycastle/asn1/ua/DSTU4145Params;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/ua/DSTU4145Params;-><init>(Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;)V

    .line 93
    .restart local v3    # "params":Lorg/bouncycastle/asn1/ua/DSTU4145Params;
    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 95
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    iput-object v2, v3, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    .line 96
    iget-object v2, v3, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    array-length v2, v2

    sget-object v4, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    array-length v4, v4

    if-ne v2, v4, :cond_2

    goto :goto_1

    .line 98
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_3
    :goto_1
    return-object v3

    .line 105
    .end local v1    # "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "params":Lorg/bouncycastle/asn1/ua/DSTU4145Params;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getDKE()[B
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getECBinary()Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->ecbinary:Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    return-object v0
.end method

.method public getNamedCurve()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public isNamedCurve()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 110
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 112
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->ecbinary:Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 121
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    sget-object v2, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 126
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
