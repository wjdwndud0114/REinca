.class public Lorg/apache/commons/net/util/Charsets;
.super Ljava/lang/Object;
.source "Charsets.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 38
    if-nez p0, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method

.method public static toCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "charsetName"    # Ljava/lang/String;
    .param p1, "defaultCharsetName"    # Ljava/lang/String;

    .prologue
    .line 52
    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method
