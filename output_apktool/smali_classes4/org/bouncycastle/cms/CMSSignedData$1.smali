.class Lorg/bouncycastle/cms/CMSSignedData$1;
.super Ljava/lang/Object;
.source "CMSSignedData.java"

# interfaces
.implements Lorg/bouncycastle/cms/CMSTypedData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSProcessable;Lorg/bouncycastle/asn1/cms/ContentInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/CMSSignedData;

.field final synthetic val$signedContent:Lorg/bouncycastle/cms/CMSProcessable;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cms/CMSSignedData;Lorg/bouncycastle/cms/CMSProcessable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/cms/CMSSignedData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$signedContent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 154
    iput-object p2, p0, Lorg/bouncycastle/cms/CMSSignedData$1;->val$signedContent:Lorg/bouncycastle/cms/CMSProcessable;

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSSignedData$1;->this$0:Lorg/bouncycastle/cms/CMSSignedData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData$1;->val$signedContent:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSProcessable;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData$1;->this$0:Lorg/bouncycastle/cms/CMSSignedData;

    iget-object v0, v0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData$1;->val$signedContent:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-interface {v0, p1}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    .line 164
    return-void
.end method
