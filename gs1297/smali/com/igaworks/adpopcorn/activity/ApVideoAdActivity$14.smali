.class Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igaworks/adpopcorn/cores/common/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$14;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$14;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
