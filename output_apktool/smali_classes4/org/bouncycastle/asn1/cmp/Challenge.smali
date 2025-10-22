.class public Lorg/bouncycastle/asn1/cmp/Challenge;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Challenge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/asn1/cmp/Challenge$Rand;
    }
.end annotation


# instance fields
.field private final challenge:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final owf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final witness:Lorg/bouncycastle/asn1/ASN1OctetString;


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

    .line 49
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "index":I
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 54
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/Challenge;->owf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move v0, v1

    goto :goto_0

    .line 58
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/Challenge;->owf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 61
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/Challenge;->witness:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 62
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/Challenge;->challenge:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)V
    .locals 1
    .param p1, "owf"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "witness"    # [B
    .param p3, "challenge"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "owf",
            "witness",
            "challenge"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/Challenge;->owf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 73
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/Challenge;->witness:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 74
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/Challenge;->challenge:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 75
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1
    .param p1, "witness"    # [B
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "witness",
            "challenge"
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/cmp/Challenge;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)V

    .line 68
    return-void
.end method

.method private addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "v"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "obj"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "obj"
        }
    .end annotation

    .line 148
    if-eqz p2, :cond_0

    .line 150
    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 152
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/Challenge;
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

    .line 79
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/Challenge;

    if-eqz v0, :cond_0

    .line 81
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/Challenge;

    return-object v0

    .line 84
    :cond_0
    if-eqz p0, :cond_1

    .line 86
    new-instance v0, Lorg/bouncycastle/asn1/cmp/Challenge;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/Challenge;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 89
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getChallenge()[B
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/Challenge;->challenge:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getOwf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/Challenge;->owf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getWitness()[B
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/Challenge;->witness:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 137
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 139
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/Challenge;->owf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/cmp/Challenge;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 140
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/Challenge;->witness:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 141
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/Challenge;->challenge:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 143
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
