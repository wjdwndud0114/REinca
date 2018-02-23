.class public Lcom/igaworks/adpopcorn/cores/d/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igaworks/adpopcorn/cores/model/APClientRewardItem;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/d/b/a;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/igaworks/adpopcorn/cores/d/b/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/igaworks/adpopcorn/cores/d/b/a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/igaworks/adpopcorn/cores/d/b/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/igaworks/adpopcorn/cores/d/b/a;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/igaworks/adpopcorn/cores/d/b/a;->f:Ljava/lang/String;

    iput-wide p7, p0, Lcom/igaworks/adpopcorn/cores/d/b/a;->g:J

    return-void
.end method


# virtual methods
.method public didGiveRewardItem()V
    .locals 2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d/b/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/cores/d/b/a;->getRTID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method public getCV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getItemKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getRTID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d/b/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardQuantity()J
    .locals 2

    iget-wide v0, p0, Lcom/igaworks/adpopcorn/cores/d/b/a;->g:J

    return-wide v0
.end method
