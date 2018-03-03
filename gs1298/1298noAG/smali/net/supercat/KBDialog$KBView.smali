.class Lnet/supercat/KBDialog$KBView;
.super Landroid/widget/EditText;
.source "KBDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/supercat/KBDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KBView"
.end annotation


# instance fields
.field private pressedEnterAt:J

.field final synthetic this$0:Lnet/supercat/KBDialog;


# direct methods
.method public constructor <init>(Lnet/supercat/KBDialog;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    iput-object p1, p0, Lnet/supercat/KBDialog$KBView;->this$0:Lnet/supercat/KBDialog;

    .line 25
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/supercat/KBDialog$KBView;->pressedEnterAt:J

    .line 26
    invoke-virtual {p0, p0}, Lnet/supercat/KBDialog$KBView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 27
    invoke-virtual {p0}, Lnet/supercat/KBDialog$KBView;->setSingleLine()V

    .line 28
    return-void
.end method


# virtual methods
.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 33
    const v0, 0x80001

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 34
    const v0, 0x12000002

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 36
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 60
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const/4 v0, 0x0

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    const/4 v1, 0x6

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 66
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_0

    .line 67
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnet/supercat/KBDialog$KBView;->pressedEnterAt:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/supercat/KBDialog$KBView;->pressedEnterAt:J

    .line 69
    iget-object v1, p0, Lnet/supercat/KBDialog$KBView;->this$0:Lnet/supercat/KBDialog;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lnet/supercat/KBDialog;->onTextCompleted(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v0}, Lnet/supercat/KBDialog;->access$000(Lnet/supercat/KBDialog;Ljava/lang/String;Z)V

    .line 70
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 46
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 47
    iget-object v0, p0, Lnet/supercat/KBDialog$KBView;->this$0:Lnet/supercat/KBDialog;

    invoke-virtual {v0}, Lnet/supercat/KBDialog;->dismiss()V

    .line 48
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
