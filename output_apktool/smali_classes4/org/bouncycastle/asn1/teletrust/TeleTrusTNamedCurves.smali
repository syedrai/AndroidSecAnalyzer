.class public Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;
.super Ljava/lang/Object;
.source "TeleTrusTNamedCurves.java"


# static fields
.field static brainpoolP160r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static brainpoolP160t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static brainpoolP192r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static brainpoolP192t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static brainpoolP224r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static brainpoolP224t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static brainpoolP256r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static brainpoolP256t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static brainpoolP320r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static brainpoolP320t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static brainpoolP384r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static brainpoolP384t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static brainpoolP512r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static brainpoolP512t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static final curves:Ljava/util/Hashtable;

.field static final names:Ljava/util/Hashtable;

.field static final objIds:Ljava/util/Hashtable;


# direct methods
.method static bridge synthetic -$$Nest$smconfigureBasepoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECPoint;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->configureBasepoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smconfigureCurve(Lorg/bouncycastle/math/ec/ECCurve;)Lorg/bouncycastle/math/ec/ECCurve;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->configureCurve(Lorg/bouncycastle/math/ec/ECCurve;)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$1;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$1;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP160r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 65
    new-instance v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$2;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$2;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP160t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 92
    new-instance v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$3;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$3;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP192r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 118
    new-instance v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$4;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$4;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP192t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 145
    new-instance v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$5;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$5;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP224r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 171
    new-instance v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$6;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$6;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP224t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 198
    new-instance v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$7;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$7;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP256r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 224
    new-instance v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$8;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$8;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP256t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 251
    new-instance v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$9;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$9;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP320r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 277
    new-instance v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$10;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$10;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP320t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 304
    new-instance v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$11;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$11;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP384r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 330
    new-instance v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$12;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$12;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP384t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 357
    new-instance v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$13;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$13;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP512r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 383
    new-instance v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$14;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$14;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP512t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 411
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->objIds:Ljava/util/Hashtable;

    .line 412
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->curves:Ljava/util/Hashtable;

    .line 413
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->names:Ljava/util/Hashtable;

    .line 424
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP160r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP160r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "brainpoolP160r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 425
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP160t1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP160t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "brainpoolP160t1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 426
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP192r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP192r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "brainpoolP192r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 427
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP192t1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP192t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "brainpoolP192t1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 428
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP224r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP224r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "brainpoolP224r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 429
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP224t1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP224t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "brainpoolP224t1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 430
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP256r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "brainpoolP256r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 431
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256t1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP256t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "brainpoolP256t1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 432
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP320r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP320r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "brainpoolP320r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 433
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP320t1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP320t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "brainpoolP320t1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 434
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP384r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "brainpoolP384r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 435
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384t1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP384t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "brainpoolP384t1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 436
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP512r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP512r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "brainpoolP512r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 437
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP512t1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->brainpoolP512t1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "brainpoolP512t1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 438
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

.method static defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 2
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

    .line 417
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
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

    .line 36
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

    .line 442
    invoke-static {p0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 443
    .local v0, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

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

    .line 448
    invoke-static {p0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 449
    .local v0, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->getByOIDLazy(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

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

    .line 460
    invoke-static {p0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->getByOIDLazy(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v0

    .line 461
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

    .line 466
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->curves:Ljava/util/Hashtable;

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

    .line 487
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 1

    .line 496
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->names:Ljava/util/Hashtable;

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

    .line 478
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public static getOID(SZ)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 3
    .param p0, "curvesize"    # S
    .param p1, "twisted"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "curvesize",
            "twisted"
        }
    .end annotation

    .line 501
    if-eqz p1, :cond_0

    const-string/jumbo v0, "t"

    goto :goto_0

    :cond_0
    const-string v0, "r"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brainpoolP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method
