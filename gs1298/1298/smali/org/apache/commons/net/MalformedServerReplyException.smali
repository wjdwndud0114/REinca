.class public Lorg/apache/commons/net/MalformedServerReplyException;
.super Ljava/io/IOException;
.source "MalformedServerReplyException.java"


# static fields
.field private static final serialVersionUID:J = 0x535c512ec0cf1f49L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method
