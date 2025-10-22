.class public Lorg/bouncycastle/asn1/cmp/PKIBody;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PKIBody.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final TYPE_CA_KEY_UPDATE_ANN:I = 0xf

.field public static final TYPE_CERT_ANN:I = 0x10

.field public static final TYPE_CERT_CONFIRM:I = 0x18

.field public static final TYPE_CERT_REP:I = 0x3

.field public static final TYPE_CERT_REQ:I = 0x2

.field public static final TYPE_CONFIRM:I = 0x13

.field public static final TYPE_CRL_ANN:I = 0x12

.field public static final TYPE_CROSS_CERT_REP:I = 0xe

.field public static final TYPE_CROSS_CERT_REQ:I = 0xd

.field public static final TYPE_ERROR:I = 0x17

.field public static final TYPE_GEN_MSG:I = 0x15

.field public static final TYPE_GEN_REP:I = 0x16

.field public static final TYPE_INIT_REP:I = 0x1

.field public static final TYPE_INIT_REQ:I = 0x0

.field public static final TYPE_KEY_RECOVERY_REP:I = 0xa

.field public static final TYPE_KEY_RECOVERY_REQ:I = 0x9

.field public static final TYPE_KEY_UPDATE_REP:I = 0x8

.field public static final TYPE_KEY_UPDATE_REQ:I = 0x7

.field public static final TYPE_NESTED:I = 0x14

.field public static final TYPE_P10_CERT_REQ:I = 0x4

.field public static final TYPE_POLL_REP:I = 0x1a

.field public static final TYPE_POLL_REQ:I = 0x19

.field public static final TYPE_POPO_CHALL:I = 0x5

.field public static final TYPE_POPO_REP:I = 0x6

.field public static final TYPE_REVOCATION_ANN:I = 0x11

.field public static final TYPE_REVOCATION_REP:I = 0xc

.field public static final TYPE_REVOCATION_REQ:I = 0xb


# instance fields
.field private final body:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private final tagNo:I


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "content"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "content"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 106
    iput p1, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->tagNo:I

    .line 107
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getBodyForType(ILorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->body:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 108
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 4
    .param p1, "tagged"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagged"
        }
    .end annotation

    .line 80
    const-string v0, "malformed body found: "

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->tagNo:I

    .line 84
    :try_start_0
    iget v1, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->tagNo:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getBodyForType(ILorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->body:Lorg/bouncycastle/asn1/ASN1Encodable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    nop

    .line 94
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Exceptions;->illegalArgumentException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 86
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Exceptions;->illegalArgumentException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static getBodyForType(ILorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 6
    .param p0, "type"    # I
    .param p1, "o"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "o"
        }
    .end annotation

    .line 131
    const-string v0, " has incorrect type got: "

    const-string v1, "body type of "

    packed-switch p0, :pswitch_data_0

    .line 188
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_0

    .line 186
    :pswitch_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PollRepContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PollRepContent;

    move-result-object v0

    return-object v0

    .line 184
    :pswitch_1
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PollReqContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PollReqContent;

    move-result-object v0

    return-object v0

    .line 182
    :pswitch_2
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    move-result-object v0

    return-object v0

    .line 180
    :pswitch_3
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;

    move-result-object v0

    return-object v0

    .line 178
    :pswitch_4
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/GenRepContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/GenRepContent;

    move-result-object v0

    return-object v0

    .line 176
    :pswitch_5
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/GenMsgContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/GenMsgContent;

    move-result-object v0

    return-object v0

    .line 174
    :pswitch_6
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PKIMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIMessages;

    move-result-object v0

    return-object v0

    .line 172
    :pswitch_7
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;

    move-result-object v0

    return-object v0

    .line 170
    :pswitch_8
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CRLAnnContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CRLAnnContent;

    move-result-object v0

    return-object v0

    .line 168
    :pswitch_9
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/RevAnnContent;

    move-result-object v0

    return-object v0

    .line 166
    :pswitch_a
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v0

    return-object v0

    .line 164
    :pswitch_b
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;

    move-result-object v0

    return-object v0

    .line 162
    :pswitch_c
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CertRepMessage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertRepMessage;

    move-result-object v0

    return-object v0

    .line 160
    :pswitch_d
    invoke-static {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    move-result-object v0

    return-object v0

    .line 158
    :pswitch_e
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/RevRepContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/RevRepContent;

    move-result-object v0

    return-object v0

    .line 156
    :pswitch_f
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/RevReqContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/RevReqContent;

    move-result-object v0

    return-object v0

    .line 154
    :pswitch_10
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/KeyRecRepContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/KeyRecRepContent;

    move-result-object v0

    return-object v0

    .line 152
    :pswitch_11
    invoke-static {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    move-result-object v0

    return-object v0

    .line 150
    :pswitch_12
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CertRepMessage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertRepMessage;

    move-result-object v0

    return-object v0

    .line 148
    :pswitch_13
    invoke-static {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    move-result-object v0

    return-object v0

    .line 146
    :pswitch_14
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;

    move-result-object v0

    return-object v0

    .line 144
    :pswitch_15
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;

    move-result-object v0

    return-object v0

    .line 142
    :pswitch_16
    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v0

    return-object v0

    .line 140
    :pswitch_17
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CertRepMessage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertRepMessage;

    move-result-object v0

    return-object v0

    .line 138
    :pswitch_18
    invoke-static {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    move-result-object v0

    return-object v0

    .line 136
    :pswitch_19
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CertRepMessage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertRepMessage;

    move-result-object v0

    return-object v0

    .line 134
    :pswitch_1a
    invoke-static {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    move-result-object v0

    return-object v0

    .line 195
    :catch_0
    move-exception v2

    goto :goto_1

    .line 191
    :catch_1
    move-exception v2

    goto :goto_2

    .line 188
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown tag number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "type":I
    .end local p1    # "o":Lorg/bouncycastle/asn1/ASN1Encodable;
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    .restart local p0    # "type":I
    .restart local p1    # "o":Lorg/bouncycastle/asn1/ASN1Encodable;
    :goto_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 193
    .local v2, "e":Ljava/lang/ClassCastException;
    :goto_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIBody;
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

    .line 112
    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    .line 119
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIBody;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIBody;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/PKIBody;

    return-object v0
.end method


# virtual methods
.method public getContent()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->body:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 203
    iget v0, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->tagNo:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 248
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->tagNo:I

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->body:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
