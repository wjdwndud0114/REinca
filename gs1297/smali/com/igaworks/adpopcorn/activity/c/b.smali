.class public Lcom/igaworks/adpopcorn/activity/c/b;
.super Landroid/widget/Toast;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/c/b;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/widget/Toast;Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p1, p3}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IDI)V
    .locals 21

    const/16 v18, 0x11

    :try_start_0
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adpopcorn/activity/c/b;->a:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igaworks/adpopcorn/activity/c/b;->a:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    mul-double v8, v8, p3

    double-to-int v7, v8

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    mul-double v8, v8, p3

    double-to-int v8, v8

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    mul-double v10, v10, p3

    double-to-int v9, v10

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    mul-double v10, v10, p3

    double-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v7, "#d9000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v7, "#ffffff"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v15, 0x0

    move-object/from16 v7, p1

    move-wide/from16 v16, p3

    invoke-static/range {v6 .. v17}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move/from16 v3, p2

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/activity/c/b;->a(Landroid/widget/Toast;Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    goto :goto_0
.end method
