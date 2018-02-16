.class final Lcom/tnkfactory/ad/ij;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tnkfactory/ad/VideoAdListener;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/VideoAdListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ij;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tnkfactory/ad/ij;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tnkfactory/ad/ij;->c:Lcom/tnkfactory/ad/VideoAdListener;

    iput-boolean p4, p0, Lcom/tnkfactory/ad/ij;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tnkfactory/ad/ij;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ij;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/if;->c(Landroid/content/Context;)Lcom/tnkfactory/ad/ir;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ij;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tnkfactory/ad/ij;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tnkfactory/ad/ij;->c:Lcom/tnkfactory/ad/VideoAdListener;

    iget-boolean v4, p0, Lcom/tnkfactory/ad/ij;->d:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tnkfactory/ad/ir;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tnkfactory/ad/VideoAdListener;Z)V

    return-void
.end method
