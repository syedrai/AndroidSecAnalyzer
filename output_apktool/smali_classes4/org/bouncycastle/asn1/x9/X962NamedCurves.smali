.class public Lorg/bouncycastle/asn1/x9/X962NamedCurves;
.super Ljava/lang/Object;
.source "X962NamedCurves.java"


# static fields
.field static c2pnb163v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2pnb163v2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2pnb163v3:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2pnb176w1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2pnb208w1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2pnb272w1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2pnb304w1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2pnb368w1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2tnb191v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2tnb191v2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2tnb191v3:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2tnb239v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2tnb239v2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2tnb239v3:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2tnb359v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2tnb431r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static final curves:Ljava/util/Hashtable;

.field static final names:Ljava/util/Hashtable;

.field static final objIds:Ljava/util/Hashtable;

.field static prime192v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static prime192v2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static prime192v3:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static prime239v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static prime239v2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static prime239v3:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static prime256v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static bridge synthetic -$$Nest$smconfigureBasepoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECPoint;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->configureBasepoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smconfigureCurve(Lorg/bouncycastle/math/ec/ECCurve;)Lorg/bouncycastle/math/ec/ECCurve;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->configureCurve(Lorg/bouncycastle/math/ec/ECCurve;)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$1;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$1;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->prime192v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 62
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$2;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$2;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->prime192v2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 88
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$3;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$3;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->prime192v3:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 114
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$4;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$4;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->prime239v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 140
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$5;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$5;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->prime239v2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 166
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$6;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$6;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->prime239v3:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 192
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$7;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$7;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->prime256v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 221
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$8;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$8;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb163v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 248
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$9;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$9;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb163v2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 275
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$10;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$10;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb163v3:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 302
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$11;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$11;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb176w1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 329
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$12;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$12;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb191v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 356
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$13;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$13;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb191v2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 383
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$14;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$14;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb191v3:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 410
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$15;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$15;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb208w1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 437
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$16;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$16;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb239v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 464
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$17;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$17;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb239v2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 491
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$18;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$18;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb239v3:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 518
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$19;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$19;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb272w1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 545
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$20;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$20;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb304w1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 572
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$21;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$21;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb359v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 599
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$22;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$22;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb368w1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 626
    new-instance v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves$23;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$23;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb431r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 654
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->objIds:Ljava/util/Hashtable;

    .line 655
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->curves:Ljava/util/Hashtable;

    .line 656
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->names:Ljava/util/Hashtable;

    .line 667
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime192v1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->prime192v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "prime192v1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 668
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime192v2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->prime192v2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "prime192v2"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 669
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime192v3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->prime192v3:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "prime192v3"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 670
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime239v1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->prime239v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "prime239v1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 671
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime239v2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->prime239v2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "prime239v2"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 672
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime239v3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->prime239v3:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "prime239v3"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 673
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime256v1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->prime256v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "prime256v1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 674
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb163v1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb163v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb163v1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 675
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb163v2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb163v2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb163v2"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 676
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb163v3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb163v3:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb163v3"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 677
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb176w1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb176w1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb176w1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 678
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb191v1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb191v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb191v1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 679
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb191v2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb191v2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb191v2"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 680
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb191v3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb191v3:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb191v3"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 681
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb208w1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb208w1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb208w1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 682
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb239v1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb239v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb239v1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 683
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb239v2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb239v2:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb239v2"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 684
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb239v3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb239v3:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb239v3"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 685
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb272w1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb272w1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb272w1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 686
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb304w1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb304w1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb304w1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 687
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb359v1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb359v1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb359v1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 688
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb368w1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb368w1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb368w1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 689
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb431r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb431r1:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb431r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 690
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
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

    .line 21
    new-instance v0, Lorg/bouncycastle/asn1/x9/X9ECPoint;

    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECCurve;[B)V

    .line 22
    .local v0, "G":Lorg/bouncycastle/asn1/x9/X9ECPoint;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/math/ec/WNafUtil;->configureBasepoint(Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 23
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

    .line 28
    return-object p0
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

    .line 660
    sget-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    sget-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
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

    .line 33
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

    .line 694
    invoke-static {p0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 695
    .local v0, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

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

    .line 700
    invoke-static {p0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 701
    .local v0, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->getByOIDLazy(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

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

    .line 712
    invoke-static {p0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->getByOIDLazy(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v0

    .line 713
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

    .line 718
    sget-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->curves:Ljava/util/Hashtable;

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

    .line 739
    sget-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 1

    .line 748
    sget-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

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

    .line 730
    sget-object v0, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
