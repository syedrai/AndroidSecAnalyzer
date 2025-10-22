.class public Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;
.super Ljava/lang/Object;
.source "ECGOST3410NamedCurves.java"


# static fields
.field static final curves:Ljava/util/Hashtable;

.field static gostR3410_2001_CryptoPro_A:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static gostR3410_2001_CryptoPro_B:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static gostR3410_2001_CryptoPro_C:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static id_tc26_gost_3410_12_256_paramSetA:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static id_tc26_gost_3410_12_512_paramSetA:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static id_tc26_gost_3410_12_512_paramSetB:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static id_tc26_gost_3410_12_512_paramSetC:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static final names:Ljava/util/Hashtable;

.field static final objIds:Ljava/util/Hashtable;


# direct methods
.method static bridge synthetic -$$Nest$smconfigureBasepoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/asn1/x9/X9ECPoint;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->configureBasepoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smconfigureCurve(Lorg/bouncycastle/math/ec/ECCurve;)Lorg/bouncycastle/math/ec/ECCurve;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->configureCurve(Lorg/bouncycastle/math/ec/ECCurve;)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves$1;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves$1;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->gostR3410_2001_CryptoPro_A:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 73
    new-instance v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves$2;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves$2;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->gostR3410_2001_CryptoPro_B:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 103
    new-instance v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves$3;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves$3;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->gostR3410_2001_CryptoPro_C:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 133
    new-instance v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves$4;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves$4;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->id_tc26_gost_3410_12_256_paramSetA:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 163
    new-instance v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves$5;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves$5;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->id_tc26_gost_3410_12_512_paramSetA:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 193
    new-instance v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves$6;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves$6;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->id_tc26_gost_3410_12_512_paramSetB:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 223
    new-instance v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves$7;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves$7;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->id_tc26_gost_3410_12_512_paramSetC:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 251
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    .line 252
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->curves:Ljava/util/Hashtable;

    .line 253
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->names:Ljava/util/Hashtable;

    .line 264
    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_A:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->gostR3410_2001_CryptoPro_A:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "GostR3410-2001-CryptoPro-A"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 265
    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_B:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->gostR3410_2001_CryptoPro_B:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "GostR3410-2001-CryptoPro-B"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 266
    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_C:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->gostR3410_2001_CryptoPro_C:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "GostR3410-2001-CryptoPro-C"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 267
    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->gostR3410_2001_CryptoPro_A:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "GostR3410-2001-CryptoPro-XchA"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 268
    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->gostR3410_2001_CryptoPro_C:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "GostR3410-2001-CryptoPro-XchB"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 269
    sget-object v0, Lorg/bouncycastle/internal/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_256_paramSetA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->id_tc26_gost_3410_12_256_paramSetA:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "Tc26-Gost-3410-12-256-paramSetA"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 270
    sget-object v0, Lorg/bouncycastle/internal/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_256_paramSetB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->gostR3410_2001_CryptoPro_A:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "Tc26-Gost-3410-12-256-paramSetB"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 271
    sget-object v0, Lorg/bouncycastle/internal/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_256_paramSetC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->gostR3410_2001_CryptoPro_B:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "Tc26-Gost-3410-12-256-paramSetC"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 272
    sget-object v0, Lorg/bouncycastle/internal/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_256_paramSetD:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->gostR3410_2001_CryptoPro_C:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "Tc26-Gost-3410-12-256-paramSetD"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 273
    sget-object v0, Lorg/bouncycastle/internal/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_512_paramSetA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->id_tc26_gost_3410_12_512_paramSetA:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "Tc26-Gost-3410-12-512-paramSetA"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 274
    sget-object v0, Lorg/bouncycastle/internal/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_512_paramSetB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->id_tc26_gost_3410_12_512_paramSetB:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "Tc26-Gost-3410-12-512-paramSetB"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 275
    sget-object v0, Lorg/bouncycastle/internal/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_512_paramSetC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->id_tc26_gost_3410_12_512_paramSetC:Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "Tc26-Gost-3410-12-512-paramSetC"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->defineCurve(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 276
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static configureBasepoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/asn1/x9/X9ECPoint;
    .locals 3
    .param p0, "curve"    # Lorg/bouncycastle/math/ec/ECCurve;
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "curve",
            "x",
            "y"
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 26
    .local v0, "G":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-static {v0}, Lorg/bouncycastle/math/ec/WNafUtil;->configureBasepoint(Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 27
    new-instance v1, Lorg/bouncycastle/asn1/x9/X9ECPoint;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Z)V

    return-object v1
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

    .line 32
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

    .line 257
    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
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

    .line 37
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
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

    .line 286
    invoke-static {p0}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 287
    .local v0, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getByOIDLazy(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getByNameX9(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;
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

    .line 280
    invoke-static {p0}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 281
    .local v0, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getByOIDX9(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

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

    .line 298
    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    return-object v0
.end method

.method public static getByOIDX9(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;
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

    .line 292
    invoke-static {p0}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getByOIDLazy(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v0

    .line 293
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

    .line 312
    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 1

    .line 321
    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 303
    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
