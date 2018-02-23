.class final Lcom/tapjoy/internal/ho$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/hg;

.field final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic c:Lcom/tapjoy/internal/hg;

.field final synthetic d:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic e:Lcom/tapjoy/internal/ho;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ho;Lcom/tapjoy/internal/hg;Landroid/graphics/drawable/BitmapDrawable;Lcom/tapjoy/internal/hg;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/tapjoy/internal/ho$1;->e:Lcom/tapjoy/internal/ho;

    iput-object p2, p0, Lcom/tapjoy/internal/ho$1;->a:Lcom/tapjoy/internal/hg;

    iput-object p3, p0, Lcom/tapjoy/internal/ho$1;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Lcom/tapjoy/internal/ho$1;->c:Lcom/tapjoy/internal/hg;

    iput-object p5, p0, Lcom/tapjoy/internal/ho$1;->d:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 225
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    .line 227
    iget-object v0, p0, Lcom/tapjoy/internal/ho$1;->a:Lcom/tapjoy/internal/hg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/ho$1;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/ho$1;->c:Lcom/tapjoy/internal/hg;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/tapjoy/internal/ho$1;->c:Lcom/tapjoy/internal/hg;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hg;->b()V

    .line 230
    iget-object v0, p0, Lcom/tapjoy/internal/ho$1;->c:Lcom/tapjoy/internal/hg;

    invoke-virtual {v0, v6}, Lcom/tapjoy/internal/hg;->setVisibility(I)V

    .line 232
    :cond_1
    invoke-static {p1, v7}, Lcom/tapjoy/internal/ag;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/ho$1;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_4

    .line 237
    iget-object v0, p0, Lcom/tapjoy/internal/ho$1;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p1, v0}, Lcom/tapjoy/internal/ag;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 275
    :cond_3
    :goto_0
    return v1

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/tapjoy/internal/ho$1;->a:Lcom/tapjoy/internal/hg;

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/tapjoy/internal/ho$1;->a:Lcom/tapjoy/internal/hg;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hg;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/tapjoy/internal/ho$1;->a:Lcom/tapjoy/internal/hg;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hg;->a()V

    goto :goto_0

    .line 243
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 245
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 248
    cmpg-float v4, v2, v5

    if-ltz v4, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-gez v2, :cond_6

    cmpg-float v2, v3, v5

    if-ltz v2, :cond_6

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_b

    .line 253
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 254
    iget-object v2, p0, Lcom/tapjoy/internal/ho$1;->d:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_a

    .line 255
    iget-object v2, p0, Lcom/tapjoy/internal/ho$1;->d:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p1, v2}, Lcom/tapjoy/internal/ag;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 262
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/tapjoy/internal/ho$1;->a:Lcom/tapjoy/internal/hg;

    if-eqz v2, :cond_8

    .line 263
    iget-object v2, p0, Lcom/tapjoy/internal/ho$1;->a:Lcom/tapjoy/internal/hg;

    invoke-virtual {v2}, Lcom/tapjoy/internal/hg;->b()V

    .line 264
    iget-object v2, p0, Lcom/tapjoy/internal/ho$1;->a:Lcom/tapjoy/internal/hg;

    invoke-virtual {v2, v6}, Lcom/tapjoy/internal/hg;->setVisibility(I)V

    .line 267
    :cond_8
    iget-object v2, p0, Lcom/tapjoy/internal/ho$1;->a:Lcom/tapjoy/internal/hg;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/tapjoy/internal/ho$1;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 269
    :cond_9
    iget-object v2, p0, Lcom/tapjoy/internal/ho$1;->c:Lcom/tapjoy/internal/hg;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/tapjoy/internal/ho$1;->c:Lcom/tapjoy/internal/hg;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hg;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/tapjoy/internal/ho$1;->c:Lcom/tapjoy/internal/hg;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hg;->a()V

    goto :goto_0

    .line 257
    :cond_a
    iget-object v2, p0, Lcom/tapjoy/internal/ho$1;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_7

    .line 258
    invoke-static {p1, v7}, Lcom/tapjoy/internal/ag;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_b
    move v0, v1

    goto :goto_1
.end method
