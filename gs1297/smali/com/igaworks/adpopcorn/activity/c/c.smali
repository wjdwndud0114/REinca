.class public Lcom/igaworks/adpopcorn/activity/c/c;
.super Landroid/widget/GridView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/adpopcorn/activity/c/c$a;,
        Lcom/igaworks/adpopcorn/activity/c/c$b;,
        Lcom/igaworks/adpopcorn/activity/c/c$c;,
        Lcom/igaworks/adpopcorn/activity/c/c$d;
    }
.end annotation


# static fields
.field public static a:Z


# instance fields
.field private b:Landroid/widget/AdapterView$OnItemClickListener;

.field private c:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private d:I

.field private e:Landroid/view/View;

.field private f:I

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/ArrayList;

.field private i:Landroid/widget/ListAdapter;

.field private j:Lcom/igaworks/adpopcorn/activity/c/c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/igaworks/adpopcorn/activity/c/c;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/c/c;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c;->e:Landroid/view/View;

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/c/c;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c;->h:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/c/c;->c()V

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/c/c;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c;->b:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/activity/c/c;)I
    .locals 1

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/c/c;->d()I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/igaworks/adpopcorn/activity/c/c;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c;->c:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method private c()V
    .locals 0

    return-void
.end method

.method private d()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-class v0, Landroid/widget/GridView;

    const-string v1, "mNumColumns"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/c/c;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/c/c;->d:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can not determine the mNumColumns for this API platform, please call setNumColumns to set it."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-class v0, Landroid/widget/GridView;

    const-string v1, "mColumnWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private f()Lcom/igaworks/adpopcorn/activity/c/c$d;
    .locals 2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c;->j:Lcom/igaworks/adpopcorn/activity/c/c$d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/activity/c/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/igaworks/adpopcorn/activity/c/c$d;-><init>(Lcom/igaworks/adpopcorn/activity/c/c;Lcom/igaworks/adpopcorn/activity/c/c$d;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c;->j:Lcom/igaworks/adpopcorn/activity/c/c$d;

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c;->j:Lcom/igaworks/adpopcorn/activity/c/c$d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->a(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/c;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/igaworks/adpopcorn/activity/c/c$c;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    new-instance v2, Lcom/igaworks/adpopcorn/activity/c/c$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/igaworks/adpopcorn/activity/c/c$a;-><init>(Lcom/igaworks/adpopcorn/activity/c/c$a;)V

    new-instance v3, Lcom/igaworks/adpopcorn/activity/c/c$b;

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/igaworks/adpopcorn/activity/c/c$b;-><init>(Lcom/igaworks/adpopcorn/activity/c/c;Landroid/content/Context;)V

    if-eqz v1, :cond_1

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object p1, v2, Lcom/igaworks/adpopcorn/activity/c/c$a;->a:Landroid/view/View;

    iput-object v3, v2, Lcom/igaworks/adpopcorn/activity/c/c$a;->b:Landroid/view/ViewGroup;

    iput-object p2, v2, Lcom/igaworks/adpopcorn/activity/c/c$a;->c:Ljava/lang/Object;

    iput-boolean p3, v2, Lcom/igaworks/adpopcorn/activity/c/c$a;->d:Z

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    check-cast v0, Lcom/igaworks/adpopcorn/activity/c/c$c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/c/c$c;->c()V

    :cond_2
    return-void
.end method

.method public b()I
    .locals 6

    const/4 v1, -0x1

    const/4 v5, 0x0

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/c/c;->f:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/c/c;->f:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/c;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/c/c;->d()I

    move-result v2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/c/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/c/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    mul-int/2addr v3, v2

    if-gt v0, v3, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/c/c;->e()I

    move-result v3

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/c;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/c/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/2addr v2, v4

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/c/c;->e:Landroid/view/View;

    invoke-interface {v0, v2, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    if-nez v0, :cond_3

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v1, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v4, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v1, v5, v4}, Lcom/igaworks/adpopcorn/activity/c/c;->getChildMeasureSpec(III)I

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v3, v5, v0}, Lcom/igaworks/adpopcorn/activity/c/c;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    iput-object v2, p0, Lcom/igaworks/adpopcorn/activity/c/c;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/c/c;->f:I

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/c/c;->f:I

    goto :goto_0
.end method

.method public getHorizontalSpacing()I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    const-class v1, Landroid/widget/GridView;

    const-string v2, "mHorizontalSpacing"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/GridView;->getHorizontalSpacing()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getVerticalSpacing()I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    const-class v1, Landroid/widget/GridView;

    const-string v2, "mVerticalSpacing"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/GridView;->getVerticalSpacing()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/GridView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c;->e:Landroid/view/View;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/c;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/igaworks/adpopcorn/activity/c/c$c;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/igaworks/adpopcorn/activity/c/c$c;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/c/c;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/igaworks/adpopcorn/activity/c/c$c;->a(I)V

    check-cast v1, Lcom/igaworks/adpopcorn/activity/c/c$c;

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/c;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/igaworks/adpopcorn/activity/c/c$c;->b(I)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/c/c;->i:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/igaworks/adpopcorn/activity/c/c$c;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/c;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/c/c;->h:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lcom/igaworks/adpopcorn/activity/c/c$c;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/c/c;->d()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c$c;->a(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c$c;->b(I)V

    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setClipChildren(Z)V
    .locals 0

    return-void
.end method

.method public setNumColumns(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    iput p1, p0, Lcom/igaworks/adpopcorn/activity/c/c;->d:I

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/c;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/igaworks/adpopcorn/activity/c/c$c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/igaworks/adpopcorn/activity/c/c$c;

    invoke-virtual {v0, p1}, Lcom/igaworks/adpopcorn/activity/c/c$c;->a(I)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/c/c;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/c/c;->f()Lcom/igaworks/adpopcorn/activity/c/c$d;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/c/c;->c:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/c/c;->f()Lcom/igaworks/adpopcorn/activity/c/c$d;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method
