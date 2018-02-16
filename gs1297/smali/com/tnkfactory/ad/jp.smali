.class Lcom/tnkfactory/ad/jp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/jn;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/jn;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/jp;->a:Lcom/tnkfactory/ad/jn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/jp;->a:Lcom/tnkfactory/ad/jn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/jn;->a(Lcom/tnkfactory/ad/jn;Z)V

    return-void
.end method
