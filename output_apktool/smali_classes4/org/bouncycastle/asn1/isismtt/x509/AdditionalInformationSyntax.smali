.class public Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "AdditionalInformationSyntax.java"


# instance fields
.field private information:Lorg/bouncycastle/asn1/x500/DirectoryString;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "information"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "information"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;-><init>(Lorg/bouncycastle/asn1/x500/DirectoryString;)V

    .line 48
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/x500/DirectoryString;)V
    .locals 0
    .param p1, "information"    # Lorg/bouncycastle/asn1/x500/DirectoryString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "information"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;->information:Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 38
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;
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

    .line 22
    instance-of v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;

    if-eqz v0, :cond_0

    .line 24
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;

    return-object v0

    .line 27
    :cond_0
    if-eqz p0, :cond_1

    .line 29
    new-instance v0, Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;-><init>(Lorg/bouncycastle/asn1/x500/DirectoryString;)V

    return-object v0

    .line 32
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getInformation()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;->information:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;->information:Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/DirectoryString;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
