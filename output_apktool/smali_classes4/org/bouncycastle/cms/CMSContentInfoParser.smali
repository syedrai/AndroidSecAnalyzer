.class public Lorg/bouncycastle/cms/CMSContentInfoParser;
.super Ljava/lang/Object;
.source "CMSContentInfoParser.java"


# instance fields
.field protected _contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfoParser;

.field protected _data:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/bouncycastle/cms/CMSContentInfoParser;->_data:Ljava/io/InputStream;

    .line 23
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    .line 24
    .local v0, "in":Lorg/bouncycastle/asn1/ASN1StreamParser;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    .line 26
    .local v1, "seqParser":Lorg/bouncycastle/asn1/ASN1SequenceParser;
    if-eqz v1, :cond_0

    .line 31
    new-instance v2, Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    iput-object v2, p0, Lorg/bouncycastle/cms/CMSContentInfoParser;->_contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    .line 40
    .end local v0    # "in":Lorg/bouncycastle/asn1/ASN1StreamParser;
    .end local v1    # "seqParser":Lorg/bouncycastle/asn1/ASN1SequenceParser;
    nop

    .line 41
    return-void

    .line 28
    .restart local v0    # "in":Lorg/bouncycastle/asn1/ASN1StreamParser;
    .restart local v1    # "seqParser":Lorg/bouncycastle/asn1/ASN1SequenceParser;
    :cond_0
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    const-string v3, "No content found."

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    .end local p1    # "data":Ljava/io/InputStream;
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v0    # "in":Lorg/bouncycastle/asn1/ASN1StreamParser;
    .end local v1    # "seqParser":Lorg/bouncycastle/asn1/ASN1SequenceParser;
    .restart local p1    # "data":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "Unexpected object reading content."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 33
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 35
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "IOException reading content."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSContentInfoParser;->_data:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 50
    return-void
.end method
