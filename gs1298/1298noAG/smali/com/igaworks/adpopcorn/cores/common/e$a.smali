.class Lcom/igaworks/adpopcorn/cores/common/e$a;
.super Ljava/io/FilterInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adpopcorn/cores/common/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/cores/common/e;


# direct methods
.method public constructor <init>(Lcom/igaworks/adpopcorn/cores/common/e;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/common/e$a;->a:Lcom/igaworks/adpopcorn/cores/common/e;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 9

    const-wide/16 v4, 0x0

    move-wide v2, v4

    :goto_0
    cmp-long v0, v2, p1

    if-ltz v0, :cond_1

    :cond_0
    return-wide v2

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e$a;->in:Ljava/io/InputStream;

    sub-long v6, p1, v2

    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/cores/common/e$a;->read()I

    move-result v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x1

    :cond_2
    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0
.end method
