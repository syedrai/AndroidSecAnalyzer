.class public Lorg/bouncycastle/est/EnrollmentResponse;
.super Ljava/lang/Object;
.source "EnrollmentResponse.java"


# instance fields
.field private final notBefore:J

.field private final privateKeyInfo:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

.field private final requestToRetry:Lorg/bouncycastle/est/ESTRequest;

.field private final source:Lorg/bouncycastle/est/Source;

.field private final store:Lorg/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bouncycastle/util/Store;JLorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)V
    .locals 1
    .param p2, "notBefore"    # J
    .param p4, "requestToRetry"    # Lorg/bouncycastle/est/ESTRequest;
    .param p5, "session"    # Lorg/bouncycastle/est/Source;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "store",
            "notBefore",
            "requestToRetry",
            "session"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;J",
            "Lorg/bouncycastle/est/ESTRequest;",
            "Lorg/bouncycastle/est/Source;",
            ")V"
        }
    .end annotation

    .line 20
    .local p1, "store":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/est/EnrollmentResponse;->store:Lorg/bouncycastle/util/Store;

    .line 22
    iput-wide p2, p0, Lorg/bouncycastle/est/EnrollmentResponse;->notBefore:J

    .line 23
    iput-object p4, p0, Lorg/bouncycastle/est/EnrollmentResponse;->requestToRetry:Lorg/bouncycastle/est/ESTRequest;

    .line 24
    iput-object p5, p0, Lorg/bouncycastle/est/EnrollmentResponse;->source:Lorg/bouncycastle/est/Source;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/est/EnrollmentResponse;->privateKeyInfo:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/util/Store;JLorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 0
    .param p2, "notBefore"    # J
    .param p4, "requestToRetry"    # Lorg/bouncycastle/est/ESTRequest;
    .param p5, "session"    # Lorg/bouncycastle/est/Source;
    .param p6, "privateKeyInfo"    # Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "store",
            "notBefore",
            "requestToRetry",
            "session",
            "privateKeyInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;J",
            "Lorg/bouncycastle/est/ESTRequest;",
            "Lorg/bouncycastle/est/Source;",
            "Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;",
            ")V"
        }
    .end annotation

    .line 34
    .local p1, "store":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/bouncycastle/est/EnrollmentResponse;->store:Lorg/bouncycastle/util/Store;

    .line 36
    iput-wide p2, p0, Lorg/bouncycastle/est/EnrollmentResponse;->notBefore:J

    .line 37
    iput-object p4, p0, Lorg/bouncycastle/est/EnrollmentResponse;->requestToRetry:Lorg/bouncycastle/est/ESTRequest;

    .line 38
    iput-object p5, p0, Lorg/bouncycastle/est/EnrollmentResponse;->source:Lorg/bouncycastle/est/Source;

    .line 39
    iput-object p6, p0, Lorg/bouncycastle/est/EnrollmentResponse;->privateKeyInfo:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 40
    return-void
.end method


# virtual methods
.method public canRetry()Z
    .locals 5

    .line 45
    iget-wide v0, p0, Lorg/bouncycastle/est/EnrollmentResponse;->notBefore:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNotBefore()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lorg/bouncycastle/est/EnrollmentResponse;->notBefore:J

    return-wide v0
.end method

.method public getPrivateKeyInfo()Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/est/EnrollmentResponse;->privateKeyInfo:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    return-object v0
.end method

.method public getRequestToRetry()Lorg/bouncycastle/est/ESTRequest;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/est/EnrollmentResponse;->requestToRetry:Lorg/bouncycastle/est/ESTRequest;

    return-object v0
.end method

.method public getSession()Ljava/lang/Object;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/est/EnrollmentResponse;->source:Lorg/bouncycastle/est/Source;

    invoke-interface {v0}, Lorg/bouncycastle/est/Source;->getSession()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lorg/bouncycastle/est/Source;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/est/EnrollmentResponse;->source:Lorg/bouncycastle/est/Source;

    return-object v0
.end method

.method public getStore()Lorg/bouncycastle/util/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/est/EnrollmentResponse;->store:Lorg/bouncycastle/util/Store;

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/est/EnrollmentResponse;->requestToRetry:Lorg/bouncycastle/est/ESTRequest;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
