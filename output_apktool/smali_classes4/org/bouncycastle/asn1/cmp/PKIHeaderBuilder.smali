.class public Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
.super Ljava/lang/Object;
.source "PKIHeaderBuilder.java"


# instance fields
.field private freeText:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

.field private generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private messageTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private protectionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final pvno:Lorg/bouncycastle/asn1/ASN1Integer;

.field private recipKID:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final recipient:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private final sender:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private senderKID:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 3
    .param p1, "pvno"    # I
    .param p2, "sender"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .param p3, "recipient"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pvno",
            "sender",
            "recipient"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {p0, v0, p2, p3}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 0
    .param p1, "pvno"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p2, "sender"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .param p3, "recipient"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pvno",
            "sender",
            "recipient"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->pvno:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 45
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 46
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->recipient:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 47
    return-void
.end method

.method private addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "v"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "tagNo",
            "obj"
        }
    .end annotation

    .line 235
    if-eqz p3, :cond_0

    .line 237
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 239
    :cond_0
    return-void
.end method

.method private createClonedOctetString([B)Lorg/bouncycastle/asn1/DEROctetString;
    .locals 2
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 243
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method private static makeGeneralInfoSeq(Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1
    .param p0, "generalInfo"    # Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "generalInfo"
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method private static makeGeneralInfoSeq([Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 2
    .param p0, "generalInfos"    # [Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "generalInfos"
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "genInfoSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz p0, :cond_0

    .line 61
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object v0, v1

    .line 63
    :cond_0
    return-object v0
.end method


# virtual methods
.method public build()Lorg/bouncycastle/asn1/cmp/PKIHeader;
    .locals 3

    .line 205
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 207
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->pvno:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 208
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 209
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->recipient:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 210
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->messageTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 211
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->protectionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 212
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->senderKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 213
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->recipKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 214
    const/4 v1, 0x4

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 215
    const/4 v1, 0x5

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 216
    const/4 v1, 0x6

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 217
    const/4 v1, 0x7

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->freeText:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 218
    const/16 v1, 0x8

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 220
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->messageTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 221
    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->protectionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 222
    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->senderKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 223
    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->recipKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 224
    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 225
    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 226
    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 227
    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->freeText:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 228
    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 230
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v1

    return-object v1
.end method

.method public setFreeText(Lorg/bouncycastle/asn1/cmp/PKIFreeText;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 0
    .param p1, "text"    # Lorg/bouncycastle/asn1/cmp/PKIFreeText;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->freeText:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 144
    return-object p0
.end method

.method public setGeneralInfo(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 0
    .param p1, "seqOfInfoTypeAndValue"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seqOfInfoTypeAndValue"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 161
    return-object p0
.end method

.method public setGeneralInfo(Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 1
    .param p1, "genInfo"    # Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "genInfo"
        }
    .end annotation

    .line 149
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->makeGeneralInfoSeq(Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setGeneralInfo(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setGeneralInfo([Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 1
    .param p1, "genInfos"    # [Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "genInfos"
        }
    .end annotation

    .line 154
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->makeGeneralInfoSeq([Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setGeneralInfo(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMessageTime(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 0
    .param p1, "time"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->messageTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 70
    return-object p0
.end method

.method public setProtectionAlg(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 0
    .param p1, "aid"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aid"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->protectionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 77
    return-object p0
.end method

.method public setRecipKID(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 0
    .param p1, "kid"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kid"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->recipKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 101
    return-object p0
.end method

.method public setRecipKID([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 1
    .param p1, "kid"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kid"
        }
    .end annotation

    .line 94
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->createClonedOctetString([B)Lorg/bouncycastle/asn1/DEROctetString;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setRecipKID(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setRecipNonce(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 0
    .param p1, "nonce"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nonce"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 137
    return-object p0
.end method

.method public setRecipNonce([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 1
    .param p1, "nonce"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nonce"
        }
    .end annotation

    .line 130
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->createClonedOctetString([B)Lorg/bouncycastle/asn1/DEROctetString;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setRecipNonce(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setSenderKID(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 0
    .param p1, "kid"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kid"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->senderKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 89
    return-object p0
.end method

.method public setSenderKID([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 1
    .param p1, "kid"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kid"
        }
    .end annotation

    .line 82
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->createClonedOctetString([B)Lorg/bouncycastle/asn1/DEROctetString;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setSenderKID(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setSenderNonce(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 0
    .param p1, "nonce"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nonce"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 125
    return-object p0
.end method

.method public setSenderNonce([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 1
    .param p1, "nonce"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nonce"
        }
    .end annotation

    .line 118
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->createClonedOctetString([B)Lorg/bouncycastle/asn1/DEROctetString;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setSenderNonce(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTransactionID(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 0
    .param p1, "tid"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tid"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 113
    return-object p0
.end method

.method public setTransactionID([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 1
    .param p1, "tid"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tid"
        }
    .end annotation

    .line 106
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->createClonedOctetString([B)Lorg/bouncycastle/asn1/DEROctetString;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setTransactionID(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0
.end method
