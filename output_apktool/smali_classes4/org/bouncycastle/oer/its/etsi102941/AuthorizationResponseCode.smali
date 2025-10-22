.class public Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;
.super Lorg/bouncycastle/asn1/ASN1Enumerated;
.source "AuthorizationResponseCode.java"


# static fields
.field public static final aa_ea_cantreachea:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final deniedpermissions:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final deniedtoomanycerts:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final ea_aa_badcontenttype:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final ea_aa_cantparse:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final ea_aa_decryptionfailed:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final ea_aa_imnottherecipient:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final ea_aa_unknownencryptionalgorithm:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final invalidaa:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final invalidaasignature:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final invalidencryptionkey:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final invalidsignature:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final its_aa_badcontenttype:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final its_aa_cantparse:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final its_aa_decryptionfailed:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final its_aa_deniedpermissions:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final its_aa_imnottherecipient:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final its_aa_incompleterequest:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final its_aa_invalidea:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final its_aa_invalidencryptionkey:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final its_aa_keysdontmatch:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final its_aa_outofsyncrequest:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final its_aa_unknownea:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final its_aa_unknownencryptionalgorithm:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final ok:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final unknownits:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

.field public static final wrongea:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->ok:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 14
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->its_aa_cantparse:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 15
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->its_aa_badcontenttype:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 16
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->its_aa_imnottherecipient:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 17
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->its_aa_unknownencryptionalgorithm:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 18
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->its_aa_decryptionfailed:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 19
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->its_aa_keysdontmatch:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 20
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->its_aa_incompleterequest:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 21
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->its_aa_invalidencryptionkey:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 22
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->its_aa_outofsyncrequest:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 23
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->its_aa_unknownea:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 24
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->its_aa_invalidea:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 25
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->its_aa_deniedpermissions:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 27
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->aa_ea_cantreachea:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 29
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->ea_aa_cantparse:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 30
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->ea_aa_badcontenttype:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 31
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->ea_aa_imnottherecipient:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 32
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->ea_aa_unknownencryptionalgorithm:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 33
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->ea_aa_decryptionfailed:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 35
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->invalidaa:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 36
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->invalidaasignature:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 37
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->wrongea:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 38
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->unknownits:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 39
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->invalidsignature:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 40
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->invalidencryptionkey:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 41
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->deniedpermissions:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 42
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->deniedtoomanycerts:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

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

    .line 46
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    .line 47
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->assertValues()V

    .line 48
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

    .line 52
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(Ljava/math/BigInteger;)V

    .line 53
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->assertValues()V

    .line 54
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

    .line 73
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(Ljava/math/BigInteger;)V

    .line 74
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->assertValues()V

    .line 75
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

    .line 58
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    .line 59
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->assertValues()V

    .line 60
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;
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

    .line 79
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    if-eqz v0, :cond_0

    .line 81
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    return-object v0

    .line 84
    :cond_0
    if-eqz p0, :cond_1

    .line 86
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;-><init>(Lorg/bouncycastle/asn1/ASN1Enumerated;)V

    return-object v0

    .line 89
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected assertValues()V
    .locals 4

    .line 64
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_0

    .line 68
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->getValue()Ljava/math/BigInteger;

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
