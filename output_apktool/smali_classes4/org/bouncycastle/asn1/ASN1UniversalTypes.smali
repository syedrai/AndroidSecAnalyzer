.class final Lorg/bouncycastle/asn1/ASN1UniversalTypes;
.super Ljava/lang/Object;
.source "ASN1UniversalTypes.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method static get(I)Lorg/bouncycastle/asn1/ASN1UniversalType;
    .locals 1
    .param p0, "tagNumber"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagNumber"
        }
    .end annotation

    .line 11
    packed-switch p0, :pswitch_data_0

    .line 68
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 62
    :pswitch_1
    sget-object v0, Lorg/bouncycastle/asn1/ASN1BMPString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 60
    :pswitch_2
    sget-object v0, Lorg/bouncycastle/asn1/ASN1UniversalString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 58
    :pswitch_3
    sget-object v0, Lorg/bouncycastle/asn1/ASN1GeneralString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 56
    :pswitch_4
    sget-object v0, Lorg/bouncycastle/asn1/ASN1VisibleString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 54
    :pswitch_5
    sget-object v0, Lorg/bouncycastle/asn1/ASN1GraphicString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 52
    :pswitch_6
    sget-object v0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 50
    :pswitch_7
    sget-object v0, Lorg/bouncycastle/asn1/ASN1UTCTime;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 48
    :pswitch_8
    sget-object v0, Lorg/bouncycastle/asn1/ASN1IA5String;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 46
    :pswitch_9
    sget-object v0, Lorg/bouncycastle/asn1/ASN1VideotexString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 44
    :pswitch_a
    sget-object v0, Lorg/bouncycastle/asn1/ASN1T61String;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 42
    :pswitch_b
    sget-object v0, Lorg/bouncycastle/asn1/ASN1PrintableString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 40
    :pswitch_c
    sget-object v0, Lorg/bouncycastle/asn1/ASN1NumericString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 38
    :pswitch_d
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Set;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 36
    :pswitch_e
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Sequence;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 34
    :pswitch_f
    sget-object v0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 32
    :pswitch_10
    sget-object v0, Lorg/bouncycastle/asn1/ASN1UTF8String;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 30
    :pswitch_11
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Enumerated;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 28
    :pswitch_12
    sget-object v0, Lorg/bouncycastle/asn1/ASN1External;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 26
    :pswitch_13
    sget-object v0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 24
    :pswitch_14
    sget-object v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 22
    :pswitch_15
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Null;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 20
    :pswitch_16
    sget-object v0, Lorg/bouncycastle/asn1/ASN1OctetString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 18
    :pswitch_17
    sget-object v0, Lorg/bouncycastle/asn1/ASN1BitString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 16
    :pswitch_18
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Integer;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 14
    :pswitch_19
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_0
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
