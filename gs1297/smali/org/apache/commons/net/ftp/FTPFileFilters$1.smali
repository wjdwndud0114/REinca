.class final Lorg/apache/commons/net/ftp/FTPFileFilters$1;
.super Ljava/lang/Object;
.source "FTPFileFilters.java"

# interfaces
.implements Lorg/apache/commons/net/ftp/FTPFileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/ftp/FTPFileFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/commons/net/ftp/FTPFile;)Z
    .locals 1
    .param p1, "file"    # Lorg/apache/commons/net/ftp/FTPFile;

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method
