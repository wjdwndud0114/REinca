.class public Lcom/tnkfactory/ad/AdWallActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/tnkfactory/ad/TnkLayout;

.field private b:Lcom/tnkfactory/ad/AdListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/AdWallActivity;->a:Lcom/tnkfactory/ad/TnkLayout;

    iput-object v0, p0, Lcom/tnkfactory/ad/AdWallActivity;->b:Lcom/tnkfactory/ad/AdListView;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_3

    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdWallActivity;->setTheme(I)V

    :goto_0
    if-eqz p1, :cond_0

    const-string v0, "layout_saved_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/TnkLayout;

    iput-object v0, p0, Lcom/tnkfactory/ad/AdWallActivity;->a:Lcom/tnkfactory/ad/TnkLayout;

    const-string v0, "style_saved_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/TnkAdWallStyle;

    sput-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    :cond_0
    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "extra_adlist_layout"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/TnkLayout;

    iput-object v0, p0, Lcom/tnkfactory/ad/AdWallActivity;->a:Lcom/tnkfactory/ad/TnkLayout;

    iget-object v0, p0, Lcom/tnkfactory/ad/AdWallActivity;->a:Lcom/tnkfactory/ad/TnkLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tnkfactory/ad/AdWallActivity;->a:Lcom/tnkfactory/ad/TnkLayout;

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/AdListView;->inflate(Landroid/content/Context;Lcom/tnkfactory/ad/TnkLayout;)Lcom/tnkfactory/ad/AdListView;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdWallActivity;->b:Lcom/tnkfactory/ad/AdListView;

    :goto_1
    const-string v0, "extra_adwall_title"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tnkfactory/ad/AdWallActivity;->b:Lcom/tnkfactory/ad/AdListView;

    invoke-virtual {v1, v0}, Lcom/tnkfactory/ad/AdListView;->setTitle(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/AdWallActivity;->b:Lcom/tnkfactory/ad/AdListView;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdListView;->getCloseButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/tnkfactory/ad/dr;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/dr;-><init>(Lcom/tnkfactory/ad/AdWallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/tnkfactory/ad/AdWallActivity;->b:Lcom/tnkfactory/ad/AdListView;

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdWallActivity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_3
    const v0, 0x1030006

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdWallActivity;->setTheme(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/AdListView;->inflate(Landroid/content/Context;Z)Lcom/tnkfactory/ad/AdListView;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdWallActivity;->b:Lcom/tnkfactory/ad/AdListView;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/AdWallActivity;->a:Lcom/tnkfactory/ad/TnkLayout;

    if-eqz v0, :cond_0

    const-string v0, "layout_saved_state"

    iget-object v1, p0, Lcom/tnkfactory/ad/AdWallActivity;->a:Lcom/tnkfactory/ad/TnkLayout;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v0, "style_saved_state"

    sget-object v1, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
