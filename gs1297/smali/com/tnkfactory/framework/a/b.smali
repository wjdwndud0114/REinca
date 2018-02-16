.class public Lcom/tnkfactory/framework/a/b;
.super Ljava/io/FilterInputStream;


# instance fields
.field private a:Lcom/tnkfactory/framework/a/a;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/tnkfactory/framework/a/a;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/framework/a/b;->a:Lcom/tnkfactory/framework/a/a;

    iput-object p2, p0, Lcom/tnkfactory/framework/a/b;->a:Lcom/tnkfactory/framework/a/a;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 2

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    iget-object v1, p0, Lcom/tnkfactory/framework/a/b;->a:Lcom/tnkfactory/framework/a/a;

    invoke-interface {v1, v0}, Lcom/tnkfactory/framework/a/a;->b(I)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/framework/a/b;->a:Lcom/tnkfactory/framework/a/a;

    invoke-interface {v1, p1, p2, v0}, Lcom/tnkfactory/framework/a/a;->a([BII)V

    :cond_0
    return v0
.end method
