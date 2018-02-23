.class abstract Lcom/tnkfactory/ad/g;
.super Landroid/os/AsyncTask;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/app/ProgressDialog;

.field protected c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/g;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tnkfactory/ad/g;->b:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tnkfactory/ad/g;->c:Z

    iput-object p1, p0, Lcom/tnkfactory/ad/g;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/tnkfactory/ad/g;->c:Z

    return-void
.end method


# virtual methods
.method protected abstract a([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/g;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/g;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/g;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/g;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/tnkfactory/ad/g;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/g;->b:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    const/high16 v0, 0x42200000    # 40.0f

    iget-object v1, p0, Lcom/tnkfactory/ad/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/tnkfactory/ad/g;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/tnkfactory/ad/g;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/tnkfactory/ad/g;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/g;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/tnkfactory/ad/g;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/tnkfactory/ad/g;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/g;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/g;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
