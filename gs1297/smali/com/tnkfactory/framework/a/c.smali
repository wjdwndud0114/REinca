.class public Lcom/tnkfactory/framework/a/c;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private a:Lcom/tnkfactory/framework/a/a;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/tnkfactory/framework/a/a;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/framework/a/c;->a:Lcom/tnkfactory/framework/a/a;

    iput-object p2, p0, Lcom/tnkfactory/framework/a/c;->a:Lcom/tnkfactory/framework/a/a;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/a/c;->a:Lcom/tnkfactory/framework/a/a;

    invoke-interface {v0, p1}, Lcom/tnkfactory/framework/a/a;->a(I)I

    move-result v0

    invoke-super {p0, v0}, Ljava/io/FilterOutputStream;->write(I)V

    return-void
.end method
