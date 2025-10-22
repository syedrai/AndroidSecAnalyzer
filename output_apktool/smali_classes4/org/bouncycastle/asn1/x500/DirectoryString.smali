.class public Lorg/bouncycastle/asn1/x500/DirectoryString;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "DirectoryString.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;
.implements Lorg/bouncycastle/asn1/ASN1String;


# instance fields
.field private string:Lorg/bouncycastle/asn1/ASN1String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 102
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    .line 103
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1BMPString;)V
    .locals 0
    .param p1, "string"    # Lorg/bouncycastle/asn1/ASN1BMPString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 97
    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    .line 98
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1PrintableString;)V
    .locals 0
    .param p1, "string"    # Lorg/bouncycastle/asn1/ASN1PrintableString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    .line 80
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1T61String;)V
    .locals 0
    .param p1, "string"    # Lorg/bouncycastle/asn1/ASN1T61String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    .line 74
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1UTF8String;)V
    .locals 0
    .param p1, "string"    # Lorg/bouncycastle/asn1/ASN1UTF8String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    .line 92
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1UniversalString;)V
    .locals 0
    .param p1, "string"    # Lorg/bouncycastle/asn1/ASN1UniversalString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    .line 86
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 27
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1T61String;

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1T61String;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/ASN1T61String;)V

    return-object v0

    .line 37
    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1PrintableString;

    if-eqz v0, :cond_2

    .line 39
    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1PrintableString;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/ASN1PrintableString;)V

    return-object v0

    .line 42
    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1UniversalString;

    if-eqz v0, :cond_3

    .line 44
    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1UniversalString;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/ASN1UniversalString;)V

    return-object v0

    .line 47
    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v0, :cond_4

    .line 49
    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1UTF8String;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/ASN1UTF8String;)V

    return-object v0

    .line 52
    :cond_4
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;

    if-eqz v0, :cond_5

    .line 54
    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1BMPString;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/ASN1BMPString;)V

    return-object v0

    .line 57
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal object in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_6
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 2
    .param p0, "o"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "explicit"
        }
    .end annotation

    .line 62
    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "choice item must be explicitly tagged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
