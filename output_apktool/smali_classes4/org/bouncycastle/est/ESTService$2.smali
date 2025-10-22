.class Lorg/bouncycastle/est/ESTService$2;
.super Ljava/lang/Object;
.source "ESTService.java"

# interfaces
.implements Lorg/bouncycastle/mime/MimeParserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/est/ESTService;->handleEnrollResponse(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/EnrollmentResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$parts:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/bouncycastle/est/ESTService;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/est/ESTService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$parts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 587
    iput-object p2, p0, Lorg/bouncycastle/est/ESTService$2;->val$parts:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;)Lorg/bouncycastle/mime/MimeContext;
    .locals 1
    .param p1, "parserContext"    # Lorg/bouncycastle/mime/MimeParserContext;
    .param p2, "headers"    # Lorg/bouncycastle/mime/Headers;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parserContext",
            "headers"
        }
    .end annotation

    .line 590
    sget-object v0, Lorg/bouncycastle/mime/ConstantMimeContext;->Instance:Lorg/bouncycastle/mime/ConstantMimeContext;

    return-object v0
.end method

.method public object(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "parserContext"    # Lorg/bouncycastle/mime/MimeParserContext;
    .param p2, "headers"    # Lorg/bouncycastle/mime/Headers;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parserContext",
            "headers",
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/pkcs8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 599
    .local v0, "asn1In":Lorg/bouncycastle/asn1/ASN1InputStream;
    iget-object v1, p0, Lorg/bouncycastle/est/ESTService$2;->val$parts:[Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 603
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    if-nez v1, :cond_0

    .line 608
    .end local v0    # "asn1In":Lorg/bouncycastle/asn1/ASN1InputStream;
    goto :goto_0

    .line 605
    .restart local v0    # "asn1In":Lorg/bouncycastle/asn1/ASN1InputStream;
    :cond_0
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    const-string v2, "Unexpected ASN1 object after private key info"

    invoke-direct {v1, v2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 609
    .end local v0    # "asn1In":Lorg/bouncycastle/asn1/ASN1InputStream;
    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/pkcs7-mime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 611
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 614
    .restart local v0    # "asn1In":Lorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/est/ESTService$2;->val$parts:[Ljava/lang/Object;

    new-instance v2, Lorg/bouncycastle/cmc/SimplePKIResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/cmc/SimplePKIResponse;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3
    :try_end_0
    .catch Lorg/bouncycastle/cmc/CMCException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    nop

    .line 623
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 625
    :cond_2
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    const-string v2, "Unexpected ASN1 object after reading certificates"

    invoke-direct {v1, v2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 616
    :catch_0
    move-exception v1

    .line 618
    .local v1, "e":Lorg/bouncycastle/cmc/CMCException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Lorg/bouncycastle/cmc/CMCException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 628
    .end local v0    # "asn1In":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v1    # "e":Lorg/bouncycastle/cmc/CMCException;
    :cond_3
    :goto_0
    return-void
.end method
