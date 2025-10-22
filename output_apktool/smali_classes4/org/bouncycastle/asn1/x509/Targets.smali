.class public Lorg/bouncycastle/asn1/x509/Targets;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Targets.java"


# instance fields
.field private targets:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "targets"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targets"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/Targets;->targets:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 72
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/Target;)V
    .locals 1
    .param p1, "targets"    # [Lorg/bouncycastle/asn1/x509/Target;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targets"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 85
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Targets;->targets:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 86
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Targets;
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

    .line 50
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/Targets;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x509/Targets;

    return-object v0

    .line 54
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/bouncycastle/asn1/x509/Targets;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/Targets;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 59
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getTargets()[Lorg/bouncycastle/asn1/x509/Target;
    .locals 5

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Targets;->targets:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/Target;

    .line 98
    .local v0, "targs":[Lorg/bouncycastle/asn1/x509/Target;
    const/4 v1, 0x0

    .line 99
    .local v1, "count":I
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/Targets;->targets:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .local v3, "count":I
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/Target;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Target;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v3

    goto :goto_0

    .line 103
    .end local v2    # "e":Ljava/util/Enumeration;
    .end local v3    # "count":I
    .restart local v1    # "count":I
    :cond_0
    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Targets;->targets:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
