.class public Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Iso4217CurrencyCode.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field final ALPHABETIC_MAXSIZE:I

.field final NUMERIC_MAXSIZE:I

.field final NUMERIC_MINSIZE:I

.field numeric:I

.field obj:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "numeric"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numeric"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->ALPHABETIC_MAXSIZE:I

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->NUMERIC_MINSIZE:I

    .line 27
    const/16 v1, 0x3e7

    iput v1, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->NUMERIC_MAXSIZE:I

    .line 58
    if-gt p1, v1, :cond_0

    if-lt p1, v0, :cond_0

    .line 62
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 63
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "wrong size in numeric code : not in (1..999)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "alphabetic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alphabetic"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->ALPHABETIC_MAXSIZE:I

    .line 26
    const/4 v1, 0x1

    iput v1, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->NUMERIC_MINSIZE:I

    .line 27
    const/16 v1, 0x3e7

    iput v1, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->NUMERIC_MAXSIZE:I

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 72
    new-instance v0, Lorg/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 73
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "wrong size in alphabetic code : max size is 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 35
    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_1

    .line 42
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    .line 43
    .local v0, "numericobj":Lorg/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v1

    .line 44
    .local v1, "numeric":I
    new-instance v2, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;-><init>(I)V

    return-object v2

    .line 47
    .end local v0    # "numericobj":Lorg/bouncycastle/asn1/ASN1Integer;
    .end local v1    # "numeric":I
    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1PrintableString;

    if-eqz v0, :cond_2

    .line 49
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1PrintableString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1PrintableString;

    move-result-object v0

    .line 50
    .local v0, "alphabetic":Lorg/bouncycastle/asn1/ASN1PrintableString;
    new-instance v1, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1PrintableString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 52
    .end local v0    # "alphabetic":Lorg/bouncycastle/asn1/ASN1PrintableString;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_3
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    return-object v0
.end method


# virtual methods
.method public getAlphabetic()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1PrintableString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1PrintableString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumeric()I
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0
.end method

.method public isAlphabetic()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1PrintableString;

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
