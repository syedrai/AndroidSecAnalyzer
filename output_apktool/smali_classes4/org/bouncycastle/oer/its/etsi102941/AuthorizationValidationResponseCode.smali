.class public Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;
.super Lorg/bouncycastle/asn1/ASN1Enumerated;
.source "AuthorizationValidationResponseCode.java"


# static fields
.field public static final badcontenttype:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

.field public static final cantparse:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

.field public static final decryptionfailed:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

.field public static final deniedpermissions:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

.field public static final deniedrequest:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

.field public static final deniedtoomanycerts:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

.field public static final imnottherecipient:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

.field public static final invalidaa:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

.field public static final invalidaasignature:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

.field public static final invalidencryptionkey:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

.field public static final invalidsignature:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

.field public static final ok:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

.field public static final unknownencryptionalgorithm:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

.field public static final unknownits:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

.field public static final wrongea:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->ok:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    .line 11
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->cantparse:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    .line 12
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->badcontenttype:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    .line 13
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->imnottherecipient:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    .line 14
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->unknownencryptionalgorithm:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    .line 15
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->decryptionfailed:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    .line 16
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->invalidaa:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    .line 17
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->invalidaasignature:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    .line 18
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->wrongea:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    .line 19
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->unknownits:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    .line 20
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->invalidsignature:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    .line 21
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->invalidencryptionkey:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    .line 22
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->deniedpermissions:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    .line 23
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->deniedtoomanycerts:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    .line 24
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->deniedrequest:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    .line 29
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->assertValues()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(Ljava/math/BigInteger;)V

    .line 35
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->assertValues()V

    .line 36
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Enumerated;)V
    .locals 1
    .param p1, "instance"    # Lorg/bouncycastle/asn1/ASN1Enumerated;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(Ljava/math/BigInteger;)V

    .line 47
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->assertValues()V

    .line 48
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "contents"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contents"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    .line 41
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->assertValues()V

    .line 42
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;
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

    .line 61
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    return-object v0

    .line 66
    :cond_0
    if-eqz p0, :cond_1

    .line 68
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;-><init>(Lorg/bouncycastle/asn1/ASN1Enumerated;)V

    return-object v0

    .line 71
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected assertValues()V
    .locals 4

    .line 53
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/16 v1, 0xe

    if-gt v0, v1, :cond_0

    .line 57
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid enumeration value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
