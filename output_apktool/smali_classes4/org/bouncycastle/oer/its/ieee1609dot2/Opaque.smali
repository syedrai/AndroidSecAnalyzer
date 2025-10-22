.class public Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Opaque.java"


# instance fields
.field private final content:[B


# direct methods
.method static bridge synthetic -$$Nest$fgetcontent(Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;->content:[B

    return-object p0
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1
    .param p1, "value"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;-><init>([B)V

    .line 32
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;->content:[B

    .line 27
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;
    .locals 2
    .param p0, "src"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 36
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    if-eqz v0, :cond_0

    .line 38
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    return-object v0

    .line 40
    :cond_0
    if-eqz p0, :cond_1

    .line 42
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0

    .line 45
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getValue(Ljava/lang/Class;Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;)Ljava/lang/Object;
    .locals 1
    .param p1, "definition"    # Lorg/bouncycastle/oer/Element;
    .param p2, "src"    # Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "type",
            "definition",
            "src"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/bouncycastle/oer/Element;",
            "Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;",
            ")TT;"
        }
    .end annotation

    .line 65
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque$1;

    invoke-direct {v0, p2, p1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque$1;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;Lorg/bouncycastle/oer/Element;Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContent()[B
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;->content:[B

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 60
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 50
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;->content:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method
