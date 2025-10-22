.class public Lorg/bouncycastle/est/ESTService;
.super Ljava/lang/Object;
.source "ESTService.java"


# static fields
.field protected static final CACERTS:Ljava/lang/String; = "/cacerts"

.field protected static final CSRATTRS:Ljava/lang/String; = "/csrattrs"

.field protected static final FULLCMC:Ljava/lang/String; = "/fullcmc"

.field protected static final SERVERGEN:Ljava/lang/String; = "/serverkeygen"

.field protected static final SIMPLE_ENROLL:Ljava/lang/String; = "/simpleenroll"

.field protected static final SIMPLE_REENROLL:Ljava/lang/String; = "/simplereenroll"

.field protected static final illegalParts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final pathInValid:Ljava/util/regex/Pattern;


# instance fields
.field private final clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

.field private final server:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mannotateRequest(Lorg/bouncycastle/est/ESTService;[B)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/est/ESTService;->annotateRequest([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/est/ESTService;->illegalParts:Ljava/util/Set;

    .line 59
    sget-object v0, Lorg/bouncycastle/est/ESTService;->illegalParts:Ljava/util/Set;

    const-string v1, "/cacerts"

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lorg/bouncycastle/est/ESTService;->illegalParts:Ljava/util/Set;

    const-string v1, "/simpleenroll"

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lorg/bouncycastle/est/ESTService;->illegalParts:Ljava/util/Set;

    const-string v1, "/simplereenroll"

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lorg/bouncycastle/est/ESTService;->illegalParts:Ljava/util/Set;

    const-string v1, "/fullcmc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lorg/bouncycastle/est/ESTService;->illegalParts:Ljava/util/Set;

    const-string v1, "/serverkeygen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lorg/bouncycastle/est/ESTService;->illegalParts:Ljava/util/Set;

    const-string v1, "/csrattrs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v0, "^[0-9a-zA-Z_\\-.~!$&\'()*+,;:=]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/est/ESTService;->pathInValid:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/est/ESTClientProvider;)V
    .locals 2
    .param p1, "serverAuthority"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "clientProvider"    # Lorg/bouncycastle/est/ESTClientProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "serverAuthority",
            "label",
            "clientProvider"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-direct {p0, p1}, Lorg/bouncycastle/est/ESTService;->verifyServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    const-string v0, "https://"

    if-eqz p2, :cond_0

    .line 82
    invoke-direct {p0, p2}, Lorg/bouncycastle/est/ESTService;->verifyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.well-known/est/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/est/ESTService;->server:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.well-known/est"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/est/ESTService;->server:Ljava/lang/String;

    .line 90
    :goto_0
    iput-object p3, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    .line 91
    return-void
.end method

.method private annotateRequest([B)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 759
    const/4 v0, 0x0

    .line 760
    .local v0, "i":I
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 761
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 767
    .local v2, "pw":Ljava/io/PrintWriter;
    :cond_0
    add-int/lit8 v3, v0, 0x30

    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 769
    const/16 v3, 0x30

    invoke-static {p1, v0, v3}, Lorg/bouncycastle/util/encoders/Base64;->toBase64String([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 770
    add-int/lit8 v0, v0, 0x30

    goto :goto_0

    .line 774
    :cond_1
    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-static {p1, v0, v3}, Lorg/bouncycastle/util/encoders/Base64;->toBase64String([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 775
    array-length v0, p1

    .line 777
    :goto_0
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 779
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 781
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 782
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getASN1InputStream(Ljava/io/InputStream;Ljava/lang/Long;)Lorg/bouncycastle/asn1/ASN1InputStream;
    .locals 5
    .param p1, "respStream"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "respStream",
            "contentLength"
        }
    .end annotation

    .line 221
    if-nez p2, :cond_0

    .line 223
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 226
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 228
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0

    .line 231
    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static storeToArray(Lorg/bouncycastle/util/Store;)[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "store"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;)[",
            "Lorg/bouncycastle/cert/X509CertificateHolder;"
        }
    .end annotation

    .line 101
    .local p0, "store":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/est/ESTService;->storeToArray(Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Selector;)[Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    return-object v0
.end method

.method public static storeToArray(Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Selector;)[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "store",
            "selector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;",
            "Lorg/bouncycastle/util/Selector<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;)[",
            "Lorg/bouncycastle/cert/X509CertificateHolder;"
        }
    .end annotation

    .line 114
    .local p0, "store":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .local p1, "selector":Lorg/bouncycastle/util/Selector;, "Lorg/bouncycastle/util/Selector<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    invoke-interface {p0, p1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    .line 115
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object v1
.end method

.method private verifyLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "label"
        }
    .end annotation

    .line 788
    nop

    :goto_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 790
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 793
    :cond_0
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 795
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 798
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 803
    sget-object v0, Lorg/bouncycastle/est/ESTService;->pathInValid:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 808
    sget-object v0, Lorg/bouncycastle/est/ESTService;->illegalParts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 813
    return-object p1

    .line 810
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Label "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is a reserved path segment."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 805
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains invalid characters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Label set but after trimming \'/\' is not zero length string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "server"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "server"
        }
    .end annotation

    .line 823
    const-string v0, "/"

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 825
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    goto :goto_0

    .line 828
    :cond_0
    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 833
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 834
    .local v1, "u":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 839
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Server contains path, must only be <dnsname/ipaddress>:port, a path of \'/.well-known/est/<label>\' will be added arbitrarily."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "server":Ljava/lang/String;
    throw v0

    .line 836
    .restart local p1    # "server":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p1

    .line 830
    .end local v1    # "u":Ljava/net/URL;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Server contains scheme, must only be <dnsname/ipaddress>:port, https:// will be added arbitrarily."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "server":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    .restart local p1    # "server":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 844
    .local v0, "ex":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_4

    .line 846
    move-object v1, v0

    check-cast v1, Ljava/lang/IllegalArgumentException;

    throw v1

    .line 848
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheme and host is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected enroll(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequest;Lorg/bouncycastle/est/ESTAuth;Z)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 8
    .param p1, "reenroll"    # Z
    .param p2, "certificationRequest"    # Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;
    .param p3, "auth"    # Lorg/bouncycastle/est/ESTAuth;
    .param p4, "certGen"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "reenroll",
            "certificationRequest",
            "auth",
            "certGen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v0}, Lorg/bouncycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 302
    const/4 v0, 0x0

    .line 305
    .local v0, "resp":Lorg/bouncycastle/est/ESTResponse;
    :try_start_0
    invoke-virtual {p2}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getEncoded()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/est/ESTService;->annotateRequest([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 307
    .local v1, "data":[B
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/bouncycastle/est/ESTService;->server:Ljava/lang/String;

    if-eqz p4, :cond_0

    const-string v4, "/serverkeygen"

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v4, "/simplereenroll"

    goto :goto_0

    :cond_1
    const-string v4, "/simpleenroll"

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 310
    .local v2, "url":Ljava/net/URL;
    iget-object v3, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v3}, Lorg/bouncycastle/est/ESTClientProvider;->makeClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object v3

    .line 311
    .local v3, "client":Lorg/bouncycastle/est/ESTClient;
    new-instance v4, Lorg/bouncycastle/est/ESTRequestBuilder;

    const-string v5, "POST"

    invoke-direct {v4, v5, v2}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v4, v1}, Lorg/bouncycastle/est/ESTRequestBuilder;->withData([B)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/bouncycastle/est/ESTRequestBuilder;->withClient(Lorg/bouncycastle/est/ESTClient;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v4

    .line 313
    .local v4, "req":Lorg/bouncycastle/est/ESTRequestBuilder;
    const-string v5, "Content-Type"

    const-string v6, "application/pkcs10"

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/est/ESTRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    .line 314
    const-string v5, "Content-Length"

    array-length v6, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/est/ESTRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    .line 315
    const-string v5, "Content-Transfer-Encoding"

    const-string v6, "base64"

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/est/ESTRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    .line 317
    if-eqz p3, :cond_2

    .line 319
    invoke-interface {p3, v4}, Lorg/bouncycastle/est/ESTAuth;->applyAuth(Lorg/bouncycastle/est/ESTRequestBuilder;)V

    .line 322
    :cond_2
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v5

    move-object v0, v5

    .line 324
    invoke-virtual {p0, v0}, Lorg/bouncycastle/est/ESTService;->handleEnrollResponse(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/EnrollmentResponse;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    if-eqz v0, :cond_3

    .line 342
    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->close()V

    .line 324
    :cond_3
    return-object v5

    .line 327
    .end local v1    # "data":[B
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "client":Lorg/bouncycastle/est/ESTClient;
    .end local v4    # "req":Lorg/bouncycastle/est/ESTRequestBuilder;
    :catchall_0
    move-exception v1

    .line 329
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    instance-of v2, v1, Lorg/bouncycastle/est/ESTException;

    if-eqz v2, :cond_4

    .line 331
    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/est/ESTException;

    .end local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .end local p1    # "reenroll":Z
    .end local p2    # "certificationRequest":Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;
    .end local p3    # "auth":Lorg/bouncycastle/est/ESTAuth;
    .end local p4    # "certGen":Z
    throw v2

    .line 335
    .restart local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local p1    # "reenroll":Z
    .restart local p2    # "certificationRequest":Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;
    .restart local p3    # "auth":Lorg/bouncycastle/est/ESTAuth;
    .restart local p4    # "certGen":Z
    :cond_4
    new-instance v2, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .end local p1    # "reenroll":Z
    .end local p2    # "certificationRequest":Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;
    .end local p3    # "auth":Lorg/bouncycastle/est/ESTAuth;
    .end local p4    # "certGen":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 340
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local p1    # "reenroll":Z
    .restart local p2    # "certificationRequest":Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;
    .restart local p3    # "auth":Lorg/bouncycastle/est/ESTAuth;
    .restart local p4    # "certGen":Z
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_5

    .line 342
    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->close()V

    .line 344
    :cond_5
    throw v1

    .line 299
    .end local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No trust anchors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enrollPop(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/est/ESTAuth;Z)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 5
    .param p1, "reEnroll"    # Z
    .param p2, "builder"    # Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;
    .param p3, "contentSigner"    # Lorg/bouncycastle/operator/ContentSigner;
    .param p4, "auth"    # Lorg/bouncycastle/est/ESTAuth;
    .param p5, "certGen"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x0,
            0x0
        }
        names = {
            "reEnroll",
            "builder",
            "contentSigner",
            "auth",
            "certGen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v0}, Lorg/bouncycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 412
    const/4 v0, 0x0

    .line 415
    .local v0, "resp":Lorg/bouncycastle/est/ESTResponse;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lorg/bouncycastle/est/ESTService;->server:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v3, "/simplereenroll"

    goto :goto_0

    :cond_0
    const-string v3, "/simpleenroll"

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 416
    .local v1, "url":Ljava/net/URL;
    iget-object v2, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v2}, Lorg/bouncycastle/est/ESTClientProvider;->makeClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object v2

    .line 422
    .local v2, "client":Lorg/bouncycastle/est/ESTClient;
    new-instance v3, Lorg/bouncycastle/est/ESTRequestBuilder;

    const-string v4, "POST"

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v3, v2}, Lorg/bouncycastle/est/ESTRequestBuilder;->withClient(Lorg/bouncycastle/est/ESTClient;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/est/ESTService$1;

    invoke-direct {v4, p0, p2, p3}, Lorg/bouncycastle/est/ESTService$1;-><init>(Lorg/bouncycastle/est/ESTService;Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;Lorg/bouncycastle/operator/ContentSigner;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/est/ESTRequestBuilder;->withConnectionListener(Lorg/bouncycastle/est/ESTSourceConnectionListener;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v3

    .line 458
    .local v3, "reqBldr":Lorg/bouncycastle/est/ESTRequestBuilder;
    if-eqz p4, :cond_1

    .line 460
    invoke-interface {p4, v3}, Lorg/bouncycastle/est/ESTAuth;->applyAuth(Lorg/bouncycastle/est/ESTRequestBuilder;)V

    .line 463
    :cond_1
    invoke-virtual {v3}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v4

    move-object v0, v4

    .line 465
    invoke-virtual {p0, v0}, Lorg/bouncycastle/est/ESTService;->handleEnrollResponse(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/EnrollmentResponse;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    if-eqz v0, :cond_2

    .line 483
    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->close()V

    .line 465
    :cond_2
    return-object v4

    .line 468
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "client":Lorg/bouncycastle/est/ESTClient;
    .end local v3    # "reqBldr":Lorg/bouncycastle/est/ESTRequestBuilder;
    :catchall_0
    move-exception v1

    .line 470
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    instance-of v2, v1, Lorg/bouncycastle/est/ESTException;

    if-eqz v2, :cond_3

    .line 472
    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/est/ESTException;

    .end local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .end local p1    # "reEnroll":Z
    .end local p2    # "builder":Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;
    .end local p3    # "contentSigner":Lorg/bouncycastle/operator/ContentSigner;
    .end local p4    # "auth":Lorg/bouncycastle/est/ESTAuth;
    .end local p5    # "certGen":Z
    throw v2

    .line 476
    .restart local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local p1    # "reEnroll":Z
    .restart local p2    # "builder":Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;
    .restart local p3    # "contentSigner":Lorg/bouncycastle/operator/ContentSigner;
    .restart local p4    # "auth":Lorg/bouncycastle/est/ESTAuth;
    .restart local p5    # "certGen":Z
    :cond_3
    new-instance v2, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .end local p1    # "reEnroll":Z
    .end local p2    # "builder":Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;
    .end local p3    # "contentSigner":Lorg/bouncycastle/operator/ContentSigner;
    .end local p4    # "auth":Lorg/bouncycastle/est/ESTAuth;
    .end local p5    # "certGen":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 481
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local p1    # "reEnroll":Z
    .restart local p2    # "builder":Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;
    .restart local p3    # "contentSigner":Lorg/bouncycastle/operator/ContentSigner;
    .restart local p4    # "auth":Lorg/bouncycastle/est/ESTAuth;
    .restart local p5    # "certGen":Z
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    .line 483
    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->close()V

    .line 485
    :cond_4
    throw v1

    .line 409
    .end local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No trust anchors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCACerts()Lorg/bouncycastle/est/CACertsResponse;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/est/ESTException;
        }
    .end annotation

    .line 133
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 134
    .local v2, "resp":Lorg/bouncycastle/est/ESTResponse;
    const/4 v3, 0x0

    .line 135
    .local v3, "finalThrowable":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 136
    .local v4, "caCertsResponse":Lorg/bouncycastle/est/CACertsResponse;
    const/4 v5, 0x0

    .line 137
    .local v5, "url":Ljava/net/URL;
    const/4 v6, 0x0

    .line 140
    .local v6, "failedBeforeClose":Z
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v7, v1, Lorg/bouncycastle/est/ESTService;->server:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cacerts"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 142
    iget-object v0, v1, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v0}, Lorg/bouncycastle/est/ESTClientProvider;->makeClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object v0

    move-object v7, v0

    .line 143
    .local v7, "client":Lorg/bouncycastle/est/ESTClient;
    new-instance v0, Lorg/bouncycastle/est/ESTRequestBuilder;

    const-string v8, "GET"

    invoke-direct {v0, v8, v5}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v0, v7}, Lorg/bouncycastle/est/ESTRequestBuilder;->withClient(Lorg/bouncycastle/est/ESTClient;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v0

    move-object v11, v0

    .line 144
    .local v11, "req":Lorg/bouncycastle/est/ESTRequest;
    invoke-interface {v7, v11}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v2, v0

    .line 146
    const/4 v8, 0x0

    .line 147
    .local v8, "caCerts":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    const/4 v9, 0x0

    .line 149
    .local v9, "crlHolderStore":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CRLHolder;>;"
    :try_start_1
    invoke-virtual {v2}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v10, 0xc8

    const-string v14, "Get CACerts: "

    const/4 v15, 0x0

    if-ne v0, v10, :cond_3

    .line 151
    :try_start_2
    invoke-virtual {v2}, Lorg/bouncycastle/est/ESTResponse;->getHeaders()Lorg/bouncycastle/est/HttpUtil$Headers;

    move-result-object v0

    const-string v10, "Content-Type"

    invoke-virtual {v0, v10}, Lorg/bouncycastle/est/HttpUtil$Headers;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 152
    .local v10, "contentType":Ljava/lang/String;
    if-eqz v10, :cond_1

    const-string v0, "application/pkcs7-mime"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v0, :cond_0

    move-object/from16 v16, v2

    goto :goto_0

    .line 160
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v2}, Lorg/bouncycastle/est/ESTResponse;->getContentLength()Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v1, v0, v12}, Lorg/bouncycastle/est/ESTService;->getASN1InputStream(Ljava/io/InputStream;Ljava/lang/Long;)Lorg/bouncycastle/asn1/ASN1InputStream;

    move-result-object v0

    .line 162
    .local v0, "ain":Lorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v12, Lorg/bouncycastle/cmc/SimplePKIResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v13

    invoke-static {v13}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/bouncycastle/cmc/SimplePKIResponse;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 163
    .local v12, "spkr":Lorg/bouncycastle/cmc/SimplePKIResponse;
    invoke-virtual {v12}, Lorg/bouncycastle/cmc/SimplePKIResponse;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v13

    move-object v8, v13

    .line 164
    invoke-virtual {v12}, Lorg/bouncycastle/cmc/SimplePKIResponse;->getCRLs()Lorg/bouncycastle/util/Store;

    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v9, v13

    .line 169
    .end local v0    # "ain":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v12    # "spkr":Lorg/bouncycastle/cmc/SimplePKIResponse;
    nop

    .line 171
    .end local v10    # "contentType":Ljava/lang/String;
    move-object/from16 v16, v2

    move-object v10, v9

    move-object v9, v8

    goto/16 :goto_2

    .line 166
    .restart local v10    # "contentType":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 168
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_4
    new-instance v12, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v16, v2

    .end local v2    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .local v16, "resp":Lorg/bouncycastle/est/ESTResponse;
    :try_start_5
    const-string v2, "Decoding CACerts: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, " "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v13

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v12, v2, v0, v13, v14}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    .end local v3    # "finalThrowable":Ljava/lang/Exception;
    .end local v4    # "caCertsResponse":Lorg/bouncycastle/est/CACertsResponse;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "failedBeforeClose":Z
    .end local v16    # "resp":Lorg/bouncycastle/est/ESTResponse;
    throw v12

    .line 152
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local v3    # "finalThrowable":Ljava/lang/Exception;
    .restart local v4    # "caCertsResponse":Lorg/bouncycastle/est/CACertsResponse;
    .restart local v5    # "url":Ljava/net/URL;
    .restart local v6    # "failedBeforeClose":Z
    :cond_1
    move-object/from16 v16, v2

    .line 154
    .end local v2    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local v16    # "resp":Lorg/bouncycastle/est/ESTResponse;
    :goto_0
    if-eqz v10, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " got "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, " but was not present."

    .line 155
    .local v0, "j":Ljava/lang/String;
    :goto_1
    new-instance v2, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Response : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Expecting application/pkcs7-mime "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v13

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v2, v12, v15, v13, v14}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    .end local v3    # "finalThrowable":Ljava/lang/Exception;
    .end local v4    # "caCertsResponse":Lorg/bouncycastle/est/CACertsResponse;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "failedBeforeClose":Z
    .end local v16    # "resp":Lorg/bouncycastle/est/ESTResponse;
    throw v2

    .line 172
    .end local v0    # "j":Ljava/lang/String;
    .end local v10    # "contentType":Ljava/lang/String;
    .restart local v2    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local v3    # "finalThrowable":Ljava/lang/Exception;
    .restart local v4    # "caCertsResponse":Lorg/bouncycastle/est/CACertsResponse;
    .restart local v5    # "url":Ljava/net/URL;
    .restart local v6    # "failedBeforeClose":Z
    :cond_3
    move-object/from16 v16, v2

    .end local v2    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local v16    # "resp":Lorg/bouncycastle/est/ESTResponse;
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v0

    const/16 v2, 0xcc

    if-ne v0, v2, :cond_7

    move-object v10, v9

    move-object v9, v8

    .line 177
    .end local v8    # "caCerts":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .local v9, "caCerts":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .local v10, "crlHolderStore":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CRLHolder;>;"
    :goto_2
    new-instance v8, Lorg/bouncycastle/est/CACertsResponse;

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/est/ESTResponse;->getSource()Lorg/bouncycastle/est/Source;

    move-result-object v12

    iget-object v0, v1, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v0}, Lorg/bouncycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v13

    invoke-direct/range {v8 .. v13}, Lorg/bouncycastle/est/CACertsResponse;-><init>(Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 194
    .end local v4    # "caCertsResponse":Lorg/bouncycastle/est/CACertsResponse;
    .end local v7    # "client":Lorg/bouncycastle/est/ESTClient;
    .end local v9    # "caCerts":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .end local v10    # "crlHolderStore":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CRLHolder;>;"
    .end local v11    # "req":Lorg/bouncycastle/est/ESTRequest;
    .local v8, "caCertsResponse":Lorg/bouncycastle/est/CACertsResponse;
    if-eqz v16, :cond_4

    .line 198
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/est/ESTResponse;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, "t":Ljava/lang/Exception;
    move-object v3, v0

    .line 203
    .end local v0    # "t":Ljava/lang/Exception;
    :goto_3
    nop

    .line 207
    :cond_4
    if-eqz v3, :cond_6

    .line 209
    instance-of v0, v3, Lorg/bouncycastle/est/ESTException;

    if-eqz v0, :cond_5

    .line 211
    move-object v0, v3

    check-cast v0, Lorg/bouncycastle/est/ESTException;

    throw v0

    .line 213
    :cond_5
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v4

    invoke-direct {v0, v2, v3, v4, v15}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v0

    .line 216
    :cond_6
    return-object v8

    .line 174
    .restart local v4    # "caCertsResponse":Lorg/bouncycastle/est/CACertsResponse;
    .restart local v7    # "client":Lorg/bouncycastle/est/ESTClient;
    .local v8, "caCerts":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .local v9, "crlHolderStore":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CRLHolder;>;"
    .restart local v11    # "req":Lorg/bouncycastle/est/ESTRequest;
    :cond_7
    :try_start_7
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v10

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v0, v2, v15, v10, v12}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    .end local v3    # "finalThrowable":Ljava/lang/Exception;
    .end local v4    # "caCertsResponse":Lorg/bouncycastle/est/CACertsResponse;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "failedBeforeClose":Z
    .end local v16    # "resp":Lorg/bouncycastle/est/ESTResponse;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 180
    .end local v7    # "client":Lorg/bouncycastle/est/ESTClient;
    .end local v8    # "caCerts":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .end local v9    # "crlHolderStore":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CRLHolder;>;"
    .end local v11    # "req":Lorg/bouncycastle/est/ESTRequest;
    .restart local v3    # "finalThrowable":Ljava/lang/Exception;
    .restart local v4    # "caCertsResponse":Lorg/bouncycastle/est/CACertsResponse;
    .restart local v5    # "url":Ljava/net/URL;
    .restart local v6    # "failedBeforeClose":Z
    .restart local v16    # "resp":Lorg/bouncycastle/est/ESTResponse;
    :catchall_1
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_4

    .end local v16    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local v2    # "resp":Lorg/bouncycastle/est/ESTResponse;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local v16    # "resp":Lorg/bouncycastle/est/ESTResponse;
    goto :goto_4

    .end local v16    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local v2    # "resp":Lorg/bouncycastle/est/ESTResponse;
    :catchall_3
    move-exception v0

    .line 182
    .local v0, "t":Ljava/lang/Throwable;
    :goto_4
    const/4 v6, 0x1

    .line 183
    :try_start_8
    instance-of v7, v0, Lorg/bouncycastle/est/ESTException;

    if-eqz v7, :cond_8

    .line 185
    move-object v7, v0

    check-cast v7, Lorg/bouncycastle/est/ESTException;

    .end local v2    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .end local v3    # "finalThrowable":Ljava/lang/Exception;
    .end local v4    # "caCertsResponse":Lorg/bouncycastle/est/CACertsResponse;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "failedBeforeClose":Z
    throw v7

    .line 189
    .restart local v2    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local v3    # "finalThrowable":Ljava/lang/Exception;
    .restart local v4    # "caCertsResponse":Lorg/bouncycastle/est/CACertsResponse;
    .restart local v5    # "url":Ljava/net/URL;
    .restart local v6    # "failedBeforeClose":Z
    :cond_8
    new-instance v7, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .end local v3    # "finalThrowable":Ljava/lang/Exception;
    .end local v4    # "caCertsResponse":Lorg/bouncycastle/est/CACertsResponse;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "failedBeforeClose":Z
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 194
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v2    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local v3    # "finalThrowable":Ljava/lang/Exception;
    .restart local v4    # "caCertsResponse":Lorg/bouncycastle/est/CACertsResponse;
    .restart local v5    # "url":Ljava/net/URL;
    .restart local v6    # "failedBeforeClose":Z
    :catchall_4
    move-exception v0

    move-object v7, v0

    if-eqz v2, :cond_9

    .line 198
    :try_start_9
    invoke-virtual {v2}, Lorg/bouncycastle/est/ESTResponse;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 203
    goto :goto_5

    .line 200
    :catch_1
    move-exception v0

    .line 202
    .local v0, "t":Ljava/lang/Exception;
    move-object v3, v0

    .line 205
    .end local v0    # "t":Ljava/lang/Exception;
    :cond_9
    :goto_5
    throw v7
.end method

.method public getCSRAttributes()Lorg/bouncycastle/est/CSRRequestResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/est/ESTException;
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v0}, Lorg/bouncycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, "resp":Lorg/bouncycastle/est/ESTResponse;
    const/4 v1, 0x0

    .line 680
    .local v1, "response":Lorg/bouncycastle/est/CSRAttributesResponse;
    const/4 v2, 0x0

    .line 681
    .local v2, "finalThrowable":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 684
    .local v3, "url":Ljava/net/URL;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lorg/bouncycastle/est/ESTService;->server:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/csrattrs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 686
    iget-object v4, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v4}, Lorg/bouncycastle/est/ESTClientProvider;->makeClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object v4

    .line 687
    .local v4, "client":Lorg/bouncycastle/est/ESTClient;
    new-instance v5, Lorg/bouncycastle/est/ESTRequestBuilder;

    const-string v6, "GET"

    invoke-direct {v5, v6, v3}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v5, v4}, Lorg/bouncycastle/est/ESTRequestBuilder;->withClient(Lorg/bouncycastle/est/ESTClient;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v5

    .line 688
    .local v5, "req":Lorg/bouncycastle/est/ESTRequest;
    invoke-interface {v4, v5}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v6

    move-object v0, v6

    .line 691
    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v6

    const/4 v7, 0x0

    sparse-switch v6, :sswitch_data_0

    .line 713
    new-instance v6, Lorg/bouncycastle/est/ESTException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_2

    .line 710
    :sswitch_0
    const/4 v1, 0x0

    .line 711
    goto :goto_0

    .line 707
    :sswitch_1
    const/4 v1, 0x0

    .line 708
    goto :goto_0

    .line 696
    :sswitch_2
    :try_start_1
    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->getContentLength()Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lorg/bouncycastle/est/ESTService;->getASN1InputStream(Ljava/io/InputStream;Ljava/lang/Long;)Lorg/bouncycastle/asn1/ASN1InputStream;

    move-result-object v6

    .line 697
    .local v6, "ain":Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    .line 698
    .local v8, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v9, Lorg/bouncycastle/est/CSRAttributesResponse;

    invoke-static {v8}, Lorg/bouncycastle/asn1/est/CsrAttrs;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/est/CsrAttrs;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/est/CSRAttributesResponse;-><init>(Lorg/bouncycastle/asn1/est/CsrAttrs;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v9

    .line 703
    .end local v6    # "ain":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v8    # "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 732
    .end local v4    # "client":Lorg/bouncycastle/est/ESTClient;
    .end local v5    # "req":Lorg/bouncycastle/est/ESTRequest;
    :goto_0
    if-eqz v0, :cond_0

    .line 736
    :try_start_2
    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 738
    :catch_0
    move-exception v4

    .line 740
    .local v4, "ex":Ljava/lang/Exception;
    move-object v2, v4

    .line 741
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_1
    nop

    .line 745
    :cond_0
    if-eqz v2, :cond_2

    .line 747
    instance-of v4, v2, Lorg/bouncycastle/est/ESTException;

    if-eqz v4, :cond_1

    .line 749
    move-object v4, v2

    check-cast v4, Lorg/bouncycastle/est/ESTException;

    throw v4

    .line 751
    :cond_1
    new-instance v4, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v6

    invoke-direct {v4, v5, v2, v6, v7}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v4

    .line 754
    :cond_2
    new-instance v4, Lorg/bouncycastle/est/CSRRequestResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->getSource()Lorg/bouncycastle/est/Source;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lorg/bouncycastle/est/CSRRequestResponse;-><init>(Lorg/bouncycastle/est/CSRAttributesResponse;Lorg/bouncycastle/est/Source;)V

    return-object v4

    .line 700
    .local v4, "client":Lorg/bouncycastle/est/ESTClient;
    .restart local v5    # "req":Lorg/bouncycastle/est/ESTRequest;
    :catchall_0
    move-exception v6

    .line 702
    .local v6, "ex":Ljava/lang/Throwable;
    :try_start_3
    new-instance v7, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Decoding CACerts: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v9

    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v7, v8, v6, v9, v10}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    .end local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .end local v1    # "response":Lorg/bouncycastle/est/CSRAttributesResponse;
    .end local v2    # "finalThrowable":Ljava/lang/Exception;
    .end local v3    # "url":Ljava/net/URL;
    throw v7

    .line 714
    .end local v6    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local v1    # "response":Lorg/bouncycastle/est/CSRAttributesResponse;
    .restart local v2    # "finalThrowable":Ljava/lang/Exception;
    .restart local v3    # "url":Ljava/net/URL;
    :goto_2
    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CSR Attribute request: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 715
    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v9

    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v6, v8, v7, v9, v10}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    .end local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .end local v1    # "response":Lorg/bouncycastle/est/CSRAttributesResponse;
    .end local v2    # "finalThrowable":Ljava/lang/Exception;
    .end local v3    # "url":Ljava/net/URL;
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 718
    .end local v4    # "client":Lorg/bouncycastle/est/ESTClient;
    .end local v5    # "req":Lorg/bouncycastle/est/ESTRequest;
    .restart local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local v1    # "response":Lorg/bouncycastle/est/CSRAttributesResponse;
    .restart local v2    # "finalThrowable":Ljava/lang/Exception;
    .restart local v3    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v4

    .line 721
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_4
    instance-of v5, v4, Lorg/bouncycastle/est/ESTException;

    if-eqz v5, :cond_3

    .line 723
    move-object v5, v4

    check-cast v5, Lorg/bouncycastle/est/ESTException;

    .end local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .end local v1    # "response":Lorg/bouncycastle/est/CSRAttributesResponse;
    .end local v2    # "finalThrowable":Ljava/lang/Exception;
    .end local v3    # "url":Ljava/net/URL;
    throw v5

    .line 727
    .restart local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local v1    # "response":Lorg/bouncycastle/est/CSRAttributesResponse;
    .restart local v2    # "finalThrowable":Ljava/lang/Exception;
    .restart local v3    # "url":Ljava/net/URL;
    :cond_3
    new-instance v5, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .end local v1    # "response":Lorg/bouncycastle/est/CSRAttributesResponse;
    .end local v2    # "finalThrowable":Ljava/lang/Exception;
    .end local v3    # "url":Ljava/net/URL;
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 732
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local v1    # "response":Lorg/bouncycastle/est/CSRAttributesResponse;
    .restart local v2    # "finalThrowable":Ljava/lang/Exception;
    .restart local v3    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v4

    if-eqz v0, :cond_4

    .line 736
    :try_start_5
    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 741
    goto :goto_3

    .line 738
    :catch_1
    move-exception v5

    .line 740
    .local v5, "ex":Ljava/lang/Exception;
    move-object v2, v5

    .line 743
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_4
    :goto_3
    throw v4

    .line 675
    .end local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .end local v1    # "response":Lorg/bouncycastle/est/CSRAttributesResponse;
    .end local v2    # "finalThrowable":Ljava/lang/Exception;
    .end local v3    # "url":Ljava/net/URL;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No trust anchors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0xcc -> :sswitch_1
        0x194 -> :sswitch_0
    .end sparse-switch
.end method

.method protected handleEnrollResponse(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 14
    .param p1, "resp"    # Lorg/bouncycastle/est/ESTResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getOriginalRequest()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v4

    .line 539
    .local v4, "req":Lorg/bouncycastle/est/ESTRequest;
    const/4 v6, 0x0

    .line 540
    .local v6, "enrolled":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xca

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 543
    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 545
    .local v7, "rt":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 550
    const-wide/16 v8, -0x1

    .line 555
    .local v8, "notBefore":J
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v10, 0x3e8

    mul-long v2, v2, v10

    add-long/2addr v0, v2

    .line 572
    .end local v8    # "notBefore":J
    .local v0, "notBefore":J
    move-wide v2, v0

    goto :goto_0

    .line 557
    .end local v0    # "notBefore":J
    .restart local v8    # "notBefore":J
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 561
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 563
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v3, "GMT"

    invoke-static {v3}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 564
    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 571
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v8    # "notBefore":J
    .local v2, "notBefore":J
    nop

    .line 574
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :goto_0
    new-instance v0, Lorg/bouncycastle/est/EnrollmentResponse;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getSource()Lorg/bouncycastle/est/Source;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/est/EnrollmentResponse;-><init>(Lorg/bouncycastle/util/Store;JLorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)V

    return-object v0

    .line 566
    .end local v2    # "notBefore":J
    .restart local v1    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v8    # "notBefore":J
    :catch_1
    move-exception v0

    .line 568
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Lorg/bouncycastle/est/ESTException;

    .line 569
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to parse Retry-After header:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 570
    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v10

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v3, v5, v2, v10, v11}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v3

    .line 547
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .end local v8    # "notBefore":J
    :cond_0
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got Status 202 but not Retry-After header from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    .end local v7    # "rt":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    const-string v0, "content-type"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/est/ESTResponse;->getHeaderOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "multipart/mixed"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 580
    new-instance v1, Lorg/bouncycastle/mime/Headers;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/est/ESTResponse;->getHeaderOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "base64"

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/mime/Headers;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    .local v1, "mimeHeaders":Lorg/bouncycastle/mime/Headers;
    new-instance v0, Lorg/bouncycastle/mime/BasicMimeParser;

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/mime/BasicMimeParser;-><init>(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V

    .line 584
    .local v0, "mp":Lorg/bouncycastle/mime/MimeParser;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 586
    .local v2, "parts":[Ljava/lang/Object;
    new-instance v3, Lorg/bouncycastle/est/ESTService$2;

    invoke-direct {v3, p0, v2}, Lorg/bouncycastle/est/ESTService$2;-><init>(Lorg/bouncycastle/est/ESTService;[Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Lorg/bouncycastle/mime/MimeParser;->parse(Lorg/bouncycastle/mime/MimeParserListener;)V

    .line 631
    const/4 v3, 0x0

    aget-object v5, v2, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    aget-object v7, v2, v5

    if-eqz v7, :cond_2

    .line 636
    aget-object v5, v2, v5

    check-cast v5, Lorg/bouncycastle/cmc/SimplePKIResponse;

    invoke-virtual {v5}, Lorg/bouncycastle/cmc/SimplePKIResponse;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v8

    .line 637
    .end local v6    # "enrolled":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .local v8, "enrolled":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    new-instance v7, Lorg/bouncycastle/est/EnrollmentResponse;

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getSource()Lorg/bouncycastle/est/Source;

    move-result-object v12

    aget-object v3, v2, v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v13

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Lorg/bouncycastle/est/EnrollmentResponse;-><init>(Lorg/bouncycastle/util/Store;JLorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    return-object v7

    .line 633
    .end local v8    # "enrolled":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .restart local v6    # "enrolled":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    :cond_2
    new-instance v3, Lorg/bouncycastle/est/ESTException;

    const-string v5, "received neither private key info and certificates"

    invoke-direct {v3, v5}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 641
    .end local v0    # "mp":Lorg/bouncycastle/mime/MimeParser;
    .end local v1    # "mimeHeaders":Lorg/bouncycastle/mime/Headers;
    .end local v2    # "parts":[Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 643
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v0

    .line 644
    .local v1, "ain":Lorg/bouncycastle/asn1/ASN1InputStream;
    const/4 v2, 0x0

    .line 647
    .local v2, "spkr":Lorg/bouncycastle/cmc/SimplePKIResponse;
    :try_start_2
    new-instance v0, Lorg/bouncycastle/cmc/SimplePKIResponse;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/bouncycastle/cmc/SimplePKIResponse;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    :try_end_2
    .catch Lorg/bouncycastle/cmc/CMCException; {:try_start_2 .. :try_end_2} :catch_2

    .line 652
    .end local v2    # "spkr":Lorg/bouncycastle/cmc/SimplePKIResponse;
    .local v0, "spkr":Lorg/bouncycastle/cmc/SimplePKIResponse;
    nop

    .line 653
    invoke-virtual {v0}, Lorg/bouncycastle/cmc/SimplePKIResponse;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v8

    .line 654
    .end local v6    # "enrolled":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .restart local v8    # "enrolled":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    new-instance v7, Lorg/bouncycastle/est/EnrollmentResponse;

    const/4 v11, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getSource()Lorg/bouncycastle/est/Source;

    move-result-object v12

    const-wide/16 v9, -0x1

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/est/EnrollmentResponse;-><init>(Lorg/bouncycastle/util/Store;JLorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)V

    return-object v7

    .line 649
    .end local v0    # "spkr":Lorg/bouncycastle/cmc/SimplePKIResponse;
    .end local v8    # "enrolled":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .restart local v2    # "spkr":Lorg/bouncycastle/cmc/SimplePKIResponse;
    .restart local v6    # "enrolled":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    :catch_2
    move-exception v0

    .line 651
    .local v0, "e":Lorg/bouncycastle/cmc/CMCException;
    new-instance v3, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v0}, Lorg/bouncycastle/cmc/CMCException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/cmc/CMCException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 657
    .end local v0    # "e":Lorg/bouncycastle/cmc/CMCException;
    .end local v1    # "ain":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v2    # "spkr":Lorg/bouncycastle/cmc/SimplePKIResponse;
    :cond_4
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    .line 658
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Simple Enroll: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 659
    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v0
.end method

.method public simpleEnroll(Lorg/bouncycastle/est/EnrollmentResponse;)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 4
    .param p1, "priorResponse"    # Lorg/bouncycastle/est/EnrollmentResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "priorResponse"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v0}, Lorg/bouncycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    const/4 v0, 0x0

    .line 253
    .local v0, "resp":Lorg/bouncycastle/est/ESTResponse;
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v1}, Lorg/bouncycastle/est/ESTClientProvider;->makeClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object v1

    .line 254
    .local v1, "client":Lorg/bouncycastle/est/ESTClient;
    new-instance v2, Lorg/bouncycastle/est/ESTRequestBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/est/EnrollmentResponse;->getRequestToRetry()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Lorg/bouncycastle/est/ESTRequest;)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/est/ESTRequestBuilder;->withClient(Lorg/bouncycastle/est/ESTClient;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v2

    move-object v0, v2

    .line 255
    invoke-virtual {p0, v0}, Lorg/bouncycastle/est/ESTService;->handleEnrollResponse(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/EnrollmentResponse;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->close()V

    .line 255
    :cond_0
    return-object v2

    .line 257
    .end local v1    # "client":Lorg/bouncycastle/est/ESTClient;
    :catchall_0
    move-exception v1

    .line 259
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    instance-of v2, v1, Lorg/bouncycastle/est/ESTException;

    if-eqz v2, :cond_1

    .line 261
    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/est/ESTException;

    .end local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .end local p1    # "priorResponse":Lorg/bouncycastle/est/EnrollmentResponse;
    throw v2

    .line 265
    .restart local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local p1    # "priorResponse":Lorg/bouncycastle/est/EnrollmentResponse;
    :cond_1
    new-instance v2, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .end local p1    # "priorResponse":Lorg/bouncycastle/est/EnrollmentResponse;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    .restart local p1    # "priorResponse":Lorg/bouncycastle/est/EnrollmentResponse;
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->close()V

    .line 274
    :cond_2
    throw v1

    .line 246
    .end local v0    # "resp":Lorg/bouncycastle/est/ESTResponse;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No trust anchors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public simpleEnroll(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequest;Lorg/bouncycastle/est/ESTAuth;)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 1
    .param p1, "reenroll"    # Z
    .param p2, "certificationRequest"    # Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;
    .param p3, "auth"    # Lorg/bouncycastle/est/ESTAuth;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reenroll",
            "certificationRequest",
            "auth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/est/ESTService;->enroll(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequest;Lorg/bouncycastle/est/ESTAuth;Z)Lorg/bouncycastle/est/EnrollmentResponse;

    move-result-object v0

    return-object v0
.end method

.method public simpleEnrollPoP(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/est/ESTAuth;)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 6
    .param p1, "reEnroll"    # Z
    .param p2, "builder"    # Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;
    .param p3, "contentSigner"    # Lorg/bouncycastle/operator/ContentSigner;
    .param p4, "auth"    # Lorg/bouncycastle/est/ESTAuth;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x0
        }
        names = {
            "reEnroll",
            "builder",
            "contentSigner",
            "auth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "reEnroll":Z
    .end local p2    # "builder":Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;
    .end local p3    # "contentSigner":Lorg/bouncycastle/operator/ContentSigner;
    .end local p4    # "auth":Lorg/bouncycastle/est/ESTAuth;
    .local v1, "reEnroll":Z
    .local v2, "builder":Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;
    .local v3, "contentSigner":Lorg/bouncycastle/operator/ContentSigner;
    .local v4, "auth":Lorg/bouncycastle/est/ESTAuth;
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/est/ESTService;->enrollPop(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/est/ESTAuth;Z)Lorg/bouncycastle/est/EnrollmentResponse;

    move-result-object p1

    return-object p1
.end method

.method public simpleEnrollPopWithServersideCreation(Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/est/ESTAuth;)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 6
    .param p1, "builder"    # Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;
    .param p2, "contentSigner"    # Lorg/bouncycastle/operator/ContentSigner;
    .param p3, "auth"    # Lorg/bouncycastle/est/ESTAuth;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "builder",
            "contentSigner",
            "auth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "builder":Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;
    .end local p2    # "contentSigner":Lorg/bouncycastle/operator/ContentSigner;
    .end local p3    # "auth":Lorg/bouncycastle/est/ESTAuth;
    .local v2, "builder":Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;
    .local v3, "contentSigner":Lorg/bouncycastle/operator/ContentSigner;
    .local v4, "auth":Lorg/bouncycastle/est/ESTAuth;
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/est/ESTService;->enrollPop(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/est/ESTAuth;Z)Lorg/bouncycastle/est/EnrollmentResponse;

    move-result-object p1

    return-object p1
.end method

.method public simpleEnrollWithServersideCreation(Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;Lorg/bouncycastle/est/ESTAuth;)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 2
    .param p1, "certificationRequest"    # Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;
    .param p2, "auth"    # Lorg/bouncycastle/est/ESTAuth;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certificationRequest",
            "auth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/bouncycastle/est/ESTService;->enroll(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequest;Lorg/bouncycastle/est/ESTAuth;Z)Lorg/bouncycastle/est/EnrollmentResponse;

    move-result-object v0

    return-object v0
.end method
