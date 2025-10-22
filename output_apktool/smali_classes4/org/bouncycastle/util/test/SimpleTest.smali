.class public abstract Lorg/bouncycastle/util/test/SimpleTest;
.super Ljava/lang/Object;
.source "SimpleTest.java"

# interfaces
.implements Lorg/bouncycastle/util/test/Test;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/util/test/SimpleTest$TestExceptionOperation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runTest(Lorg/bouncycastle/util/test/Test;)V
    .locals 1
    .param p0, "test"    # Lorg/bouncycastle/util/test/Test;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 208
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lorg/bouncycastle/util/test/SimpleTest;->runTest(Lorg/bouncycastle/util/test/Test;Ljava/io/PrintStream;)V

    .line 209
    return-void
.end method

.method public static runTest(Lorg/bouncycastle/util/test/Test;Ljava/io/PrintStream;)V
    .locals 2
    .param p0, "test"    # Lorg/bouncycastle/util/test/Test;
    .param p1, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "test",
            "out"
        }
    .end annotation

    .line 213
    invoke-interface {p0}, Lorg/bouncycastle/util/test/Test;->perform()Lorg/bouncycastle/util/test/TestResult;

    move-result-object v0

    .line 215
    .local v0, "result":Lorg/bouncycastle/util/test/TestResult;
    invoke-interface {v0}, Lorg/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    invoke-interface {v0}, Lorg/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 220
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method public static runTests([Lorg/bouncycastle/util/test/Test;)V
    .locals 1
    .param p0, "tests"    # [Lorg/bouncycastle/util/test/Test;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tests"
        }
    .end annotation

    .line 225
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lorg/bouncycastle/util/test/SimpleTest;->runTests([Lorg/bouncycastle/util/test/Test;Ljava/io/PrintStream;)V

    .line 226
    return-void
.end method

.method public static runTests([Lorg/bouncycastle/util/test/Test;Ljava/io/PrintStream;)V
    .locals 6
    .param p0, "tests"    # [Lorg/bouncycastle/util/test/Test;
    .param p1, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tests",
            "out"
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 232
    .local v0, "failures":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_2

    .line 234
    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/bouncycastle/util/test/Test;->perform()Lorg/bouncycastle/util/test/TestResult;

    move-result-object v2

    .line 236
    .local v2, "result":Lorg/bouncycastle/util/test/TestResult;
    invoke-interface {v2}, Lorg/bouncycastle/util/test/TestResult;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_0

    .line 238
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 241
    :cond_0
    invoke-interface {v2}, Lorg/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 243
    invoke-interface {v2}, Lorg/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 246
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 232
    .end local v2    # "result":Lorg/bouncycastle/util/test/TestResult;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "i":I
    :cond_2
    const-string v1, "-----"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    const-string v1, "All tests successful."

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 259
    :cond_3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FAILURES:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 262
    .local v1, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 265
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/util/test/TestResult;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=>  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 268
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_4
    :goto_2
    return-void
.end method

.method private success()Lorg/bouncycastle/util/test/TestResult;
    .locals 1

    .line 16
    const-string v0, "Okay"

    invoke-static {p0, v0}, Lorg/bouncycastle/util/test/SimpleTestResult;->successful(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected areEqual([BII[BII)Z
    .locals 1
    .param p1, "a"    # [B
    .param p2, "aFromIndex"    # I
    .param p3, "aToIndex"    # I
    .param p4, "b"    # [B
    .param p5, "bFromIndex"    # I
    .param p6, "bToIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "aFromIndex",
            "aToIndex",
            "b",
            "bFromIndex",
            "bToIndex"
        }
    .end annotation

    .line 183
    invoke-static/range {p1 .. p6}, Lorg/bouncycastle/util/Arrays;->areEqual([BII[BII)Z

    move-result v0

    return v0
.end method

.method protected areEqual([B[B)Z
    .locals 1
    .param p1, "a"    # [B
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 178
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0
.end method

.method protected areEqual([[B[[B)Z
    .locals 5
    .param p1, "left"    # [[B
    .param p2, "right"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 132
    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 134
    return v0

    .line 136
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_1

    .line 141
    :cond_1
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_2

    .line 143
    return v1

    .line 146
    :cond_2
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 148
    aget-object v3, p1, v2

    aget-object v4, p2, v2

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/util/test/SimpleTest;->areEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    nop

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_3
    return v1

    .line 155
    .end local v2    # "t":I
    :cond_4
    return v0

    .line 138
    :cond_5
    :goto_1
    return v1
.end method

.method protected fail(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 22
    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method protected fail(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "expected"    # Ljava/lang/Object;
    .param p3, "found"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "expected",
            "found"
        }
    .end annotation

    .line 171
    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method protected fail(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 163
    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;Ljava/lang/Throwable;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected isEquals(II)V
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 58
    if-ne p1, p2, :cond_0

    .line 62
    return-void

    .line 60
    :cond_0
    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    const-string v1, "no message"

    invoke-static {p0, v1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method protected isEquals(JJ)V
    .locals 2
    .param p1, "a"    # J
    .param p3, "b"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 68
    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    .line 72
    return-void

    .line 70
    :cond_0
    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    const-string v1, "no message"

    invoke-static {p0, v1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method protected isEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    return-void

    .line 50
    :cond_0
    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    const-string v1, "no message"

    invoke-static {p0, v1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method protected isEquals(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "a"    # J
    .param p4, "b"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "a",
            "b"
        }
    .end annotation

    .line 100
    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    .line 104
    return-void

    .line 102
    :cond_0
    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method protected isEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "a"    # Ljava/lang/Object;
    .param p3, "b"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "a",
            "b"
        }
    .end annotation

    .line 111
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    if-eqz p2, :cond_3

    .line 119
    if-eqz p3, :cond_2

    .line 124
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    return-void

    .line 126
    :cond_1
    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0

    .line 121
    :cond_2
    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0

    .line 117
    :cond_3
    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method protected isEquals(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "a"    # Z
    .param p3, "b"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "a",
            "b"
        }
    .end annotation

    .line 89
    if-ne p2, p3, :cond_0

    .line 93
    return-void

    .line 91
    :cond_0
    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method protected isEquals(ZZ)V
    .locals 2
    .param p1, "a"    # Z
    .param p2, "b"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 78
    if-ne p1, p2, :cond_0

    .line 82
    return-void

    .line 80
    :cond_0
    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    const-string v1, "no message"

    invoke-static {p0, v1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method protected isTrue(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "value"
        }
    .end annotation

    .line 38
    if-eqz p2, :cond_0

    .line 42
    return-void

    .line 40
    :cond_0
    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method protected isTrue(Z)V
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 28
    if-eqz p1, :cond_0

    .line 32
    return-void

    .line 30
    :cond_0
    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    const-string v1, "no message"

    invoke-static {p0, v1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method public perform()Lorg/bouncycastle/util/test/TestResult;
    .locals 4

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/util/test/SimpleTest;->performTest()V

    .line 191
    invoke-direct {p0}, Lorg/bouncycastle/util/test/SimpleTest;->success()Lorg/bouncycastle/util/test/TestResult;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/util/test/TestFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;Ljava/lang/Throwable;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    return-object v1

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 195
    .local v0, "e":Lorg/bouncycastle/util/test/TestFailedException;
    invoke-virtual {v0}, Lorg/bouncycastle/util/test/TestFailedException;->getResult()Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    return-object v1
.end method

.method public abstract performTest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected testException(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/util/test/SimpleTest$TestExceptionOperation;)Ljava/lang/Exception;
    .locals 5
    .param p1, "failMessage"    # Ljava/lang/String;
    .param p2, "exceptionClass"    # Ljava/lang/String;
    .param p3, "operation"    # Lorg/bouncycastle/util/test/SimpleTest$TestExceptionOperation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "failMessage",
            "exceptionClass",
            "operation"
        }
    .end annotation

    .line 280
    :try_start_0
    invoke-interface {p3}, Lorg/bouncycastle/util/test/SimpleTest$TestExceptionOperation;->operation()V

    .line 281
    invoke-virtual {p0, p1}, Lorg/bouncycastle/util/test/SimpleTest;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    nop

    .line 292
    const/4 v0, 0x0

    return-object v0

    .line 283
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 287
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/util/test/SimpleTest;->isTrue(Ljava/lang/String;Z)V

    .line 289
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lorg/bouncycastle/util/test/SimpleTest;->isTrue(Z)V

    .line 290
    return-object v0
.end method
