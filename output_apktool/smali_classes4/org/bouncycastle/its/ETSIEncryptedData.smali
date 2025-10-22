.class public Lorg/bouncycastle/its/ETSIEncryptedData;
.super Ljava/lang/Object;
.source "ETSIEncryptedData.java"


# static fields
.field private static final oerDef:Lorg/bouncycastle/oer/Element;


# instance fields
.field private final encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Data_Encrypted:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/its/ETSIEncryptedData;->oerDef:Lorg/bouncycastle/oer/Element;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "str"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    instance-of v0, p1, Lorg/bouncycastle/oer/OERInputStream;

    if-eqz v0, :cond_0

    .line 39
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/oer/OERInputStream;

    .local v0, "oerIn":Lorg/bouncycastle/oer/OERInputStream;
    goto :goto_0

    .line 43
    .end local v0    # "oerIn":Lorg/bouncycastle/oer/OERInputStream;
    :cond_0
    new-instance v0, Lorg/bouncycastle/oer/OERInputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/oer/OERInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    .restart local v0    # "oerIn":Lorg/bouncycastle/oer/OERInputStream;
    :goto_0
    sget-object v1, Lorg/bouncycastle/its/ETSIEncryptedData;->oerDef:Lorg/bouncycastle/oer/Element;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERInputStream;->parse(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    .line 47
    .local v1, "asn1":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;->getContent()Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    move-result-object v2

    .line 48
    .local v2, "content":Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;
    invoke-virtual {v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->getChoice()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 52
    invoke-virtual {v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->getIeee1609Dot2Content()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/its/ETSIEncryptedData;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    .line 53
    return-void

    .line 50
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "EtsiTs103097Data-Encrypted did not have encrypted data content"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;)V
    .locals 0
    .param p1, "data"    # Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/bouncycastle/its/ETSIEncryptedData;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    .line 58
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "oerEncoded"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oerEncoded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/its/ETSIEncryptedData;-><init>(Ljava/io/InputStream;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2

    .line 62
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;

    iget-object v1, p0, Lorg/bouncycastle/its/ETSIEncryptedData;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    .line 64
    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->encryptedData(Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    sget-object v1, Lorg/bouncycastle/its/ETSIEncryptedData;->oerDef:Lorg/bouncycastle/oer/Element;

    .line 62
    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedData()Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/its/ETSIEncryptedData;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    return-object v0
.end method

.method public getRecipients()Lorg/bouncycastle/util/Store;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/its/ETSIRecipientInfo;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "recipients":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/its/ETSIRecipientInfo;>;"
    iget-object v1, p0, Lorg/bouncycastle/its/ETSIEncryptedData;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;->getRecipients()Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;->getRecipientInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    .line 78
    .local v2, "ri":Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    new-instance v3, Lorg/bouncycastle/its/ETSIRecipientInfo;

    iget-object v4, p0, Lorg/bouncycastle/its/ETSIEncryptedData;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/its/ETSIRecipientInfo;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v2    # "ri":Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    goto :goto_0

    .line 80
    :cond_0
    new-instance v1, Lorg/bouncycastle/util/CollectionStore;

    invoke-direct {v1, v0}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method
