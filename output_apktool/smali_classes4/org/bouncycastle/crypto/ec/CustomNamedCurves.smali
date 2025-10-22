.class public Lorg/bouncycastle/crypto/ec/CustomNamedCurves;
.super Ljava/lang/Object;
.source "CustomNamedCurves.java"


# static fields
.field static curve25519:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static final nameToCurve:Ljava/util/Hashtable;

.field static final nameToOID:Ljava/util/Hashtable;

.field static final names:Ljava/util/Vector;

.field static final oidToCurve:Ljava/util/Hashtable;

.field static final oidToName:Ljava/util/Hashtable;

.field static secp128r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

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

.field static sm2p256v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static bridge synthetic -$$Nest$smconfigureBasepoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECPoint;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->configureBasepoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smconfigureCurve(Lorg/bouncycastle/math/ec/ECCurve;)Lorg/bouncycastle/math/ec/ECCurve;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->configureCurve(Lorg/bouncycastle/math/ec/ECCurve;)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smconfigureCurveGLV(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lorg/bouncycastle/math/ec/ECCurve;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->configureCurveGLV(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 77
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$1;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$1;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->curve25519:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 108
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$2;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$2;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp128r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 128
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$3;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$3;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp160k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 161
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$4;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$4;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp160r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 181
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$5;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$5;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp160r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 201
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$6;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$6;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp192k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 234
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$7;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$7;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp192r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 254
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$8;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$8;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp224k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 287
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$9;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$9;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp224r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 307
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$10;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$10;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp256k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 340
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$11;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$11;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp256r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 360
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$12;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$12;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp384r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 381
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$13;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$13;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp521r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 402
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$14;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$14;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect113r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 422
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$15;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$15;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect113r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 442
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$16;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$16;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect131r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 462
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$17;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$17;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect131r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 482
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$18;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$18;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect163k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 502
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$19;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$19;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect163r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 522
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$20;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$20;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect163r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 542
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$21;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$21;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect193r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 562
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$22;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$22;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect193r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 582
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$23;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$23;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect233k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 602
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$24;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$24;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect233r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 622
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$25;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$25;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect239k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 642
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$26;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$26;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect283k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 663
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$27;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$27;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect283r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 684
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$28;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$28;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect409k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 705
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$29;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$29;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect409r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 726
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$30;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$30;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect571k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 747
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$31;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$31;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect571r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 768
    new-instance v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$32;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$32;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sm2p256v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 786
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    .line 787
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    .line 788
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    .line 789
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    .line 790
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    .line 824
    sget-object v0, Lorg/bouncycastle/internal/asn1/cryptlib/CryptlibObjectIdentifiers;->curvey25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->curve25519:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "curve25519"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 828
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp128r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp128r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 830
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp160k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp160k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 831
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp160r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp160r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 832
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp160r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp160r2"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 833
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp192k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp192k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 834
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp192r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp192r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 835
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp224k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp224k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 836
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp224r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp224r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 837
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp256k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp256k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 838
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp256r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp256r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 839
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp384r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp384r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 840
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->secp521r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp521r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 842
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect113r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect113r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 843
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect113r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect113r2"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 844
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect131r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect131r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 845
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect131r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect131r2"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 846
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect163k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect163k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 847
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect163r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect163r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 848
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect163r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect163r2"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 849
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect193r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect193r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 850
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect193r2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect193r2"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 851
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect233k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect233k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 852
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect233r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect233r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 853
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect239k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect239k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect239k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 854
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect283k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect283k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 855
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect283r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect283r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 856
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect409k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect409k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 857
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect409r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect409r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 858
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect571k1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect571k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 859
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sect571r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect571r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 861
    sget-object v0, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2p256v1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->sm2p256v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sm2p256v1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 863
    const-string v0, "B-163"

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 864
    const-string v0, "B-233"

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 865
    const-string v0, "B-283"

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 866
    const-string v0, "B-409"

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 867
    const-string v0, "B-571"

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 869
    const-string v0, "K-163"

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 870
    const-string v0, "K-233"

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 871
    const-string v0, "K-283"

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 872
    const-string v0, "K-409"

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 873
    const-string v0, "K-571"

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 875
    const-string v0, "P-192"

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 876
    const-string v0, "P-224"

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 877
    const-string v0, "P-256"

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 878
    const-string v0, "P-384"

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 879
    const-string v0, "P-521"

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 880
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
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

    .line 59
    new-instance v0, Lorg/bouncycastle/asn1/x9/X9ECPoint;

    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECCurve;[B)V

    .line 60
    .local v0, "G":Lorg/bouncycastle/asn1/x9/X9ECPoint;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/math/ec/WNafUtil;->configureBasepoint(Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 61
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

    .line 66
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

    .line 71
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

.method static defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "holder"    # Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "holder"
        }
    .end annotation

    .line 794
    sget-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 795
    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 796
    sget-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    return-void
.end method

.method static defineCurveAlias(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "oid"
        }
    .end annotation

    .line 811
    sget-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 812
    .local v0, "curve":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 817
    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 818
    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    sget-object v1, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    return-void

    .line 814
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method static defineCurveWithOID(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V
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

    .line 801
    sget-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 802
    sget-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    sget-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 805
    sget-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    sget-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    return-void
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

    .line 884
    invoke-static {p0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->getByNameLazy(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v0

    .line 885
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

    .line 890
    sget-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    return-object v0
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

    .line 902
    invoke-static {p0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->getByOIDLazy(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v0

    .line 903
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

    .line 908
    sget-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

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

    .line 927
    sget-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 1

    .line 935
    sget-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

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

    .line 919
    sget-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
