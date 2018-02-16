.class final Lcom/tnkfactory/ad/ii;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tnkfactory/ad/TnkLayout;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/tnkfactory/ad/TnkAdListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/tnkfactory/ad/TnkLayout;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ii;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tnkfactory/ad/ii;->b:Lcom/tnkfactory/ad/TnkLayout;

    iput-object p3, p0, Lcom/tnkfactory/ad/ii;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/tnkfactory/ad/ii;->d:Lcom/tnkfactory/ad/TnkAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/ii;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->h()Z

    move-result v1

    iget-object v0, p0, Lcom/tnkfactory/ad/ii;->b:Lcom/tnkfactory/ad/TnkLayout;

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ii;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tnkfactory/ad/in;->k(Landroid/content/Context;)Lcom/tnkfactory/ad/TnkLayout;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tnkfactory/ad/ii;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/tnkfactory/ad/AdListView;->inflate(Landroid/content/Context;Lcom/tnkfactory/ad/TnkLayout;)Lcom/tnkfactory/ad/AdListView;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/tnkfactory/ad/ii;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tnkfactory/ad/ii;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/AdListView;->setTitle(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/tnkfactory/ad/ii;->d:Lcom/tnkfactory/ad/TnkAdListener;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/AdListView;->setListener(Lcom/tnkfactory/ad/TnkAdListener;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/ii;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/AdListView;->show(Landroid/app/Activity;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tnkfactory/ad/ii;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/AdListView;->inflate(Landroid/content/Context;Z)Lcom/tnkfactory/ad/AdListView;

    move-result-object v0

    goto :goto_0
.end method
