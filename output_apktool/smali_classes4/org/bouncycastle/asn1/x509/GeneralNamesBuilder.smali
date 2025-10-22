.class public Lorg/bouncycastle/asn1/x509/GeneralNamesBuilder;
.super Ljava/lang/Object;
.source "GeneralNamesBuilder.java"


# instance fields
.field private names:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addName(Lorg/bouncycastle/asn1/x509/GeneralName;)Lorg/bouncycastle/asn1/x509/GeneralNamesBuilder;
    .locals 1
    .param p1, "name"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 25
    return-object p0
.end method

.method public addNames(Lorg/bouncycastle/asn1/x509/GeneralNames;)Lorg/bouncycastle/asn1/x509/GeneralNamesBuilder;
    .locals 4
    .param p1, "names"    # Lorg/bouncycastle/asn1/x509/GeneralNames;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "names"
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    .line 13
    .local v0, "n":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 15
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 13
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    .end local v1    # "i":I
    :cond_0
    return-object p0
.end method

.method public build()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 3

    .line 30
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 32
    .local v0, "tmp":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 34
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/x509/GeneralName;

    aput-object v2, v0, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>([Lorg/bouncycastle/asn1/x509/GeneralName;)V

    return-object v1
.end method
