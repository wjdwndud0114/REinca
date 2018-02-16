.class final Lcom/tnkfactory/ad/ik;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Lcom/tnkfactory/ad/TnkAdListener;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/ik;->a:Landroid/app/Activity;

    iput-object v0, p0, Lcom/tnkfactory/ad/ik;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tnkfactory/ad/ik;->c:Lcom/tnkfactory/ad/TnkAdListener;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ik;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tnkfactory/ad/ik;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tnkfactory/ad/ik;->c:Lcom/tnkfactory/ad/TnkAdListener;

    return-object p0
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/ik;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ik;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/if;->b(Landroid/content/Context;)Lcom/tnkfactory/ad/fq;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ik;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tnkfactory/ad/ik;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tnkfactory/ad/ik;->c:Lcom/tnkfactory/ad/TnkAdListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tnkfactory/ad/fq;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)V

    return-void
.end method
