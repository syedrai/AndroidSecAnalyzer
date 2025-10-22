.class public Lorg/bouncycastle/asn1/isismtt/x509/Restriction;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Restriction.java"


# instance fields
.field private restriction:Lorg/bouncycastle/asn1/x500/DirectoryString;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "restriction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "restriction"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 56
    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/Restriction;->restriction:Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 57
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/x500/DirectoryString;)V
    .locals 0
    .param p1, "restriction"    # Lorg/bouncycastle/asn1/x500/DirectoryString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "restriction"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/x509/Restriction;->restriction:Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 47
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/isismtt/x509/Restriction;
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

    .line 21
    instance-of v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/Restriction;

    if-eqz v0, :cond_0

    .line 23
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/isismtt/x509/Restriction;

    return-object v0

    .line 26
    :cond_0
    if-eqz p0, :cond_1

    .line 28
    new-instance v0, Lorg/bouncycastle/asn1/isismtt/x509/Restriction;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/isismtt/x509/Restriction;-><init>(Lorg/bouncycastle/asn1/x500/DirectoryString;)V

    return-object v0

    .line 31
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getRestriction()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/Restriction;->restriction:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/Restriction;->restriction:Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/DirectoryString;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
