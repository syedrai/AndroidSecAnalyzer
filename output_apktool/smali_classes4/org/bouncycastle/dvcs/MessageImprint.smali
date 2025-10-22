.class public Lorg/bouncycastle/dvcs/MessageImprint;
.super Ljava/lang/Object;
.source "MessageImprint.java"


# instance fields
.field private final messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/DigestInfo;)V
    .locals 0
    .param p1, "messageImprint"    # Lorg/bouncycastle/asn1/x509/DigestInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageImprint"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/bouncycastle/dvcs/MessageImprint;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 21
    if-ne p1, p0, :cond_0

    .line 23
    const/4 v0, 0x1

    return v0

    .line 26
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/dvcs/MessageImprint;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/dvcs/MessageImprint;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/dvcs/MessageImprint;

    iget-object v1, v1, Lorg/bouncycastle/dvcs/MessageImprint;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/DigestInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 31
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/dvcs/MessageImprint;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DigestInfo;->hashCode()I

    move-result v0

    return v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/x509/DigestInfo;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/bouncycastle/dvcs/MessageImprint;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    return-object v0
.end method
