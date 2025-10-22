.class abstract Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDefaultSecureReadable;
.super Ljava/lang/Object;
.source "CMSEnvelopedHelper.java"

# interfaces
.implements Lorg/bouncycastle/cms/CMSSecureReadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/CMSEnvelopedHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CMSDefaultSecureReadable"
.end annotation


# instance fields
.field protected authAttrSet:Lorg/bouncycastle/asn1/ASN1Set;

.field protected final contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field protected readable:Lorg/bouncycastle/cms/CMSReadable;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSReadable;)V
    .locals 0
    .param p1, "contentType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "readable"    # Lorg/bouncycastle/cms/CMSReadable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentType",
            "readable"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDefaultSecureReadable;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 83
    iput-object p2, p0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDefaultSecureReadable;->readable:Lorg/bouncycastle/cms/CMSReadable;

    .line 84
    return-void
.end method


# virtual methods
.method public getAuthAttrSet()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDefaultSecureReadable;->authAttrSet:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDefaultSecureReadable;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public setAuthAttrSet(Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "set"    # Lorg/bouncycastle/asn1/ASN1Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDefaultSecureReadable;->authAttrSet:Lorg/bouncycastle/asn1/ASN1Set;

    .line 101
    return-void
.end method
