.class Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$8;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    iput p2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$8;->b:I

    iput-object p3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$8;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$8;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$8;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->x(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$8;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->k(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->getInstance(Landroid/content/Context;)Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$8;->b:I

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$8;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V

    :cond_0
    return-void
.end method
