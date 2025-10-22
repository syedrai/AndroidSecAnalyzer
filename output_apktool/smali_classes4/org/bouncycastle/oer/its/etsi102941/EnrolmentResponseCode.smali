.class public Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;
.super Lorg/bouncycastle/asn1/ASN1Enumerated;
.source "EnrolmentResponseCode.java"


# static fields
.field public static final badcontenttype:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

.field public static final baditsstatus:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

.field public static final cantparse:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

.field public static final decryptionfailed:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

.field public static final deniedpermissions:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

.field public static final deniedrequest:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

.field public static final imnottherecipient:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

.field public static final incompleterequest:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

.field public static final invalidencryptionkey:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

.field public static final invalidkeys:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

.field public static final invalidsignature:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

.field public static final ok:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

.field public static final unknownencryptionalgorithm:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

.field public static final unknownits:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->ok:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    .line 11
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->cantparse:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    .line 12
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->badcontenttype:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    .line 13
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->imnottherecipient:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    .line 14
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->unknownencryptionalgorithm:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    .line 15
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->decryptionfailed:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    .line 16
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->unknownits:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    .line 17
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->invalidsignature:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    .line 18
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->invalidencryptionkey:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    .line 19
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->baditsstatus:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    .line 20
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->incompleterequest:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    .line 21
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->deniedpermissions:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    .line 22
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->invalidkeys:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    .line 23
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->deniedrequest:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

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

    .line 27
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    .line 28
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->assertValues()V

    .line 29
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

    .line 33
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(Ljava/math/BigInteger;)V

    .line 34
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->assertValues()V

    .line 35
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Enumerated;)V
    .locals 1
    .param p1, "enumerated"    # Lorg/bouncycastle/asn1/ASN1Enumerated;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumerated"
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;-><init>(Ljava/math/BigInteger;)V

    .line 46
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

    .line 39
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    .line 40
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->assertValues()V

    .line 41
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;
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

    .line 50
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    return-object v0

    .line 54
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;-><init>(Lorg/bouncycastle/asn1/ASN1Enumerated;)V

    return-object v0

    .line 58
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected assertValues()V
    .locals 4

    .line 63
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/16 v1, 0xd

    if-gt v0, v1, :cond_0

    .line 67
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;->getValue()Ljava/math/BigInteger;

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
