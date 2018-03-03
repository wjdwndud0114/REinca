.class public Lcom/igaworks/adpopcorn/activity/b/e;
.super Landroid/app/Dialog;

# interfaces
.implements Lcom/igaworks/adpopcorn/cores/c/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/adpopcorn/activity/b/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:D

.field private c:D

.field private d:I

.field private e:Lcom/igaworks/adpopcorn/cores/common/f;

.field private f:Landroid/widget/LinearLayout;

.field private g:Z

.field private h:Z

.field private i:Lcom/igaworks/adpopcorn/activity/b/d$a;

.field private j:Lcom/igaworks/adpopcorn/activity/b/d$b;

.field private k:Lcom/igaworks/adpopcorn/cores/c/a;

.field private l:Landroid/widget/ListView;

.field private m:Landroid/widget/TextView;

.field private n:Ljava/util/ArrayList;

.field private o:Lcom/igaworks/adpopcorn/activity/b/e$a;

.field private p:Lcom/igaworks/adpopcorn/cores/c;

.field private q:Z

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLcom/igaworks/adpopcorn/cores/common/f;DDZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/activity/b/e;->q:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->r:Ljava/lang/String;

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    iput p2, p0, Lcom/igaworks/adpopcorn/activity/b/e;->d:I

    iput-boolean p3, p0, Lcom/igaworks/adpopcorn/activity/b/e;->g:Z

    iput-object p4, p0, Lcom/igaworks/adpopcorn/activity/b/e;->e:Lcom/igaworks/adpopcorn/cores/common/f;

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->b:D

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->c:D

    iput-boolean p9, p0, Lcom/igaworks/adpopcorn/activity/b/e;->h:Z

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/activity/b/e;->q:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLcom/igaworks/adpopcorn/cores/common/f;DDZLjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->q:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->r:Ljava/lang/String;

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    iput p2, p0, Lcom/igaworks/adpopcorn/activity/b/e;->d:I

    iput-boolean p3, p0, Lcom/igaworks/adpopcorn/activity/b/e;->g:Z

    iput-object p4, p0, Lcom/igaworks/adpopcorn/activity/b/e;->e:Lcom/igaworks/adpopcorn/cores/common/f;

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->b:D

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->c:D

    iput-boolean p9, p0, Lcom/igaworks/adpopcorn/activity/b/e;->h:Z

    iput-object p10, p0, Lcom/igaworks/adpopcorn/activity/b/e;->r:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->q:Z

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/b/e;)D
    .locals 2

    iget-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->c:D

    return-wide v0
.end method

.method private a()V
    .locals 2

    const/16 v1, 0x400

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/f;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->e:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d;->b()Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->p:Lcom/igaworks/adpopcorn/cores/c;

    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igaworks/adpopcorn/cores/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->k:Lcom/igaworks/adpopcorn/cores/c/a;

    return-void
.end method

.method private a(Lcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 12

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/e;->g()V

    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "Result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "CompletedCampaigns"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "CompletedCampaigns"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "CompletedCampaigns"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->n:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v3, v0, :cond_2

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->o:Lcom/igaworks/adpopcorn/activity/b/e$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/e$a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->e:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->ad:Ljava/lang/String;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const-string v4, "#adb5bd"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/b/e;->c:D

    invoke-static/range {v0 .. v11}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v0, ""

    const-string v1, "Title"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "Title"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v0, "Title"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_2
    const-string v0, ""

    const-string v1, "Date"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Date"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v0, "Date"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_3
    const-string v0, ""

    const-string v6, "Reward"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "Reward"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v0, "Reward"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v5, Lcom/igaworks/adpopcorn/cores/model/b;

    invoke-direct {v5}, Lcom/igaworks/adpopcorn/cores/model/b;-><init>()V

    invoke-virtual {v5, v2}, Lcom/igaworks/adpopcorn/cores/model/b;->a(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/igaworks/adpopcorn/cores/model/b;->c(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/igaworks/adpopcorn/cores/model/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->e:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bH:Ljava/lang/String;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const-string v4, "#adb5bd"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/b/e;->c:D

    invoke-static/range {v0 .. v11}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/e;->g()V

    :cond_5
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/e;->h()V

    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    goto :goto_3

    :cond_7
    move-object v2, v0

    goto :goto_2
.end method

.method private b()V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->f:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->f:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/e;->c()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v1, "TOP_BAR_SHADOW"

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/style/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->f:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/e;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->f:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/e;->e()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/b/e;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/activity/b/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/igaworks/adpopcorn/activity/b/e;)D
    .locals 2

    iget-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->b:D

    return-wide v0
.end method

.method private c()Landroid/widget/RelativeLayout;
    .locals 12

    const/16 v9, 0xb

    const/4 v6, -0x2

    const-wide/high16 v10, 0x403c000000000000L    # 28.0

    const/16 v8, 0xf

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v2, "TOP_BAR_HEIGHT"

    invoke-virtual {v0, v2}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    int-to-float v2, v0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v3, "TOP_BAR_BG_COLOR"

    invoke-virtual {v0, v3}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "TOP_BAR_TEXT_SIZE_DP"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    int-to-float v3, v3

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/e;->e:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->bf:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "TOP_BAR_TEXT_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "TOP_BAR_TEXT_BOLD"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v4, "TOP_BAR_CLOSE_BTN_RESOURCE_ID"

    invoke-virtual {v0, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    const/16 v4, -0x64

    if-ne v0, v4, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/e;->b:D

    mul-double/2addr v4, v10

    double-to-int v4, v4

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/b/e;->b:D

    mul-double/2addr v6, v10

    double-to-int v5, v6

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    const-string v5, "igaworks/adpopcorn/res/ic_close.png"

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    :goto_0
    new-instance v4, Lcom/igaworks/adpopcorn/activity/b/e$1;

    invoke-direct {v4, p0}, Lcom/igaworks/adpopcorn/activity/b/e$1;-><init>(Lcom/igaworks/adpopcorn/activity/b/e;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/b/e;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide/high16 v4, 0x4055000000000000L    # 84.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/b/e;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/igaworks/adpopcorn/activity/b/e$2;

    invoke-direct {v2, p0}, Lcom/igaworks/adpopcorn/activity/b/e$2;-><init>(Lcom/igaworks/adpopcorn/activity/b/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_1
    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v4, "TOP_BAR_CLOSE_BTN_RESOURCE_WIDTH"

    invoke-virtual {v0, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    int-to-float v4, v0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v5, "TOP_BAR_CLOSE_BTN_RESOURCE_HEIGHT"

    invoke-virtual {v0, v5}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    int-to-float v5, v0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v4

    float-to-int v4, v4

    iget-object v6, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v4

    const-string v5, "TOP_BAR_CLOSE_BTN_RESOURCE_ID"

    invoke-virtual {v4, v5}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private d()Landroid/view/View;
    .locals 5

    const/4 v4, -0x1

    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    const-string v2, "igaworks/adpopcorn/res/shadow.png"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/igaworks/adpopcorn/activity/b/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/e;->i()V

    return-void
.end method

.method private e()Landroid/widget/LinearLayout;
    .locals 14

    new-instance v12, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v0, -0x1

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    const-wide/high16 v0, 0x4031000000000000L    # 17.0

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/b/e;->b:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    const/4 v1, 0x0

    const-wide/high16 v2, 0x4031000000000000L    # 17.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/e;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/e;->c:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->g:Z

    if-eqz v1, :cond_0

    const-wide/high16 v2, 0x4031000000000000L    # 17.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/e;->c:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_0
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->g:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v2, 0x4073b00000000000L    # 315.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/e;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_1
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/e;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->e:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bE:Ljava/lang/String;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const-string v4, "#212529"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/b/e;->c:D

    invoke-static/range {v0 .. v11}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    const-string v1, "#f1f3f5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->g:Z

    if-eqz v1, :cond_2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v2, 0x4081600000000000L    # 556.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/e;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_2
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/e;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->e:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bF:Ljava/lang/String;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const-string v4, "#212529"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/b/e;->c:D

    invoke-static/range {v0 .. v11}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    const-string v1, "#f1f3f5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->g:Z

    if-eqz v1, :cond_3

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v2, 0x4073b00000000000L    # 315.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/e;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->e:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bG:Ljava/lang/String;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const-string v4, "#212529"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/b/e;->c:D

    invoke-static/range {v0 .. v11}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    const-string v1, "#f1f3f5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->n:Ljava/util/ArrayList;

    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->l:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->l:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/e$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/e;->n:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/igaworks/adpopcorn/activity/b/e$a;-><init>(Lcom/igaworks/adpopcorn/activity/b/e;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->o:Lcom/igaworks/adpopcorn/activity/b/e$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->o:Lcom/igaworks/adpopcorn/activity/b/e$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->l:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->l:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->l:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->m:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->m:Landroid/widget/TextView;

    const/4 v2, 0x0

    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/b/e;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, 0x0

    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/b/e;->c:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->m:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->l:Landroid/widget/ListView;

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v12

    :cond_0
    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/e;->c:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v2, 0x406b000000000000L    # 216.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/e;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_1

    :cond_2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v2, 0x4072a00000000000L    # 298.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/e;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_2

    :cond_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v2, 0x4064c00000000000L    # 166.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/e;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_3
.end method

.method static synthetic e(Lcom/igaworks/adpopcorn/activity/b/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/e;->f()V

    return-void
.end method

.method private f()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/b/e;->a(Z)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "app_key"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/e;->p:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v3}, Lcom/igaworks/adpopcorn/cores/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "adid"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/e;->p:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v3}, Lcom/igaworks/adpopcorn/cores/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "language"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "usn"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/e;->r:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    sget-boolean v0, Lcom/igaworks/adpopcorn/cores/d;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->k:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v2, 0x9

    const-string v3, "https://rpi-staging.adpopcorn.com/ap/v3/sdk/media/MediaService.svc/campaignhistory"

    invoke-virtual {v0, v2, v3, v1, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "usn"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/e;->p:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/e;->g()V

    goto :goto_1

    :cond_1
    :try_start_1
    const-string v0, "usn"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/e;->p:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->k:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v2, 0x9

    const-string v3, "https://rpi.adpopcorn.com/ap/v3/sdk/media/MediaService.svc/campaignhistory"

    invoke-virtual {v0, v2, v3, v1, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private g()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->j:Lcom/igaworks/adpopcorn/activity/b/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->j:Lcom/igaworks/adpopcorn/activity/b/d$b;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$b;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->j:Lcom/igaworks/adpopcorn/activity/b/d$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private h()V
    .locals 12

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/e;->i()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->e:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/f;->M:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->e:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->Z:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->e:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v0, Lcom/igaworks/adpopcorn/cores/common/f;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->e:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v8, v0, Lcom/igaworks/adpopcorn/cores/common/f;->e:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/b/e;->d:I

    const v5, 0x3ecccccd    # 0.4f

    new-instance v7, Lcom/igaworks/adpopcorn/activity/b/e$3;

    invoke-direct {v7, p0}, Lcom/igaworks/adpopcorn/activity/b/e$3;-><init>(Lcom/igaworks/adpopcorn/activity/b/e;)V

    new-instance v9, Lcom/igaworks/adpopcorn/activity/b/e$4;

    invoke-direct {v9, p0}, Lcom/igaworks/adpopcorn/activity/b/e$4;-><init>(Lcom/igaworks/adpopcorn/activity/b/e;)V

    iget-boolean v10, p0, Lcom/igaworks/adpopcorn/activity/b/e;->g:Z

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->i:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->i:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->i:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->i:Lcom/igaworks/adpopcorn/activity/b/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->i:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->i:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->i:Lcom/igaworks/adpopcorn/activity/b/d$a;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/e;->g()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$b;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/d;->a(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/b/d$b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->j:Lcom/igaworks/adpopcorn/activity/b/d$b;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->j:Lcom/igaworks/adpopcorn/activity/b/d$b;

    invoke-virtual {v0, p1}, Lcom/igaworks/adpopcorn/activity/b/d$b;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e;->j:Lcom/igaworks/adpopcorn/activity/b/d$b;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$b;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 5

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/e;->a:Landroid/content/Context;

    const-string v2, "adpopcorn_sdk_flag"

    const-string v3, "use_flag_show_When_locked_sp"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/e;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/e;->a()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/e;->b()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/e;->f()V

    return-void
.end method

.method public onNetResponseListener(ILcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/e;->g()V

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/igaworks/adpopcorn/activity/b/e;->a(Lcom/igaworks/adpopcorn/cores/model/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
