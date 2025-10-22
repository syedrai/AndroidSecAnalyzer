.class public Lorg/bouncycastle/asn1/dvcs/DVCSRequest;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "DVCSRequest.java"


# instance fields
.field private data:Lorg/bouncycastle/asn1/dvcs/Data;

.field private requestInformation:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

.field private transactionIdentifier:Lorg/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->requestInformation:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/Data;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/Data;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    .line 45
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 47
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->transactionIdentifier:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 49
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;Lorg/bouncycastle/asn1/dvcs/Data;)V
    .locals 1
    .param p1, "requestInformation"    # Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;
    .param p2, "data"    # Lorg/bouncycastle/asn1/dvcs/Data;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestInformation",
            "data"
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;-><init>(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;Lorg/bouncycastle/asn1/dvcs/Data;Lorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;Lorg/bouncycastle/asn1/dvcs/Data;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 0
    .param p1, "requestInformation"    # Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;
    .param p2, "data"    # Lorg/bouncycastle/asn1/dvcs/Data;
    .param p3, "transactionIdentifier"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestInformation",
            "data",
            "transactionIdentifier"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->requestInformation:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    .line 37
    iput-object p2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    .line 38
    iput-object p3, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->transactionIdentifier:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 39
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSRequest;
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

    .line 53
    instance-of v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    if-eqz v0, :cond_0

    .line 55
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    return-object v0

    .line 57
    :cond_0
    if-eqz p0, :cond_1

    .line 59
    new-instance v0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 62
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/dvcs/DVCSRequest;
    .locals 1
    .param p0, "obj"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "explicit"
        }
    .end annotation

    .line 69
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Lorg/bouncycastle/asn1/dvcs/Data;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    return-object v0
.end method

.method public getRequestInformation()Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->requestInformation:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    return-object v0
.end method

.method public getTransactionIdentifier()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->transactionIdentifier:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 74
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 75
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->requestInformation:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 76
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 77
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->transactionIdentifier:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->transactionIdentifier:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 81
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 86
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->requestInformation:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->transactionIdentifier:Lorg/bouncycastle/asn1/x509/GeneralName;

    const-string v3, "\n"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->transactionIdentifier:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "transactionIdentifier: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DVCSRequest {\nrequestInformation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\ndata: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    return-object v0
.end method
