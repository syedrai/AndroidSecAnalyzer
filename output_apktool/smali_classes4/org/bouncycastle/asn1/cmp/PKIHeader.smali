.class public Lorg/bouncycastle/asn1/cmp/PKIHeader;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PKIHeader.java"


# static fields
.field public static final CMP_1999:I = 0x1

.field public static final CMP_2000:I = 0x2

.field public static final CMP_2021:I = 0x3

.field public static final NULL_NAME:Lorg/bouncycastle/asn1/x509/GeneralName;


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
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-static {v1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->NULL_NAME:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-void
.end method

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

    .line 138
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {p0, v0, p2, p3}, Lorg/bouncycastle/asn1/cmp/PKIHeader;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 139
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

    .line 145
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 146
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->pvno:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 147
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 148
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipient:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 149
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 86
    .local v0, "en":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->pvno:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 87
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 88
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipient:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 90
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 93
    .local v1, "tObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 128
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown tag number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :pswitch_0
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 126
    goto :goto_1

    .line 122
    :pswitch_1
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->freeText:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 123
    goto :goto_1

    .line 119
    :pswitch_2
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 120
    goto :goto_1

    .line 116
    :pswitch_3
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 117
    goto :goto_1

    .line 113
    :pswitch_4
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 114
    goto :goto_1

    .line 110
    :pswitch_5
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 111
    goto :goto_1

    .line 107
    :pswitch_6
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->senderKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 108
    goto :goto_1

    .line 104
    :pswitch_7
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->protectionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 105
    goto :goto_1

    .line 101
    :pswitch_8
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->messageTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 102
    nop

    .line 130
    .end local v1    # "tObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1
    goto :goto_0

    .line 95
    .restart local v1    # "tObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    .end local v1    # "tObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 297
    if-eqz p3, :cond_0

    .line 299
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 301
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIHeader;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 153
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;

    if-eqz v0, :cond_0

    .line 155
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/PKIHeader;

    return-object v0

    .line 158
    :cond_0
    if-eqz p0, :cond_1

    .line 160
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIHeader;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIHeader;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 163
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getFreeText()Lorg/bouncycastle/asn1/cmp/PKIFreeText;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->freeText:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    return-object v0
.end method

.method public getGeneralInfo()[Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;
    .locals 3

    .line 223
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    .line 225
    const/4 v0, 0x0

    return-object v0

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;

    .line 228
    .local v0, "results":[Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 230
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 231
    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;

    move-result-object v2

    aput-object v2, v0, v1

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getMessageTime()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->messageTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getProtectionAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->protectionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getPvno()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->pvno:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getRecipKID()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getRecipNonce()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getRecipient()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipient:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getSender()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getSenderKID()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->senderKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getSenderNonce()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getTransactionID()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 277
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 279
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->pvno:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 280
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 281
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipient:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 282
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->messageTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 283
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->protectionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 284
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->senderKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 285
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 286
    const/4 v1, 0x4

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 287
    const/4 v1, 0x5

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 288
    const/4 v1, 0x6

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 289
    const/4 v1, 0x7

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->freeText:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 290
    const/16 v1, 0x8

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 292
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
