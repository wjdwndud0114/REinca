.class public abstract Lcom/tnkfactory/ad/p;
.super Lcom/tnkfactory/ad/b;


# instance fields
.field protected d:Lcom/tnkfactory/ad/cz;

.field protected e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tnkfactory/ad/hl;Lcom/tnkfactory/ad/hz;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/tnkfactory/ad/b;-><init>(Landroid/content/Context;Lcom/tnkfactory/ad/hl;Lcom/tnkfactory/ad/hz;)V

    new-instance v0, Lcom/tnkfactory/ad/cz;

    invoke-direct {v0}, Lcom/tnkfactory/ad/cz;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/p;->d:Lcom/tnkfactory/ad/cz;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/p;->e:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/app/Activity;Lcom/tnkfactory/ad/InterstitialAdItem;Lcom/tnkfactory/ad/TnkAdListener;)V
.end method
