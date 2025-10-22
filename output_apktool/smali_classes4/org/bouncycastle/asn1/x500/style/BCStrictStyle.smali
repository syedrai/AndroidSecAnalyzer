.class public Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;
.super Lorg/bouncycastle/asn1/x500/style/BCStyle;
.source "BCStrictStyle.java"


# static fields
.field public static final INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;->INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/bouncycastle/asn1/x500/style/BCStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public areEqual(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x500/X500Name;)Z
    .locals 6
    .param p1, "name1"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "name2"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name1",
            "name2"
        }
    .end annotation

    .line 18
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->size()I

    move-result v0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x500/X500Name;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 20
    return v2

    .line 23
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    .line 24
    .local v0, "rdns1":[Lorg/bouncycastle/asn1/x500/RDN;
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v1

    .line 26
    .local v1, "rdns2":[Lorg/bouncycastle/asn1/x500/RDN;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-eq v3, v4, :cond_2

    .line 28
    aget-object v4, v0, v3

    aget-object v5, v1, v3

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;->rdnAreEqual(Lorg/bouncycastle/asn1/x500/RDN;Lorg/bouncycastle/asn1/x500/RDN;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 30
    return v2

    .line 26
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    .end local v3    # "i":I
    :cond_2
    const/4 v2, 0x1

    return v2
.end method
