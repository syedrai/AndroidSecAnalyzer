.class public Lorg/bouncycastle/asn1/sec/SECNamedCurves;
.super Ljava/lang/Object;
.source "SECNamedCurves.java"


# static fields
.field static final curves:Ljava/util/Hashtable;

.field static final names:Ljava/util/Hashtable;

.field static final objIds:Ljava/util/Hashtable;

.field static secp112r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp112r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp128r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp128r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp160k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp160r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp160r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp192k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp192r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp224k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp224r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp256k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp256r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp384r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp521r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect113r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect113r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect131r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect131r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect163k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect163r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect163r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect193r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect193r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect233k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect233r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect239k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect283k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect283r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect409k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect409r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect571k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect571r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static bridge synthetic -$$Nest$smconfigureBasepoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECPoint;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->configureBasepoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smconfigureCurve(Lorg/bouncycastle/math/ec/ECCurve;)Lorg/bouncycastle/math/ec/ECCurve;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->configureCurve(Lorg/bouncycastle/math/ec/ECCurve;)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smconfigureCurveGLV(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lorg/bouncycastle/math/ec/ECCurve;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->configureCurveGLV(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$1;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$1;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp112r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 76
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$2;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$2;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp112r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 105
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$3;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$3;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp128r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 134
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$4;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$4;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp128r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 163
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$5;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$5;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp160k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 206
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$6;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$6;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp160r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 235
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$7;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$7;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp160r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 264
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$8;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$8;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp192k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 307
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$9;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$9;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp192r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 336
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$10;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$10;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp224k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 379
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$11;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$11;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp224r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 408
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$12;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$12;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp256k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 451
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$13;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$13;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp256r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 480
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$14;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$14;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp384r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 510
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$15;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$15;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp521r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 540
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$16;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$16;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect113r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 570
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$17;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$17;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect113r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 600
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$18;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$18;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect131r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 632
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$19;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$19;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect131r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 664
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$20;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$20;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect163k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 696
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$21;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$21;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect163r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 728
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$22;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$22;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect163r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 760
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$23;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$23;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect193r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 790
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$24;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$24;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect193r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 820
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$25;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$25;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect233k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 850
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$26;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$26;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect233r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 880
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$27;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$27;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect239k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 910
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$28;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$28;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect283k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 943
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$29;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$29;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect283r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 976
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$30;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$30;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect409k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 1007
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$31;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$31;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect409r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 1038
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$32;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$32;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect571k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 1071
    new-instance v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves$33;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$33;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect571r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 1102
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    .line 1103
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    .line 1104
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    .line 1115
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp112r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp112r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1116
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp112r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp112r2"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1117
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp128r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp128r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1118
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp128r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp128r2"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1119
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp160k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp160k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1120
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp160r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp160r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1121
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp160r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp160r2"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1122
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp192k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp192k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1123
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp192r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp192r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1124
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp224k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp224k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1125
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp224r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp224r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1126
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp256k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp256k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1127
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp256r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp256r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1128
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp384r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp384r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1129
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->secp521r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp521r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1131
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect113r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect113r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1132
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect113r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect113r2"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1133
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect131r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect131r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1134
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect131r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect131r2"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1135
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect163k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect163k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1136
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect163r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect163r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1137
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect163r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect163r2"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1138
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect193r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect193r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1139
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect193r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect193r2"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1140
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect233k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect233k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1141
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect233r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect233r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1142
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect239k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect239k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect239k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1143
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect283k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect283k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1144
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect283r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect283r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1145
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect409k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect409k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1146
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect409r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect409r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1147
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect571k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect571k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1148
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->sect571r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect571r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1149
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static configureBasepoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECPoint;
    .locals 2
    .param p0, "curve"    # Lorg/bouncycastle/math/ec/ECCurve;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "curve",
            "encoding"
        }
    .end annotation

    .line 24
    new-instance v0, Lorg/bouncycastle/asn1/x9/X9ECPoint;

    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECCurve;[B)V

    .line 25
    .local v0, "G":Lorg/bouncycastle/asn1/x9/X9ECPoint;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/math/ec/WNafUtil;->configureBasepoint(Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 26
    return-object v0
.end method

.method private static configureCurve(Lorg/bouncycastle/math/ec/ECCurve;)Lorg/bouncycastle/math/ec/ECCurve;
    .locals 0
    .param p0, "curve"    # Lorg/bouncycastle/math/ec/ECCurve;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation

    .line 31
    return-object p0
.end method

.method private static configureCurveGLV(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lorg/bouncycastle/math/ec/ECCurve;
    .locals 2
    .param p0, "c"    # Lorg/bouncycastle/math/ec/ECCurve;
    .param p1, "p"    # Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "p"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->configure()Lorg/bouncycastle/math/ec/ECCurve$Config;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;

    invoke-direct {v1, p0, p1}, Lorg/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECCurve$Config;->setEndomorphism(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;)Lorg/bouncycastle/math/ec/ECCurve$Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$Config;->create()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method static defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "holder"    # Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "oid",
            "holder"
        }
    .end annotation

    .line 1108
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    return-void
.end method

.method private static fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "hex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hex"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1153
    invoke-static {p0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 1154
    .local v0, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getByNameLazy(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1159
    invoke-static {p0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 1160
    .local v0, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->getByOIDLazy(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 2
    .param p0, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oid"
        }
    .end annotation

    .line 1171
    invoke-static {p0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->getByOIDLazy(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v0

    .line 1172
    .local v0, "holder":Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getByOIDLazy(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;
    .locals 1
    .param p0, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oid"
        }
    .end annotation

    .line 1177
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    return-object v0
.end method

.method public static getName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oid"
        }
    .end annotation

    .line 1198
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 1

    .line 1207
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1189
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
