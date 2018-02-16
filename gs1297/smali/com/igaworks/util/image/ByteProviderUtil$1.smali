.class final Lcom/igaworks/util/image/ByteProviderUtil$1;
.super Ljava/lang/Object;
.source "ByteProviderUtil.java"

# interfaces
.implements Lcom/igaworks/util/image/ByteProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/image/ByteProviderUtil;->create(Ljava/io/InputStream;)Lcom/igaworks/util/image/ByteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$is:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/igaworks/util/image/ByteProviderUtil$1;->val$is:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/igaworks/util/image/ByteProviderUtil$1;->val$is:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/igaworks/util/image/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 15
    return-void
.end method
