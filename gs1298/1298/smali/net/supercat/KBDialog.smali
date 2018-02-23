.class public Lnet/supercat/KBDialog;
.super Landroid/app/Dialog;
.source "KBDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/supercat/KBDialog$KBView;
    }
.end annotation


# instance fields
.field private final listener:Lnet/supercat/KBInputListener;

.field private textCompleted:Z

.field private final v:Lnet/supercat/KBDialog$KBView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/supercat/KBInputListener;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lnet/supercat/KBInputListener;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xff

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 78
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 20
    iput-boolean v8, p0, Lnet/supercat/KBDialog;->textCompleted:Z

    .line 79
    invoke-virtual {p0}, Lnet/supercat/KBDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 80
    invoke-virtual {p0}, Lnet/supercat/KBDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 81
    invoke-virtual {p0}, Lnet/supercat/KBDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 82
    invoke-virtual {p0}, Lnet/supercat/KBDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 86
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/16 v3, 0xc8

    invoke-static {v3, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 87
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lnet/supercat/KBDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iput-object p2, p0, Lnet/supercat/KBDialog;->listener:Lnet/supercat/KBInputListener;

    .line 91
    new-instance v3, Lnet/supercat/KBDialog$KBView;

    invoke-direct {v3, p0, p1}, Lnet/supercat/KBDialog$KBView;-><init>(Lnet/supercat/KBDialog;Landroid/content/Context;)V

    iput-object v3, p0, Lnet/supercat/KBDialog;->v:Lnet/supercat/KBDialog$KBView;

    .line 92
    iget-object v3, p0, Lnet/supercat/KBDialog;->v:Lnet/supercat/KBDialog$KBView;

    iget-object v4, p0, Lnet/supercat/KBDialog;->listener:Lnet/supercat/KBInputListener;

    invoke-virtual {v3, v4}, Lnet/supercat/KBDialog$KBView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    iget-object v3, p0, Lnet/supercat/KBDialog;->v:Lnet/supercat/KBDialog$KBView;

    invoke-virtual {v3, v5}, Lnet/supercat/KBDialog$KBView;->setFocusable(Z)V

    .line 94
    iget-object v3, p0, Lnet/supercat/KBDialog;->v:Lnet/supercat/KBDialog$KBView;

    invoke-virtual {v3, v5}, Lnet/supercat/KBDialog$KBView;->setFocusableInTouchMode(Z)V

    .line 95
    iget-object v3, p0, Lnet/supercat/KBDialog;->v:Lnet/supercat/KBDialog$KBView;

    invoke-virtual {v3}, Lnet/supercat/KBDialog$KBView;->setSingleLine()V

    .line 96
    iget-object v3, p0, Lnet/supercat/KBDialog;->v:Lnet/supercat/KBDialog$KBView;

    invoke-virtual {v3, v5}, Lnet/supercat/KBDialog$KBView;->setMaxLines(I)V

    .line 97
    iget-object v3, p0, Lnet/supercat/KBDialog;->v:Lnet/supercat/KBDialog$KBView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Lnet/supercat/KBDialog$KBView;->setTextColor(I)V

    .line 100
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 101
    .local v1, "layout":Landroid/widget/RelativeLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v2, "localLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    .line 107
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 108
    const v3, 0x3f050002

    invoke-virtual {v2, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 110
    iget-object v3, p0, Lnet/supercat/KBDialog;->v:Lnet/supercat/KBDialog$KBView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 112
    const/4 v3, 0x0

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 113
    :cond_0
    invoke-super {p0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 116
    iget-object v3, p0, Lnet/supercat/KBDialog;->v:Lnet/supercat/KBDialog$KBView;

    new-instance v4, Lnet/supercat/KBDialog$1;

    invoke-direct {v4, p0}, Lnet/supercat/KBDialog$1;-><init>(Lnet/supercat/KBDialog;)V

    invoke-virtual {v3, v4}, Lnet/supercat/KBDialog$KBView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lnet/supercat/KBDialog;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/supercat/KBDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lnet/supercat/KBDialog;->onTextCompleted(Ljava/lang/String;Z)V

    return-void
.end method

.method private onTextCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "wasActionButtonPressed"    # Z

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/supercat/KBDialog;->textCompleted:Z

    .line 157
    iget-object v0, p0, Lnet/supercat/KBDialog;->listener:Lnet/supercat/KBInputListener;

    invoke-interface {v0, p1, p2}, Lnet/supercat/KBInputListener;->onTextCompleted(Ljava/lang/String;Z)V

    .line 158
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lnet/supercat/KBDialog;->v:Lnet/supercat/KBDialog$KBView;

    invoke-virtual {v0}, Lnet/supercat/KBDialog$KBView;->clearFocus()V

    .line 136
    const-string v0, "TouchKeyboard"

    const-string v1, "dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-boolean v0, p0, Lnet/supercat/KBDialog;->textCompleted:Z

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lnet/supercat/KBDialog;->listener:Lnet/supercat/KBInputListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lnet/supercat/KBInputListener;->onTextCompleted(Ljava/lang/String;Z)V

    .line 142
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 143
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "TouchKeyboard"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 149
    return-void
.end method

.method public setHideInput(Z)V
    .locals 0
    .param p1, "hideInput"    # Z

    .prologue
    .line 162
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lnet/supercat/KBDialog;->v:Lnet/supercat/KBDialog$KBView;

    invoke-virtual {v0, p1}, Lnet/supercat/KBDialog$KBView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 130
    iget-object v0, p0, Lnet/supercat/KBDialog;->v:Lnet/supercat/KBDialog$KBView;

    invoke-virtual {v0}, Lnet/supercat/KBDialog$KBView;->requestFocus()Z

    .line 131
    return-void
.end method
